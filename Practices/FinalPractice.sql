create database KitapEvi

create table uye(
uye_no int primary key not null,
uye_adi varchar(50),
uye_soyadi varchar(50),
adresi text,
aktifmi bit
)

create table kitap(
kitap_no int primary key not null,
kitap_adi varchar(50),
isbn_no text,
sayfa_sayisi int,
kitap_ozeti text
)

create table odunc(
odunc_no int primary key not null,
kitap_no int not null,
constraint fk_odunc_kitap foreign key (kitap_no) references kitap(kitap_no),
uye_no int not null,
constraint fk_odunc_uye foreign key(uye_no) references uye(uye_no),
verme_tarihi date,
verme_suresi int,
geldimi bit
)

create table tur(
tur_no int primary key not null,
tur_aciklama text
)

create table kitap_tur(
kitap_tur_no int primary key not null,
kitap_no int not null,
constraint fk_kitap_tur_kitap foreign key (kitap_no) references kitap (kitap_no), 
tur_no int not null,
constraint fk_kitap_tur_tur foreign key(tur_no) references tur(tur_no)
)

create table yazar(
yazar_no int primary key not null,
yazar_adi varchar(50),
yazar_soyadi varchar(50),
dogum_tar date,
biyografi text
)

create table kitap_yazar (
kitap_yazar_no int primary key not null,
yazar_no int not null,
constraint fk_kitap_yazar_yazar foreign key (yazar_no) references yazar(yazar_no),
kitap_no int not null,	
constraint fk_kitap_yazar_kitap foreign key (kitap_no) references kitap(kitap_no)
)



