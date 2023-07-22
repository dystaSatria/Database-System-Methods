USE blog
GO

SELECT ad,soyad,eposta  FROM kullanicilar 

SELECT * FROM yazilar WHERE yayimlama_tarihi between '12.01.2021' AND '12.15.2021' 

SELECT baslik,icerik,ozet FROM yazilar  WHERE baslik LIKE '%yemek%' OR baslik LIKE '%tatli%'

SELECT baslik,icerik,ozet FROM yazilar  WHERE icerik LIKE '%yemek%' OR icerik LIKE '%tatli%'

SELECT baslik,icerik,ozet FROM yazilar  WHERE ozet LIKE '%yemek%' OR ozet LIKE '%tatli%'
