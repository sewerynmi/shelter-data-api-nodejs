const express = require("express");
const router = express.Router();
const mysql = require("../database");
const multer = require("multer");
const csv = require("fast-csv");

// Upload data file here
const upload = multer({ dest: "uploads/" });

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
 *   GET all from homelessness table for given location (by id)
 */
router.get("/location/:location", async (req, res) => {
  const requiredLocation = req.params.location;
  const sql = `SELECT * FROM homelessness where location_id = '${requiredLocation}'`;
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

// ================ Function used to load population CSV
// They will output in termian SQL queries that should be copied to the migration file or run manually
const fs = require("fs");
const { parse } = require("csv-parse");

// Read CSV

router.get("/load/population", async (req, res) => {
  await fs
    .createReadStream("./populations.csv")
    .pipe(parse({ delimiter: "," }))
    .on("data", function (row) {
      let r =
        "INSERT INTO homelessness.locations (location_id, location_name) VALUES ";
      r += `("${row[0]}", "${row[1]}");`;

      r +=
        "INSERT INTO homelessness.populations (location_id, year, population) VALUES ";
      r += `("${row[0]}", 2022, ${row[2]});`;

      console.log(r);
    });

  res.status(200).send("population load");
});

// ================ END Function used to load population CSV

// ================ Function used to load dataset for given year and period
// 1st iteration: - will export SQL INSERT statements for each row in data file
// using that endpoint uses 'form-data'
// it require 3 keys: datafile (select file to upload, example ./raw_dataset_csv/jan-mar-2022.csv)
// year: year for the dataset (e.g. 2022)
// period: period of the dataset (e.g. jan-mar)
router.post("/load/data", upload.single("datafile"), async (req, res, next) => {
  const year = req.body.year;
  const period = req.body.period;

  const fileRows = [];
  csv
    .parseFile(req.file.path)
    .on("data", function (data) {
      fileRows.push(data); // push each row
    })
    .on("end", function () {
      //console.log(fileRows); //contains array of arrays. Each inner array represents row of the csv file, with each element of it a column
      fs.unlinkSync(req.file.path); // remove temp file
      //process "fileRows" and respond
      for (let i = 1; i < fileRows.length; i++) {
        const row = fileRows[i];
        const location_id = row[0];
        const location_name = row[1];
        const total_init = row[2];
        const total_oprd = row[3];
        const threatened = row[4];
        const homeless_relief_duty = row[5];
        const sql = `INSERT INTO homelessness.homelessness 
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty) 
            VALUES ('${year}', '${period}', "${location_id}", "${location_name}", '${total_init}', '${total_oprd}', '${threatened}', '${homeless_relief_duty}');`;
        console.log(sql);
      }
    });

  //fs.unlink(file_path);
  res.status(200).send("data load");
});

module.exports = router;
