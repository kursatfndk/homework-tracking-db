create database db_odevTakip;

create table tbl_ogrenci
(
	ogrenci_id int primary key identity,
	tc char(11) unique not null,
	ad_soyad varchar(30),
	cinsiyet char(1) check(cinsiyet='k' or cinsiyet='e'),
	dogum_tarihi date check(dogum_tarihi<getdate()) 
)
create table tbl_derss
(
	ders_id int primary key identity,
	ders_adi varchar(30),
	ders_kodu char(6) unique not null
)
create table tbl_ogretmen
(
	ogretmen_id int primary key identity,
	tc char(11) unique not null,
	adSoyad varchar(30),
	brans varchar(30)

)
create table tbl_odev
(
	odev_id int primary key identity,
	odev varchar(max),
	verilme_tarihi datetime default getdate(),
	teslim_tarihi datetime default getdate()+15,
	puan tinyint check(puan>=0 and puan<= 100)
)