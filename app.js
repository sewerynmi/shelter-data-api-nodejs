const express = require("express");
const dotenv = require("dotenv").config();
const bodyParser = require("body-parser");
const mysql = require("mysql2");

const app = express();
app.use(bodyParser.json());

/** DB  **/

const homelessnessDatabase = mysql.createConnection({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  insecureAuth: true,
});

// ** App Routes ** //
const homelessnessRoute = require("./routes/homelessnessRoute");
app.use("/api/homelessness", homelessnessRoute);

homelessnessDatabase.connect((err) => {
  if (err) throw err;
  console.log("Connected to MySQL database");
});

app.listen(process.env.PORT, () => {
  console.log("ShelterHomelessnessAPI status: ON");
});
