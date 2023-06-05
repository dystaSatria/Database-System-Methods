# Material Summary

<br>
<br>

## Saklı Prosedürler (SP)

- Parametre alarak veya parametresiz kullanılırlar.
- Saklı prosedürler veritabanı içerisinde saklanırlar.
- SP kodlar : 
``` sql
  sp_addmessage --hata mesajı oluşturmak için kullanılır.
  sp_attach_db  --Sunucuya eklemek için.
  sp_detach_db  --Sunucuya çıkarmak için.
  sp_configure  --Konfigürasyon bilgilerini almaya ve değiştirmeyi sağlar.
  sp_addlogin  --SQL Server’a yeni kullanıcı tanımlama
  sp_adduser   --Aktif veritabanına kullanıcı eklemek
```
<br>
<br>

## Extended Stored Procedure (Genişletilmiş Saklı Yordamlar):


``` sql
 xp_cmdshell --MS-DOS komut göndermek için
 xp_fileexist --Bir dosyanın olup olmadığını kontrol etmek
 xp_create_subdir --SQL Server üzerinde klasör oluşturmak
 xp_subdirs --Alt dizinleri listelemek
```
<br>
<br>

## SP Kod Bloğu Oluşturma (Parametresiz)


``` sql

CREATE PROCEDURE <procedure adı> AS
<T-SQL Kodları>

--VEYA

CREATE PROCEDURE <procedure adı> AS
BEGIN
<T-SQL Kodları>
END

--Ornek

CREATE PROCEDURE ogrencileri_listele
AS
SELECT ogr_no, adi, soyadi, bol_adi FROM ogrenci, bolumler WHERE ogrenci.bol_no = bolumler.bol_no

--SP kodu iki tabloyu birleştirerek tüm öğrencilerin numara, ad, soyad ve bölüm adını listelemektedir.
EXEC ogrencileri_listele

```
<br>
<br>

## SP Kod Bloğu Oluşturma (Parametreli)
``` sql

CREATE PROCEDURE <procedure adı>
(
@Parametre1 VeriTipi, 
@Parametre2 VeriTipi, ...
)
AS
<T-SQL Kodları>

--VEYA

CREATE PROCEDURE <procedure adı> 
(
@Parametre1 VeriTipi, 
@Parametre2 VeriTipi, ...
)
AS
BEGIN
<T-SQL Kodları>
END

--Ornek

CREATE PROCEDURE ogrencileri_listele
(
@numara INT
)
AS
SELECT ogr_no, adi, soyadi, bol_adi FROM ogrenci, bolumler WHERE ogrenci.bol_no = bolumler.bol_no AND ogr_no = @numara

--@numara parametresi ile belirtilen öğrenci
EXEC ogrencileri_listele 1165613035

```
<br>
<br>

## Ogrencileri_listele3 saklı prosedürü varchar() tipinde @ad parametresi kullanılarak gönderilen veri ile başlayan adlar listelenmekte.

```sql

CREATE PROCEDURE ogrencileri_listele3 
(
@ad varchar(20)
)
AS

SELECT ogr_no, adi, soyadi, bol_adi FROM ogrenci, bolumler WHERE ogrenci.bol_no = bolumler.bol_no AND adi like @ad + '%'

exec ogrencileri_listele3 'B' --B ile başlaya listeleyecek.
```


<br>
<br>

## Scalar-Valued Functions - Skaler Değerli Fonksiyonlar

```sql
CREATE FUNCTION fonksiyon_adi
(
  @parametre1 veri_tipi,
) @parametre2 veri_tipi
RETURNS veri_tipi --geri dönecek değerin veri tipi AS
BEGIN
  -- geri dönecek değer tanımlanır
  DECLARE @donen veri_tipi
-- SQL kodları; dönen parametreye değer aktarımı gibi işlemler RETURN @donen
  RETURN @donen

END
```

* KDV hesaplayan bir fonksiyon aşağıdaki gibi yazılabilir. Fonksiyonun adı kdv_hesapla olarak verilmiştir. @fiyat ve @oran adında iki parametre ile çalışan fonksiyon money tipinde kdv dahil fiyatı hesaplamaktadır. Hesaplanan değer @kdvlifiyat adlı değişkende tutulmakta ve bu değişken RETURN ifadesi ile geri döndürülmektedir.

```sql

CREATE FUNCTION kdv_hesapla (@fiyat MONEY, @oran FLOAT) 
RETURNS MONEY
AS
BEGIN
     DECLARE @kdvlifiyat MONEY
     SET @kdvlifiyat=@fiyat+@fiyat*@oran
     RETURN @kdvlifiyat
END
• SELECT dbo.kdv_hesapla (100,0.18)
```

* Örneğin ilgili kategoride (yani tipine göre) kaç ürün olduğu ile ilgili bir sayı bilgisine sürekli ihtiyaç duyuluyorsa aşağıdaki fonksiyon kullanılabilir.

```sql
CREATE FUNCTION urun_say (@tip VARCHAR(30))
  RETURNS INT
  AS
  BEGIN
DECLARE @say INT
SELECT @say = COUNT(*) FROM urunler u, kategoriler k
WHERE u.kategori_id = k.kategori_id AND kategori_adi = @tip RETURN @say
END


--Kahve kategorisindeki urun sayısı bulunmak istendiğinde fonksiyon aşağıdaki gibi çalıştırılabilir.
SELECT dbo.urun_say('Kahve')
```

* Table-Valued Functions - Tablo Değerli Fonksiyonlar

```sql
CREATE FUNCTION <fonksiyon adı> (<parametreler>) 
RETURNS <değişken tablo adı> TABLE
(
     <tablo alanları>
)
AS BEGIN
     <T-SQL Kodları>
RETURN END

```
```sql
CREATE FUNCTION fonksiyon_adi
(
--parametreler
  @parametre1 veri_tipi,
  @parametre2 veri_tipi )
  RETURNS @tablo TABLE
(
 alan_adi1 veri_tipi,
)alan_adi2 veri_tipi
AS BEGIN
--@tablo değişkeni içini girilen parametreler ile doldur
RETURN END

```
Verilen fiyat aralığındaki ürünlerin adını kategorisini ve satış fiyatını gösteren bir fonksiyon yazalım.

```sql
CREATE FUNCTION fiyat_araligi
 ( 
 @altfiyat money,
 @ustfiyat money
 ) 
 RETURNS TABLE
 AS
 RETURN
 ( SELECT urun_adi, kategori_adi, satis_fiyat FROM urunler u, kategoriler k
WHERE u.kategori_id=k.kategori_id AND satis_fiyat BETWEEN @altfiyat AND @ustfiyat 
)

--Satışı 5 ile 60 TL arasındaki ürünleri listeleyelim.

  
```

