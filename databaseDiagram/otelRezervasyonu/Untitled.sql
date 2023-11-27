CREATE TABLE [ilanlar] (
  [id] integer PRIMARY KEY,
  [otel_id] integer,
  [icerik] text,
  [olusturulma_zamani] timestamp
)
GO

CREATE TABLE [musteri_gorusleri] (
  [id] integer PRIMARY KEY,
  [kullanici_id] integer,
  [geribildirim] text,
  [olusturulma_zamani] timestamp
)
GO

CREATE TABLE [kafeterya] (
  [id] integer PRIMARY KEY,
  [otel_id] integer,
  [ad] nvarchar(255),
  [konum] nvarchar(255)
)
GO

CREATE TABLE [yiyecek_menusu] (
  [id] integer PRIMARY KEY,
  [kafeterya_id] integer,
  [ad] nvarchar(255),
  [fiyat] decimal
)
GO

CREATE TABLE [rezervasyonlar] (
  [id] integer PRIMARY KEY,
  [oda_id] integer,
  [kullanici_id] integer,
  [giris_tarihi] timestamp,
  [cikis_tarihi] timestamp
)
GO
