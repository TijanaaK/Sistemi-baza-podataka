/*
Triger se aktivira pri insert-u datuma zaposljavanja zaposlenog od strane sluzbe parking servisa.
Datum zaposljavanja mora da bude stariji ili jednak danasnjem datumu, ne moze biti noviji
*/
if object_id('parkingServis.Unos_dat_zap','TR') is not null
	drop trigger parkingServis.Unos_dat_zap;
go
create trigger parkingServis.Unos_dat_zap 
on parkingServis.zaposljava
after insert
as
begin
  declare @datZap as date;
  set @datZap = (select datum_od from inserted);
  declare @danasnjiDat as date;
  set @danasnjiDat = (select getdate() as date)

  if (@danasnjiDat < @datZap)
    begin
	  raiserror ('Datum zaposljavanja ne moze biti noviji od danasnjeg', 15, 0)
	  rollback transaction;
	end
end;
go

insert into parkingServis.zaposljava(id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do)
	values(1, 1, 12345678, 3, '2020/12/12', null);


/*
Napisati triger koji će se aktivirati svaki put zaposleni promeni adresu tako da se arhiviraju i prethodni podaci.
Za potrebe trigera potrebno je kreirati tabelu parkingServis.informacije u kojoj ce se nalaziti ti podaci.
*/

IF OBJECT_ID('parkingServis.informacije', 'U') IS NOT NULL
	DROP TABLE parkingServis.informacije;
	
CREATE TABLE parkingServis.informacije
(
	mbr numeric(8) references parkingServis.zaposleni(mbr),
	datum date,
	staraAdresa nvarchar(20),
	novaAdresa nvarchar(20),
	constraint rk_informacije primary key(mbr)
);
IF OBJECT_ID('parkingServis.ZaposleniInfo', 'TR') IS NOT NULL
	DROP TRIGGER parkingServis.ZaposleniInfo;
GO
CREATE TRIGGER parkingServis.ZaposleniInfo
	ON parkingServis.zaposleni
	AFTER UPDATE
AS BEGIN
	declare @datumPromene AS DATE = GETDATE();
	declare @mbr as numeric = (select mbr from inserted);
	declare @staraAdresa as varchar(20) = (select adresa_zap from deleted);
	declare @novaAdresa as varchar(20) = (select adresa_zap from inserted);

		IF(@novaAdresa != @staraAdresa) 
		BEGIN
			INSERT INTO parkingServis.informacije(mbr, datum, staraAdresa, novaAdresa) 
			VALUES (@mbr, @datumPromene, @staraAdresa, @novaAdresa)
			RETURN;
		END
		ELSE
		BEGIN
			INSERT INTO parkingServis.informacije(mbr, datum, staraAdresa, novaAdresa)
			VALUES (@mbr, @datumPromene, @staraAdresa, @novaAdresa)
			RETURN;
		END
	END
GO


select * from parkingServis.zaposleni;
select * from parkingServis.informacije;


update parkingServis.zaposleni set adresa_zap= 'Ivake Stanic 3' where mbr=19852222;

select * from parkingServis.informacije;
drop table parkingServis.informacije;







