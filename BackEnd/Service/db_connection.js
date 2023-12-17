var mysql = require("mysql");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "otelapp",
  port: "3307",
});

module.exports = connection;

connection.connect((err) => {
  if (err) {
    console.log(err);
    return;
  }
  console.log("Veritabanına bağlanıldı!");
});
