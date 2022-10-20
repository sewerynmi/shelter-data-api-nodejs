const express = require("express");
const router = express.Router();
const mysql = require("mysql2");

const {
  homelessnessValidator,
  homelessnessDataSchema,
} = require("../validators/homelessness-validators");

const homelessnessDatabase = mysql.createConnection({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  insecureAuth: true,
});

/*
 *   Healthcheck
 */
router.get("/healthcheck", async (req, res) => {
  return res.status(200).send({ messsage: "OK" });
});

/*
 *   GET all from homelessness table
 */
router.get("/data", async (req, res) => {
  const sql = "SELECT * FROM homelessness";
  homelessnessDatabase.query(sql, (err, result) => {
    if (err) throw err;
    res.status(200).send({ result });
  });
});

/*
 *   POST new data to homelessness table
 */
router.post("/data", async (req, res) => {
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

module.exports = router;
