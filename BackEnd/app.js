const express = require("express");
const dbConnection = require("./Service/db_connection.js");
const api = require("./Routers/index.js");
const app = express();
const port = process.env.PORT || 3000;

// Statik dosyaları sunmak için
//app.use(express.static("FrontEnd"));

// API rotalarını kullanmak için
app.use("/", api);

app.set('view engine', 'ejs'); // Şablon motoru olarak EJS kullanıyoruz
app.set('views', '../FrontEnd'); // Şablon dosyalarının bulunduğu dizin

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}/`);
});

// Uygulama kapatıldığında tüm bağlantıları kapatır
process.on("SIGINT", () => {
  dbConnection.end((err) => {
    console.log(err);
    process.exit(1);
  });
  console.log("\nBağlantılar sonlandırılıyor...");
  process.exit(0);
});
