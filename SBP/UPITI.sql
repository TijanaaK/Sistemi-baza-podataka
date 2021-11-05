--UPITI

/*
Napisati ime i prezime, adresu i platu zaposlenog.
Pomocu case iskaza izvrsiti procenu plate i to:
- Ako je plata zaposlenog manja od 30000 ispisati 'Minimalac'
- Ako je plata zaposlenog izmedju 30000 i 50000 ispisati 'Prosecna plata'
- Ako je plata zaposlenog vece jednaka od 50000 ispisati 'Visoka plata'
U ostalim slucajevima napisati 'Nepoznato'.
Izlistati sve navedene podatke za one sluzbe parking servisa sa id-evima 5,3,2 i 1
i za one zaposlene koji u svom prezimenu imaju vise od ili tacno pet slova.
Poredjati opadajuce po plati.
*/

select ime_zap + ' ' + prezime_zap as 'Ime i prezime:', adresa_zap as Adresa, plata as Plata, 
	case 
		when plata < 30000 then 'Minimalac'
		when plata >= 30000 and plata < 50000 then 'Prosecna plata'
		when plata >= 50000 then 'Visoka plata'
		else 'Nepoznato'
	end as 'Procena plate:'
from parkingServis.zaposleni zap 
inner join parkingServis.zaposljava z on zap.mbr=z.mbr
inner join parkingServis.sluzba_parking_servisa sps on z.id_sluzbe=sps.id_sluzbe
where sps.id_sluzbe in (5, 3, 2, 1) and len(prezime_zap) >= 5
order by plata desc;
go





/* 
Izlistati pet gradova i manifestacija, broj za uplatu privremenog parkiralisata i cenu privremenog parkiralista
kao i broj dana od zavrsetka manifestacije.
*/

select top 5 naziv_grada as 'Naziv grada', naziv_dogadjaja as 'Naziv manifestacije',
 br_za_uplatu as 'Broj za uplatu privremenog parkiralista', cena_privremeno as 'Cena privremenog parkiralista', 
 DATEDIFF(day, period_datum_do,CAST(GETDATE() as DATE)) as 'Broj dana od zavrsetka manifestacije:'
from parkingServis.grad g 
inner join parkingServis.oblast o on g.id_grada=o.id_oblasti
inner join parkingServis.se_nalazi sn on o.id_oblasti=sn.id_oblasti
inner join parkingServis.parkiraliste p on sn.id_oblasti=p.id_oblasti
inner join parkingServis.privremeno po on p.id_parkiralista=po.id_parkiralista
inner join parkingServis.ima i on po.id_parkiralista=i.id_parkiralista
inner join parkingServis.period pe on i.id_parkiralista=pe.id_period
order by DATEDIFF(day, CAST(GETDATE() as DATE), period_datum_do)  asc


/*
 Izlistati imena i prezimena zaposlenih kao i grad u kome zive (da nije Beograd).
 Ukoliko zaposleni ne radi vise u parking servisu, ispisati poruku 'Nije vise zaposlen/a'.
 Izvrsiti izlistavanje za sve one slucajeve u kojima su plate zaposlenih izmedju 60000  i 150000.
 Poredjati po imenima rastuce.
*/

/*select ime_zap as Ime, prezime_zap as Prezime,
iif(datum_do is null, 'Nije vise zaposlen/a', naziv_grada) as Grad
from parkingServis.zaposleni zap
inner join parkingServis.zaposljava z on zap.mbr=z.mbr
inner join parkingServis.sluzba_parking_servisa sps on z.id_sluzbe=sps.id_sluzbe
inner join parkingServis.grad g on sps.id_grada=g.id_grada
where naziv_grada != 'Beograd' and plata between 60000 and 150000
order by ime_zap asc;
*/

select ime_zap as Ime, prezime_zap as Prezime,
iif(datum_do is null, naziv_grada, 'Nije vise zaposlen/a') as Grad
from parkingServis.zaposleni zap
inner join parkingServis.zaposljava z on zap.mbr=z.mbr
inner join parkingServis.sluzba_parking_servisa sps on z.id_sluzbe=sps.id_sluzbe
inner join parkingServis.grad g on sps.id_grada=g.id_grada
where naziv_grada != 'Beograd' and plata between 60000 and 150000
order by ime_zap asc;

/*
Napisati koliko ima dnevnih karata koje se mogu koristiti u dve ili vise zona. 
Izlistati cene po satu, koliko je vremensko ogranicenje za koje vazi cena po satu i vrste zona koje se zavrsavaju na 'a'.
Poredjati po ceni po satu opadajuce.
*/

select count(id_dnevne_karte) as 'Broj dnevnih karata', cenaaposatu as 'Cena po satu', 
ogranicenje_parkiranja as 'Vremensko ogranicenje', vrsta_zone as 'Vrsta zone'
from parkingServis.dnevna_kartaa dk
join parkingServis.u_okviru uo on dk.id_zone=uo.id_zone
join parkingServis.zona z on uo.id_zone=z.id_zone
where vrsta_zone like '%a'
group by vrsta_zone, cenaaposatu, ogranicenje_parkiranja
having count(id_dnevne_karte) >= 2
order by cenaaposatu desc;

/*
Napisati naziv grada, broj oblasti, cenu po satu, 
cenu po satu sa popustom kao i iznos procenta cene sa popustom u odnosu na regularnu cenu (100%). 
Ako je cena snizena za 25% ispisivace se broj 75% kao procenat od realne cene.
Izlistati sve te podatke u kojima je ogranicenje parkiranja u tom parkiralistu tri sata.
Poredjati po ceni po satu rastuce.
*/

select naziv_grada as 'Naziv grada:', count(id_oblasti) as 'Broj oblasti', cenaaposatu as 'Cena po satu:', 
cenaaposatusapopustom as 'Cena po satu sa %', 
round(cast((cenaaposatusapopustom*100/cenaaposatu) as varchar), 2) as '% u odnosu na realnu cenu (100%)'
from parkingServis.oblast o
join parkingServis.grad g on o.id_grada=g.id_grada
join parkingServis.u_okviru uo on g.id_grada=uo.id_grada
where ogranicenje_parkiranja = '3 sata'
group by naziv_grada, cenaaposatu, cenaaposatusapopustom
order by cenaaposatu asc;