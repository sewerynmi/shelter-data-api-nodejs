const express = require("express");
const router = express.Router();
const mysql = require("../database");

const homelessnessDatabase = mysql;
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
 *   GET all from homelessness table for given year
 */
router.get("/data/year/:year", async (req, res) => {
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
router.get("/data/year/:year/location/:location", async (req, res) => {
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
router.post("/data", async (req, res) => {
  const requestBody = req.body;
  console.log(requestBody);
  // Validation: check if request body has valid format
  // Validation: check if any entry exist in the DB table
  // Insert data not present in DB
  res.status(201).send({ result: "attempt to insert data to DB" });
});

module.exports = router;
