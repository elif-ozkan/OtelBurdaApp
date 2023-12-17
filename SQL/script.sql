 create database otelapp;
 USE otelapp;

CREATE TABLE otel(
ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
isim NVARCHAR(50) NOT NULL,
açıklama NVARCHAR(450) NOT NULL
);

CREATE TABLE kullanıcı(
ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
isim NVARCHAR(50) NOT NULL
);

CREATE TABLE yorum(
ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
yorum NVARCHAR(250) NOT NULL,
otel_ID INT,
kullanıcı_ID INT,
FOREIGN KEY (kullanıcı_ID) REFERENCES kullanıcı(ID),
FOREIGN KEY (otel_ID) REFERENCES otel(ID)
);

-- Otel verileri ekleme
INSERT INTO otel (isim, açıklama) VALUES
('Grand Park Hotel', 'Harika manzaralı deniz kenarı otel'),
('Emerald Bay Resort', 'Şehir merkezine yakın lüks otel'),
('Pine Ridge Lodge', 'Doğa ile iç içe butik otel'),
('Sunset Beach Retreat', 'Dağ evi tarzında tatil köyü'),
('Mountain View Inn', 'Tarihi dokuya sahip konaklama');

-- Kullanıcı verileri ekleme
INSERT INTO kullanıcı (isim) VALUES
('Ahmet'),
('Ayşe'),
('Mehmet'),
('Zeynep'),
('Can'),
('Elif');

-- Yorum verileri ekleme
INSERT INTO yorum (yorum, otel_ID, kullanıcı_ID) VALUES
('Harika bir konaklama deneyimi yaşadım.', 1, 1),
('Otel çok temiz ve konforlu.', 1, 2),
('Personel ilgili ve yardımseverdi.', 1, 3),
('Manzara nefes kesiciydi.', 1, 4),
('Kahvaltı seçenekleri çok zengin değil.', 1, 5),
('Otel konumu harika!', 2, 1),
('Lobi alanı oldukça geniş ve ferah.', 2, 2),
('Otelin restoranı muhteşem lezzetler sunuyor.', 2, 3),
('Personel güleryüzlü ve hızlı hizmet veriyor.', 2, 4),
('Otel odaları biraz küçük.', 2, 5),
('Çok şık bir atmosfere sahip.', 3, 1),
('Doğa ile iç içe harika bir konaklama.', 3, 2),
('Fiyat performans dengesi iyi.', 3, 3),
('Huzurlu bir ortamı var.', 3, 4),
('Otopark sıkıntısı yaşanabilir.', 3, 5),
('Eşsiz manzaralı bir otel.', 4, 1),
('Doğa sporları için ideal bir konumda.', 4, 2),
('Yemekler lezzetliydi.', 4, 3),
('Fiyatları biraz yüksek.', 4, 4),
('Oda temizliği biraz daha dikkatli olabilir.', 4, 5),
('Tarihi dokusuyla etkileyici bir mekan.', 5, 1),
('Otelin tarihi özellikleri korunmuş.', 5, 2),
('Oda dekorasyonu çok güzel.', 5, 3),
('Ancak bazı odalarda ses yalıtımı problemi var.', 5, 4),
('Personel misafirperverdi.', 5, 5);
