/*Napisati funkciju NazivSluzbe koja vraca naziv sluzbe u kojem zaposleni radi na osnovu prosledjenog maticnog broja.
Ukoliko nije unet odgovarajuci mbr, ispisati poruku.*/


IF OBJECT_ID('parkingServis.NazivSluzbe', 'FN') IS NOT NULL
	DROP FUNCTION parkingServis.NazivSluzbe;
GO
CREATE FUNCTION parkingServis.NazivSluzbe
(
	@mbr as int
) 
returns varchar(100) 
as
begin
  declare @nazivSluzbe as varchar(50);
  set @nazivSluzbe = (select naziv_sluzbe
  from parkingServis.sluzba_parking_servisa s 
  left join parkingServis.zaposljava z on (z.id_sluzbe=s.id_sluzbe)
  left join parkingServis.zaposleni zap on zap.mbr = z.mbr
  where zap.mbr= @mbr);
  if @nazivSluzbe is null 
    return 'Uneli ste pogresan mbr!';
return ('U ' +@nazivSluzbe+ ' radi zaposleni sa maticnim brojem koji ste ukucali');
end;
go

select parkingServis.NazivSluzbe(19856498); --Mbr jednog od zaposlenih
select parkingServis.NazivSluzbe(87654321); --Mrb jednog od zaposlenih 
select parkingServis.NazivSluzbe(12345555); --Nema tog zaposlenog sa tim mbr









/*Napisati funkciju koja za prosledjeni datum ispisuje ukupan broj parking mesta u tom privremenom parkiralistu, 
od kada do kada traje dogadjaj u tom periodu kao i sam naziv dogadjaja koji se odrzava.
*/
IF OBJECT_ID('parkingServis.ParkMesta_tokomManifestacije', 'FN') IS NOT NULL
	DROP FUNCTION parkingServis.ParkMesta_tokomManifestacije;
GO


CREATE FUNCTION parkingServis.ParkMesta_tokomManifestacije
(
	@datum as date
) 
returns table 
as
return
(
  select br_ukupno_parking_mesta as 'Ukupan broj parking mesta', period_datum_od as 'Od kada je poceo dogadjaj', 
  period_datum_do as 'Do kada traje dogadjaj', naziv_dogadjaja as 'Naziv dogadjaja koji se odrzava u tom periodu'
  from parkingServis.parkiraliste inner join parkingServis.privremeno 
  on parkingServis.parkiraliste.id_parkiralista=parkingServis.privremeno.id_parkiralista
  inner join parkingServis.ima on parkingServis.privremeno.id_parkiralista = parkingServis.ima.id_parkiralista
  inner join parkingServis.period on parkingServis.ima.id_period = parkingServis.period.id_period
  where @datum between period_datum_od and period_datum_do
);
go

select * from parkingServis.ParkMesta_tokomManifestacije ('2020-08-10');
select * from parkingServis.ParkMesta_tokomManifestacije ('2020-11-02');








--ili ovo
IF OBJECT_ID('parkingServis.ParkMesta_tokomManifestacije', 'FN') IS NOT NULL
	DROP FUNCTION parkingServis.DostupnoParkiraliste_tokomManifestacije;
GO


CREATE FUNCTION parkingServis.DostupnoParkiraliste_tokomManifestacije
(
	@datum as date
) 
returns table 
as
return
(
  select naziv_parkiralista as 'Naziv parkiralista', period_datum_od as 'Od kada je poceo dogadjaj', 
  period_datum_do as 'Do kada traje dogadjaj', naziv_dogadjaja as 'Naziv dogadjaja koji se odrzava u tom periodu'
  from parkingServis.parkiraliste inner join parkingServis.privremeno 
  on parkingServis.parkiraliste.id_parkiralista=parkingServis.privremeno.id_parkiralista
  inner join parkingServis.ima on parkingServis.privremeno.id_parkiralista = parkingServis.ima.id_parkiralista
  inner join parkingServis.period on parkingServis.ima.id_period = parkingServis.period.id_period
  where @datum between period_datum_od and period_datum_do
  
);
go

select * from parkingServis.DostupnoParkiraliste_tokomManifestacije ('2020-09-09');
select * from parkingServis.DostupnoParkiraliste_tokomManifestacije ('2020-06-20');