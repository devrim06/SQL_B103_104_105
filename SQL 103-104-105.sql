--DATABASE(Veritabani)Olusturma
Create dataBase eylem;

create database erol;

--DDL - DATA DEFINITION LANG.
--CREATE TABLO OLUSTURMA
CREATE TABLE ogrenciler2
(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar(25),
not_ort real,--Ondalikli sayilar icin kullanilir(Double gibi)	
kayit_tarihi date
);

--VAROLAN TABLODAN YENI BIR TABLO OLUSTURMA
CREATE TABLE ogrenci_notlari
AS--Benzer trablodaki basliklarla ve data tipleri ile yeni bir tablo olusturmak icin normal tablo 
--olustururken ki parantezler yerine AS kullanip Select komutuyla almak istedigimiz verileri aliriz.
SELECT isim,soyisim,not_ort FROM ogrenciler2;
--DML - DATA MANUPULATION LANG.
--INSERT(Database'e veri ekleme)

INSERT INTO ogrenciler2 VALUES ('1234567','Said','ILHAN',85.5,NOW());
INSERT INTO ogrenciler2 VALUES ('1234567','Said','ILHAN',85.5,'2020-12-11');

--BIR TABLOYA PARCALI VERI EKLEMEK ISTERSEK

INSERT INTO ogrenciler2(isim,soyisim) VALUES ('Erol','Evren');

--DQL - DATA QUERY LANG.
--SELECT

select *FROM ogrenciler2;--Buradaki * sembolu hersey anlamindadir.eylem
