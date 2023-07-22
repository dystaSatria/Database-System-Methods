CREATE DATABASE blog

USE blog
GO 

CREATE TABLE kullanicilar(
kullanici_id INT PRIMARY KEY NOT NULL, 
ad VARCHAR(30) NOT NULL,
soyad VARCHAR(40) NOT NULL,
eposta VARCHAR (60) NOT NULL,
sifre INT NOT NULL,
biyografi TEXT,
fotogtaf IMAGE,
)

CREATE TABLE mesajlasma(
m_id INT PRIMARY KEY NOT NULL, 
baslik TEXT NOT NULL,
icerik TEXT NOT NULL,
okunma_tarihi DATE NOT NULL,
gonderme_tarihi DATE NOT NULL ,
gonderici_id INT NOT NULL,
CONSTRAINT FK_mesajlasma_kullanicilar FOREIGN KEY(gonderici_id) REFERENCES kullanicilar(kullanici_id)
)

CREATE TABLE roller(
rol_id INT PRIMARY KEY NOT NULL, 
rol_adi VARCHAR (30) NOT NULL,
)

CREATE TABLE kullanici_rol(
kul_rol_id INT PRIMARY KEY NOT NULL, 
kul_id INT NOT NULL,
CONSTRAINT FK_kullanici_rol_kullanicilar FOREIGN KEY(kul_id) REFERENCES kullanicilar(kullanici_id),
rol_id INT NOT NULL,
CONSTRAINT FK_kullanici_rol_roller FOREIGN KEY(rol_id) REFERENCES roller(rol_id),
)

CREATE TABLE yazilar(
yazi_id INT PRIMARY KEY NOT NULL, 
baslik TEXT NOT NULL,
ozet TEXT NOT NULL,
icerik TEXT NOT NULL,
olusturma_tarihi DATE NOT NULL,
guncelleme_tarihi DATE NOT NULL,
yayimlama_tarihi DATE NOT NULL,
kul_id INT NOT NULL,
CONSTRAINT FK_yazilar_kullanicilar FOREIGN KEY(kul_id) REFERENCES kullanicilar(kullanici_id),
)

CREATE TABLE puanlama(
puan_id INT PRIMARY KEY NOT NULL, 
puan INT NOT NULL,
tarih DATE NOT NULL,
kul_id INT NOT NULL,
CONSTRAINT FK_puanlama_kullanicilar FOREIGN KEY(kul_id) REFERENCES kullanicilar(kullanici_id),
yazi_id INT NOT NULL,
CONSTRAINT FK_puanlama_yazilar FOREIGN KEY(yazi_id) REFERENCES yazilar(yazi_id),
)

CREATE TABLE yorum(
yorum_id INT PRIMARY KEY NOT NULL, 
yorum TEXT NOT NULL,
yorum_tarihi DATE NOT NULL,
yazi_id INT NOT NULL,
CONSTRAINT FK_yorum_yazilar FOREIGN KEY(yazi_id) REFERENCES yazilar(yazi_id),
kul_id INT NOT NULL,
CONSTRAINT FK_yorum_kullanicilar FOREIGN KEY(kul_id) REFERENCES kullanicilar(kullanici_id),
)

CREATE TABLE kategori(
kat_id INT PRIMARY KEY NOT NULL, 
kat_adi VARCHAR (30) NOT NULL,
)

CREATE TABLE etiket(
etiket_id INT PRIMARY KEY NOT NULL, 
anahtar_kelime VARCHAR (30) NOT NULL,
)

CREATE TABLE kategori_yazi(
kat_yaz_id INT PRIMARY KEY NOT NULL, 
yazi_id INT NOT NULL,
CONSTRAINT FK_kategori_yazi_yazilar FOREIGN KEY(yazi_id) REFERENCES yazilar(yazi_id),
kat_id INT NOT NULL,
CONSTRAINT FK_kategori_yazi_kategori FOREIGN KEY(kat_id) REFERENCES kategori(kat_id),
)

CREATE TABLE etiket_yazi(
eti_yaz_id INT PRIMARY KEY NOT NULL, 
yazi_id INT NOT NULL,
CONSTRAINT FK_etiket_yazi_yazilar FOREIGN KEY(yazi_id) REFERENCES yazilar(yazi_id),
etiket_id INT NOT NULL,
CONSTRAINT FK_et_yazi_yazilar FOREIGN KEY(etiket_id) REFERENCES etiket(etiket_id),
)