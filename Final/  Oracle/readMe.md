# Codes

<br>
<br>
<br>
<br>

## CREATE TABLE

```SQL
Create Table Proje
(
ID Number NOT NULL,
PROJE_ID VARCHAR2 (100 BYTE) NOT NULL,
BUTCE NUMBER (10,2)
DOGUM_TAR DATE
CONSTRAINT PERSONEL_PK PRIMARY KEY
  (
  ID 
  )  
  ENABLE
);
```

## INSERT

```SQL

INSERT INTO PERSONEL (PERS_ADI, PERS_NO) VALUES (‘Ayşe’, 6) ;

```

## DROP TABLE SILME

```SQL
DROP TABLE PROJE

```

## TRUNCATE (Tablo içinde  tüm verileri silmek için )

```SQL
TRUNCATE TABLE [sema_adı].tablo_adı; OR TRUNCATE TABLE tablo_adı;
```

## DELETE

```SQL
DELETE FROM tablo_adı [WHERE kosul ];
```

## UPDATE

```SQL
UPDATE employees
SET salary = 5000
WHERE employee_id = 100;
```

## DISTINCT (TEKRARSIZ)

```SQL
SELECT DISTICT FIRST_NAME FROM EMPLOYERS
```
 ## SELECT SORGULARI
 ```SQL
SELECT DISTICT FIRST_NAME FROM EMPLOYERS
```

## SELECT FIRST_NAME & LAST_NAME
 ```SQL
SELECT FIRST_NAME || '' || LAST_NAME AS 'AD SOYADI' FROM EMPLOYERS
```
 
## Minimum maaşın 10000'den fazla olan işlerin tüm bilgilerini görüntüleyin.

```SQL
SELECT * FROM JOBS WHERE MIN_SALARY > 10000 
```

## 150 ve 160 numaralı personelin bilgilerini listeleyin.

```SQL

SELECT * FROM EMPLOYERS WHERE EMPLOYERS_ID  IN (150,160)

```

## Ülkeler tablosunu, ülke adına göre Z’den A’ya doğru sıralayın.

```SQL 
SELECT * FROM COUNTRIES ORDER BY COUNTRY_NAME DESC
```

## 2008 yılından sonra işe başlayan personelin listeleyin.

```SQL

SELECT * FROM EMPLOYERS WHERE HIRE_DATE >= '01/01/2008'

```
## İşe başlama tarihinden bu yana 15 yıl geçen personeli listeleyin.

```SQL

SELECT * FROM EMPLOYERS WHERE SYSDATE - HIRE_DATE > 365*15 

```
## Adı yada Soyadı S ile başlayan personelin numarasını, ad, soyad ve eposta adresini listeleyin.

```SQL

SELECT  EMPLOYE_ID, FIRST_NAME, LAST_NAME, EMAIL || '@gmail.com'
FROM EMPLOYERS
WHERE FIRST_NAME LIKE 'S%' OR LAST_NAME LIKE 'S%'
```

## UPPER

```SQL
SELECT UPPER(FIRST_NAME) FROM EMPLOYERS
```

## LOWER

```SQL
SELECT LOWER(FIRST_NAME) FROM EMPLOYERS
```

##  INITCAP (CAPITALIZE EACH WORD)

```SQL
SELECT INITCAP('YUNUS EMRE ASLAN') FROM DUAL 
```

```
Yunus Emre Aslan
```
* DUAL JUST WORK WITH SELECT


## LENGTH

```SQL
SELECT LENGTH('YUNUS') FROM EMPLOYERS 
```

```output
5
```

