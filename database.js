const dotenv = require("dotenv").config();
var mysql2 = require("mysql2");

const homelessnessDatabase = mysql2.createConnection({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  insecureAuth: true,
});

module.exports = homelessnessDatabase;
