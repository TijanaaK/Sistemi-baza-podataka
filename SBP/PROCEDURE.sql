/*Napisati proceduru ZaposleniPoSluzbi koja za prosledjeni id sluzbe ispisuje podatke o zaposlenima i to:
Ako ne postoji sluzba sa prosledjenim id-em ispisati poruku.
Ako postoje zaposleni u sluzbi ispisati sledece u formi:
	U <naziv sluzbe> sa id-em <id sluzbe> su zaposleni:
	<redni broj> <ime i prezime zaposlenog> je zaposlen/a po <redni broj zaposlenja> .put
	Ukupno radnika: <broj radnika zaposlenih u toj sluzbi>
*/


IF OBJECT_ID('parkingServis.ZaposleniSluzba', 'P') IS NOT NULL
	DROP PROC parkingServis.ZaposleniSluzba;
GO
CREATE PROC parkingServis.ZaposleniSluzba
@id_sluzbe AS INT
AS
BEGIN
	DECLARE @naziv AS VARCHAR(70) = (select naziv_sluzbe from parkingServis.sluzba_parking_servisa where id_sluzbe = @id_sluzbe);

	IF(@naziv IS NULL)
	BEGIN
		PRINT 'Ne postoji sluzba sa takvom sifrom';
		RETURN;
	END
	
	DECLARE @brZaposlenih AS INT = (SELECT br_zaposlenih 
	FROM parkingServis.sluzba_parking_servisa sl
	WHERE sl.id_sluzbe= @id_sluzbe);

	IF(@brZaposlenih > 0)
	BEGIN
		PRINT 'U ' + @naziv + ' sa id-em ' + TRY_CAST(@id_sluzbe AS VARCHAR) + ' su zaposleni:';

		DECLARE @redniBroj AS INT = 1;

		DECLARE Radnik_cursor CURSOR FAST_FORWARD READ_ONLY FOR
		SELECT ime_zap + ' ' + prezime_zap, rbr_zaposlenja
		FROM parkingServis.zaposleni zap
		INNER JOIN parkingServis.zaposljava z ON zap.mbr = z.mbr
		WHERE id_sluzbe = @id_sluzbe;

		DECLARE @imePrz AS VARCHAR(50);
		DECLARE @rbrZaposlenja AS varchar(15);

		OPEN Radnik_cursor;
		FETCH NEXT FROM Radnik_cursor INTO @imePrz, @rbrZaposlenja

	WHILE @@FETCH_STATUS = 0  
	BEGIN
		PRINT TRY_CAST(@redniBroj AS VARCHAR) + ') ' + @imePrz + ' je zaposlen/a po ' +@rbrZaposlenja + '. put';
		SET @redniBroj = @redniBroj + 1;
		
		FETCH NEXT FROM Radnik_cursor INTO @imePrz, @rbrZaposlenja
	END;

	PRINT 'Ukupno radnika u toj sluzbi: ' + TRY_CAST(@brZaposlenih AS VARCHAR);

	CLOSE Radnik_cursor;
	DEALLOCATE Radnik_cursor;
	END
END

EXEC parkingServis.ZaposleniSluzba 1;
EXEC parkingServis.ZaposleniSluzba 9;
EXEC parkingServis.ZaposleniSluzba 0; -- nema radnika




/*Napisati proceduru pod nazivom PRIMANJA_ZAPOSLENOG, koja proverava kolika je plata zaposlenog(na osnovu mbr) 
u odnosu na prosecnu platu u okviru sluzbe u kojoj zaposleni radi i ispisuje sledece:
-Ako ima platu vecu od prosecne:
	<prezime radnika> sa maticnim broj <mbr> je zaposlen u <naziv sluzbe>, a plata mu je veca od prosecne
-Ako ima platu manju od prosecne:
		<prezime radnika> sa maticnim broj <mbr> je zaposlen u <naziv sluzbe>, a plata mu je manja od prosecne
-I inace
		<prezime radnika> sa maticnim broj <mbr> je zaposlen u <naziv sluzbe>, a plata mu je prosecna
*/


IF OBJECT_ID('parkingServis.PRIMANJA_ZAPOSLENOG', 'P') IS NOT NULL
	DROP PROC parkingServis.PRIMANJA_ZAPOSLENOG;
GO
CREATE PROC parkingServis.PRIMANJA_ZAPOSLENOG
@mbr AS int
AS
BEGIN

DECLARE @przZaposlenog AS VARCHAR(30) = (SELECT prezime_zap FROM parkingServis.zaposleni WHERE MBR = @mbr);
DECLARE @pltZaposlenog AS int = (SELECT plata FROM parkingServis.zaposleni  WHERE MBR = @mbr);
DECLARE @sifraSluzbe AS INT = (SELECT sps.id_sluzbe FROM parkingServis.sluzba_parking_servisa sps
inner join parkingServis.zaposljava z on sps.id_sluzbe=z.id_sluzbe WHERE MBR = @mbr);
DECLARE @nazivSluzbe AS VARCHAR(70) = (SELECT naziv_sluzbe FROM parkingServis.sluzba_parking_servisa WHERE id_sluzbe = @sifraSluzbe);
DECLARE @prosecnaPlata AS int = (SELECT AVG(plata) FROM parkingServis.zaposleni zap
inner join parkingServis.zaposljava z on zap.mbr=z.mbr 
inner join parkingServis.sluzba_parking_servisa sps on z.id_sluzbe=sps.id_sluzbe 
where sps.id_sluzbe = @sifraSluzbe);

IF(@pltZaposlenog > @prosecnaPlata) 
	PRINT @przZaposlenog + ' sa maticnim brojem: ' + TRY_CAST(@mbr AS VARCHAR) + ' je zaposlen u ' + @nazivSluzbe + ' , a plata mu je veca od prosecne';
ELSE IF(@pltZaposlenog < @prosecnaPlata) 
	PRINT @przZaposlenog + ' sa maticnim brojem: ' + TRY_CAST(@mbr AS VARCHAR) + ' je zaposlen u ' + @nazivSluzbe + ' , a plata mu je manja od prosecne';
ELSE
	PRINT @przZaposlenog + ' sa maticnim brojem: ' + TRY_CAST(@mbr AS VARCHAR) + ' je zaposlen u ' + @nazivSluzbe + ' , a plata mu je prosecna';
END


exec parkingServis.PRIMANJA_ZAPOSLENOG 85859400 --veca od prosecne
exec parkingServis.PRIMANJA_ZAPOSLENOG 10129988 --manja od prosecne
exec parkingServis.PRIMANJA_ZAPOSLENOG 87699999 -- prosecna
