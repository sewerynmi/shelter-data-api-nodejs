const express = require("express");
const dotenv = require("dotenv").config();
const bodyParser = require("body-parser");
const mysql = require("./database");
const multer = require("multer");
const upload = multer();

const app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded());
app.use(bodyParser.urlencoded({ extended: true }));

// for parsing multipart/form-data
//app.use(upload.array());
app.use(express.static("public"));

/** DB  **/
const homelessnessDatabase = mysql;
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
