const express = require("express");
const router = express.Router();
const mysql = require("../database");
const homelessnessDatabase = mysql;
const {
  homelessnessDataSchema,
  homelessnessValidator,
} = require("../validators/homelessness-validators");

/*
 *   Healthcheck
 */
router.get("/healthcheck", async (req, res, next) => {
  return res.status(200).send({ messsage: "OK" });
});

/*
 *   GET all from homelessness table
 */
router.get("/", async (req, res) => {
  const sql = `SELECT h.*, l.location_name, l.location_id, p.population
    FROM homelessness.homelessness as h 
    LEFT JOIN homelessness.locations as l 
    ON  l.location_id = h.location_id 
    LEFT JOIN populations as p ON 
    h.location_id = p.location_id 
    AND p.year = h.year
    ORDER BY year DESC, CASE WHEN h.period = 'oct-dec' THEN 1
      WHEN h.period = 'jul-sep' THEN 2
      WHEN h.period = 'apr-jun' THEN 3
      WHEN h.period = 'jan-mar' THEN 4
        ELSE 5 END;`;
  homelessnessDatabase.query(sql, (err, result) => {
    if (err) throw err;
    res.status(200).send({ result });
  });
});

/*
 *   GET all from homelessness table for given year
 */
router.get("/year/:year", async (req, res) => {
  const requiredYear = req.params.year;
  const sql = `SELECT h.*, l.location_name, l.location_id, p.population
    FROM homelessness.homelessness as h 
    LEFT JOIN homelessness.locations as l 
    ON  l.location_id = h.location_id 
    LEFT JOIN populations as p ON 
    h.location_id = p.location_id 
    AND p.year = h.year
    WHERE h.year = ${requiredYear} 
    ORDER BY year DESC, CASE WHEN h.period = 'oct-dec' THEN 1
      WHEN h.period = 'jul-sep' THEN 2
      WHEN h.period = 'apr-jun' THEN 3
      WHEN h.period = 'jan-mar' THEN 4
        ELSE 5 END;`;

  homelessnessDatabase.query(sql, (err, result) => {
    if (err) throw err;
    res.status(200).send({ result });
  });
});

/*
 *   GET all from homelessness table for given location
 */
router.get("/location/:location", async (req, res, next) => {
  const requiredLocation = req.params.location;
  const sql = `SELECT h.*, l.location_name, l.location_id, p.population
    FROM homelessness.homelessness as h 
    LEFT JOIN homelessness.locations as l 
    ON  l.location_id = h.location_id 
    LEFT JOIN populations as p ON 
    h.location_id = p.location_id 
    AND p.year = h.year
    WHERE h.location_id = "${requiredLocation}" 
    ORDER BY year DESC, CASE WHEN h.period = 'oct-dec' THEN 1
      WHEN h.period = 'jul-sep' THEN 2
      WHEN h.period = 'apr-jun' THEN 3
      WHEN h.period = 'jan-mar' THEN 4
        ELSE 5 END;`;

  homelessnessDatabase.query(sql, (err, result) => {
    if (err) throw err;
    res.status(200).send({ result });
  });
});

/*
 *   GET all from homelessness table for given year and location
 */
router.get("/year/:year/location/:location", async (req, res) => {
  const requiredYear = req.params.year;
  const requiredLoation = req.params.location;
  const sql = `SELECT h.*, l.location_name, l.location_id, p.population
    FROM homelessness.homelessness as h 
    LEFT JOIN homelessness.locations as l 
    ON  l.location_id = h.location_id 
    LEFT JOIN populations as p ON 
    h.location_id = p.location_id 
    AND p.year = h.year
    WHERE h.year = ${requiredYear} AND h.location_id = '${requiredLoation}' 
    ORDER BY year DESC, CASE WHEN h.period = 'oct-dec' THEN 1
      WHEN h.period = 'jul-sep' THEN 2
      WHEN h.period = 'apr-jun' THEN 3
      WHEN h.period = 'jan-mar' THEN 4
        ELSE 5 END;`;

  homelessnessDatabase.query(sql, (err, result) => {
    if (err) throw err;
    res.status(200).send({ result });
  });
});

/*
 *   Add new data to homelessness table
 */
router.post("/", async (req, res) => {
  const requestBody = req.body;
  // Validate headers
  if (req.get("Content-Type") != "application/json") {
    res.status(400).send("Invalid header format");
    return;
  }
  try {
    // Validation: check if request body has valid format
    homelessnessValidator.validate(requestBody, homelessnessDataSchema, {
      throwError: true,
    });
  } catch (error) {
    console.log("Error: " + error.message);
    res.status(400).send({
      message: "Request validation fail",
      details: "Invalid body format: " + error,
    });
    return;
  }
  // Insert data not present in DB
  const insertResult = await insertData(requestBody, homelessnessDatabase);
  res.status(insertResult.status).send({ result: insertResult });
});

/*
 Inserting data into DB
*/
const insertData = async (input, database) => {
  let numRecords = input.values.length;
  console.log(
    "Attempt to insert data into homelessness table. Number of records: " +
      numRecords
  );
  let statusCode = 400;
  let result = {
    totalRows: numRecords,
    inserted: 0,
    duplicated: 0,
    duplicates: [],
    status: statusCode,
    errors: [],
  };

  for (let i = 0; i < numRecords; i++) {
    result.status = 200;
    const sql = buildInsertSql(input.year, input.period, input.values[i]);
    await homelessnessDatabase
      .promise()
      .execute(sql)
      .then(([rows, fields]) => {
        result.inserted += 1;
        result.status = 201;
      })
      .catch((err) => {
        let errCode = err.code;
        let errNo = err.errno;
        let errSqlMessage = err.sqlMessage;
        const errorMessage = `Error code: ${errCode}, error number: ${errNo}`;
        if (errCode == "ER_DUP_ENTRY") {
          const duplicateMessage = `${errSqlMessage}`;
          result.duplicates.push(duplicateMessage);
        }
        console.log(errorMessage);
      });
  }

  result.duplicated = result.duplicates.length;
  return result;
};

/*
 Build SQL query for data instert
*/
const buildInsertSql = (year, period, rowdata) => {
  let location_id = rowdata.location_id;
  let location_name = rowdata.location_name;
  let total_init = rowdata.total_init;
  let total_oprd = rowdata.total_oprd;
  let threatened = rowdata.threatened;
  let homeless_relief_duty = rowdata.homeless_relief_duty;

  let sql = `INSERT INTO homelessness SET 
    year=${year}, 
    period="${period}",
    location_id="${location_id}",
    location_name="${location_name}",
    total_init=${total_init},
    total_oprd=${total_oprd},
    threatened=${threatened},
    homeless_relief_duty=${homeless_relief_duty}
    `;

  return sql;
};

module.exports = router;
