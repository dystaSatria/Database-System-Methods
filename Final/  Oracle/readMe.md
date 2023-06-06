# ORACLE CODES

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

## COUNT

```SQL
SELECT COUNT (FIRST) FROM EMPLOYERS 
SELECT COUNT (DISTINCT FIRST_NAME) FROM EMPLOYERS
```

##  SUM

```SQL
SELECT SUM (ALL FIRST) FROM EMPLOYERS 
SELECT SUM (DISTINCT FIRST_NAME) FROM EMPLOYERS
```

## AVG

```SQL
SELECT AVG (ALL FIRST) FROM EMPLOYERS 
SELECT AVG (DISTINCT FIRST_NAME) FROM EMPLOYERS
```

## ROUND AND AVG

```SQL
SELECT ROUND(AVG(ALL FIRST),3) FROM EMPLOYERS 
SELECT ROUND(AVG(DISTINCT FIRST),3) FROM EMPLOYERS 
```

## MIN & MAX

```SQL
SELECT MIN(SALARY) FROM EMPLOYERS
SELECT MAX(SALARY) FROM EMPLOYERS
```

## TRIGGER 

```SQL
 --Örneğin; EMPLOYEES tablosundan bir çalışanın adı silinirse, bu satırın başka bir örnek tablo olan OLD_EMPLOYEES tablosuna otomatik olarak yazılması sağlanabilir;
 CREATE OR REPLACE TRIGGER trg_employees_delete
AFTER DELETE ON EMPLOYEES
FOR EACH ROW
BEGIN
  INSERT INTO OLD_EMPLOYEES (employee_id, employee_name)
  VALUES (:OLD.employee_id, :OLD.employee_name);
END;
/
```

## INTO

```SQL
DECLARE 
  sayi INTEGER;
BEGIN 
  SELECT COUNT(*) INTO sayi
  FROM Employers WHERE FIRST_NAME= 'JOHN' ;

END

```

## dbms_output.put_line()

```SQL
BEGIN
    dbms_output.put_line('MERHABA DUNYA');
END

```

```output
MERHABA DUNYA
```

## DECLARE

```SQL
DECLARE 
  a integer := 10;
  b integer := 20;
  c integer ;
  f real;
  
BEGIN 
  c := a + b ;
  f := c / b;

END
```
## function

```SQL
FUNCTION personel_adi (
IS ad IN VARCHAR2) RETURN VARCHAR2
BEGIN
SELECT FIRST_NAME FROM EMPLOYEES WHERE LAST_NAME LIKE ‘A%’; RETURN ad;
END personel_adi;
```

## LAST_DAY

```SQL
SELECT LAST_DAY(HIRE_DATE) FROM EMPLOYERS;
```

