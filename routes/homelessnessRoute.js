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
router.get("/healthcheck", async (req, res) => {
  return res.status(200).send({ messsage: "OK" });
});

/*
 *   GET all from homelessness table
 */
router.get("/", async (req, res) => {
  const sql = "SELECT * FROM homelessness";
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
  const sql = `SELECT * FROM homelessness where year = ${requiredYear}`;
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
  const sql = `SELECT * FROM homelessness WHERE year = ${requiredYear} AND location_id = '${requiredLoation}'`;
  homelessnessDatabase.query(sql, (err, result) => {
    if (err) throw err;
    res.status(200).send({ result });
  });
});

/*
 *   POST new data to homelessness table
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
        //throw err;
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

// ================ to load population csv
const fs = require("fs");
const { parse } = require("csv-parse");

// Read CSV

router.get("/load", async (req, res) => {
  await fs
    .createReadStream("./populations.csv")
    .pipe(parse({ delimiter: "," }))
    .on("data", function (row) {
      let r =
        "INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ";
      r += `("${row[0]}", "${row[1]}", ${row[2]});`;
      console.log(r);
    });

  res.status(200).send("population load");
});

// ================ END to load population csv
module.exports = router;
