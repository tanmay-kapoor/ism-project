require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const ejs = require("ejs");
const mysql = require("mysql");

const app = express();

app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static("public"));

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: process.env.PASSWORD,
    database: "ism_miniproj",
});

app.get("/", (req, res) => {
    res.render("login");
});

app.post("/", (req, res) => {
    const query =
        'SELECT * FROM users WHERE username="' + req.body.username + '"';
    connection.query(query, (err, records) => {
        if (err) throw err;
        res.render("details", { query, records });
    });
});

app.listen("3000", () => console.log("server started on port 3000"));
