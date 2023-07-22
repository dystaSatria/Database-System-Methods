use Deneme2
go



--insert into kitap (kitap_no,kitap_adi,isbn_no,sayfa_sayisi,kitap_ozeti) values (1, 'Saatleri ayarlama enstitusu','987282828',45,'lorem ipsum ')

--insert into yazar (yazar_no,yazar_adi,yazar_soyadi) values (1,'Ahmet Hamdi','Tanipinar')

--insert kitap_yazar(kitap_yazar_no,kitap_no,yazar_no) values (1,1,1)

--insert kitap (kitap_no,kitap_adi,isbn_no,sayfa_sayisi,kitap_ozeti) values (2, 'Suç ve Ceza','987282828',45,'lorem ipsum '),(3,'Beyaz geceler','82828282',65,'bi beyaz var gece var.Bu kadar'), (4,'Kumarbaz','0099116161',98,'kurmabaz ozeti gerek yok aga')

--insert yazar(yazar_no,yazar_adi) values (2,'Dostovyteki')

--update yazar set yazar_adi ='Fyodor Dostovyteki' where yazar_no=2

--ALTER table odunc alter column kitap_no int null

--select * from yazar

--insert into odunc(odunc_no,uye_no,kitap_no ,verme_tarihi) values (1,1,1,'02.01.2021'), (2,2,2,'03.01.2021'), (3,3,3,'07.01.2021')

--select kitap_no,uye_no from odunc where verme_tarihi between '01.01.2021' and '03.31.2021'

--select * from uye order by uye_adi desc,adresi asc

--select uye_adi,uye_soyadi from uye where adresi in('istanbul')

--update uye set adresi='cirebon' where uye_adi='Omer'

--select uye_adi as ad,uye_soyadi as amk,uye_no,adresi from uye where uye_adi like '%a%' or uye_adi like 'o%'

--select * from uye