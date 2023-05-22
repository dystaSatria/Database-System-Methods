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




