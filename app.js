const express = require("express");
const dotenv = require("dotenv").config();
const bodyParser = require("body-parser");
const mysql = require("./database");
var cors = require("cors");
const app = express();
app.use(bodyParser.json());
app.use(cors());

/* DB */
const homelessnessDatabase = mysql;
/* App Routes */
const homelessnessRoute = require("./routes/homelessnessRoute");
app.use("/api/homelessness", homelessnessRoute);

/* DB connection */
homelessnessDatabase.connect((err) => {
  if (err) throw err;
  console.log("Connected to MySQL database");
});

app.listen(process.env.PORT, () => {
  console.log("ShelterHomelessnessAPI status: ON");
});
