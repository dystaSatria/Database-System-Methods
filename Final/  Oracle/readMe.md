# Code Summary


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



