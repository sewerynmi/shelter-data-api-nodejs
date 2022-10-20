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
    res.status(401).send("Invalid header format");
    return;
  }
  try {
    // Validation: check if request body has valid format

    homelessnessValidator.validate(requestBody, homelessnessDataSchema, {
      throwError: true,
    });
    console.log("validation");
  } catch (error) {
    res.status(401).end("Invalid body format: " + error.message);
    return;
  }
  // Validation: check if any entry exist in the DB table
  // Insert data not present in DB
  res.status(201).send({ result: "attempt to insert data to DB" });
});

module.exports = router;
