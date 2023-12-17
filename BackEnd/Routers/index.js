const express = require("express");
const app = express();
const router = express.Router();
const connection = require("../Service/db_connection.js");


router.get("/", (req, res) => {
  connection.query('SELECT * FROM otel', (err, results) => {
    if (err) throw err;
    res.render('index', { oteller: results }); // Verileri bir şablona gönder
  });
});

router.get('/otel/:id', (req, res) => {
  const otelID = req.params.id;

  // Otel bilgilerini almak için sorgu yapın
  connection.query('SELECT * FROM otel WHERE ID = ?', otelID, (err, otelResults) => {
    if (err) throw err;

    // Otele ait yorumları ve kullanıcıları almak için sorgu yapın
    connection.query('SELECT * FROM yorum WHERE otel_ID = ?', otelID, (err, yorumResults) => {
      if (err) throw err;

      res.render('otelDetay', { otel: otelResults[0], yorumlar: yorumResults });
    });
  });
});

module.exports = router;
