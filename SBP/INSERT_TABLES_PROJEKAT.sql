--ZONA
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Plava');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Bela');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Crvena');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Ljubicasta');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Zelena');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Zuta');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Narandzasta');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Siva');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Roza');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Tirkizna');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Crna');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Oker');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Braon');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Teget');
INSERT INTO parkingServis.zona (vrsta_zone) VALUES ('Bordo');

--GRAD
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Novi Sad', 300000, 120000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Beograd', 14000000, 180000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Nis', 200000, 100000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Subotica', 110000, 110000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Kragujevac', 150000, 90000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Novi Pazar', 100000, 40000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Prijepolje', 90000, 7000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Zrenjanin', 150000, 50000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Šabac', 150000, 40000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Loznica', 110000, 30000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Kraljevo', 150000, 3000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Valjevo', 50000, 500);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Kikinda', 150000, 50000);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Sremska Mitrovica', 10000, 400);
INSERT INTO parkingServis.grad (naziv_grada, broj_stan, broj_reg_vozila) VALUES ('Bor', 110000, 30000);



--DNEVNA KARTA
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (1, 1);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (3, 2);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (5, 3);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (2, 4);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (4, 5);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (5, 6);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (3, 7);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (1, 8);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (2, 9);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (5, 10);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (8, 9);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (8, 1);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (15, 11);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (14, 12);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (13, 13);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (11, 15);
INSERT INTO parkingServis.dnevna_kartaa (id_zone, id_grada) VALUES (12, 14);


--OBLAST
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (1,'Liman');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (2,'Detelinara');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (3,'Podbara');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (4,'Grbavica');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (5,'Salajka');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (6,'Sajlovo');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (7,'Telep');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (8,'Novo naselje');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (9,'Adice');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (10,'Slana bara');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (6,'Stari grad');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (7,'Zvezdara');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (8,'Cukarica');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (9,'Hareme');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (10,'Zona');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (11,'Barajevo');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (12,'Vozdovac');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (13,'Palilula');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (14,'Mladenovac');
INSERT INTO parkingServis.oblast (id_grada, naziv_oblasti) VALUES (15,'Obrenovac');

--ULICA
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Bulevar Mihajla Pupina');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Miroslava Antica');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Narodnih heroja');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Svetozara Miletica');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Kisacka');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Alekse Šantića');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Futoška');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Šafarikova');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Narodnog fronta');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Trg Marije Trandafil');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Desanke Maksimovic');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Vladislava Petkovica Disa');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Sentandrejski put');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Partizanska');
INSERT INTO parkingServis.ulica (naziv_ulice) VALUES ('Bulevar Oslobodjenja');


--SE_NALAZI
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (7, 7, 7);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (2, 2, 2);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (3, 3, 3);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (4, 4, 4);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (5, 5, 5);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (6, 6, 6);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (1, 1, 1);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (8, 8, 8);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (9, 9, 9);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (10, 10, 10);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (15, 11, 6);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (14, 12, 7);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (14, 14, 9);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (12, 13, 8);
INSERT INTO parkingServis.se_nalazi (id_ulice, id_oblasti, id_grada) VALUES (11, 15, 10);


--PARKIRALISTE
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('Trg galerije', 500, 10, 20, 0, 7, 7, 7);
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('Najlon pijaca', 100, 10, 10, 2, 2, 2, 2);
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('Institut', 200, 10, 10, 1, 3,  3, 3);
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('Sajam', 500, 10, 25, 2, 4, 4, 4);
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('Strand', 510, 20, 15, 0, 5, 5, 5);
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('Kamenicka', 50, 10, 20, 0, 6, 6, 6);
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('Novi Beograd', 210, 20, 40, 1, 8,  8, 8);
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('VMA', 70, 10, 15, 2, 9, 9, 9);
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('Donji grad', 160, 10, 35, 0, 10, 10, 10);
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('Sajam 2', 30, 3, 5, 2, 14, 14, 9);
INSERT INTO parkingServis.parkiraliste (naziv_parkiralista , br_ukupno_parking_mesta, br_invalidskih_parking_mesta, br_taxi_parking_mesta, strana, id_ulice, id_oblasti, id_grada)
VALUES ('Stari Beograd', 10, 2, 2, 1, 11, 15, 10);




/*select * from parkingServis.otvoreno
select * from parkingServis.dnevna_kartaa;
select * from parkingServis.grad;
select * from parkingServis.oblast;
select * from parkingServis.parkiraliste;
select * from parkingServis.privremeno;
select * from parkingServis.zatvoreno;
select * from parkingServis.period;
select * from parkingServis.rbr_zaposlenja;
select * from parkingServis.sluzba_parking_servisa;
select * from  parkingServis.ulica;
select * from  parkingServis.zona;
select * from  parkingServis.zaposleni;
select * from  parkingServis.ima;
select * from  parkingServis.pripada;
select * from  parkingServis.se_nalazi;
select * from  parkingServis.zaposljava;
select * from  parkingServis.u_okviru;

select * from parkingServis.parkiraliste;
select * from  parkingServis.se_nalazi;
select * from  parkingServis.ulica;
*/

--OTVORENO
INSERT INTO parkingServis.otvoreno (id_parkiralista) VALUES (2);
INSERT INTO parkingServis.otvoreno (id_parkiralista) VALUES (3);
INSERT INTO parkingServis.otvoreno (id_parkiralista) VALUES (4);
INSERT INTO parkingServis.otvoreno (id_parkiralista) VALUES (5);
INSERT INTO parkingServis.otvoreno (id_parkiralista) VALUES (6);
INSERT INTO parkingServis.otvoreno (id_parkiralista) VALUES (7);
INSERT INTO parkingServis.otvoreno (id_parkiralista) VALUES (8);
INSERT INTO parkingServis.otvoreno (id_parkiralista) VALUES (9);
INSERT INTO parkingServis.otvoreno (id_parkiralista) VALUES (10);
INSERT INTO parkingServis.otvoreno (id_parkiralista) VALUES (11);


--PRIVREMENO
INSERT INTO parkingServis.privremeno (id_parkiralista, br_za_uplatu, cena_privremeno) VALUES (10, 8711, 100);
INSERT INTO parkingServis.privremeno (id_parkiralista, br_za_uplatu, cena_privremeno) VALUES (2, 8212, 150);
INSERT INTO parkingServis.privremeno (id_parkiralista, br_za_uplatu, cena_privremeno) VALUES (3, 8213, 200);
INSERT INTO parkingServis.privremeno (id_parkiralista, br_za_uplatu, cena_privremeno) VALUES (4, 8214, 90);
INSERT INTO parkingServis.privremeno (id_parkiralista, br_za_uplatu, cena_privremeno) VALUES (5, 8215, 110);
INSERT INTO parkingServis.privremeno (id_parkiralista, br_za_uplatu, cena_privremeno) VALUES (6, 8216, 180);
INSERT INTO parkingServis.privremeno (id_parkiralista, br_za_uplatu, cena_privremeno) VALUES (7, 8226, 150);
INSERT INTO parkingServis.privremeno (id_parkiralista, br_za_uplatu, cena_privremeno) VALUES (8, 8218, 80);
INSERT INTO parkingServis.privremeno (id_parkiralista, br_za_uplatu, cena_privremeno) VALUES (9, 8219, 50);
INSERT INTO parkingServis.privremeno (id_parkiralista, br_za_uplatu, cena_privremeno) VALUES (11, 8919, 50);

--ZATVORENO
INSERT INTO parkingServis.zatvoreno (id_parkiralista, cena_po_satu_zat, cena_dnevna_zat, vr_ogr_zat) VALUES (10, 35, 70, '2 sata');
INSERT INTO parkingServis.zatvoreno (id_parkiralista, cena_po_satu_zat, cena_dnevna_zat, vr_ogr_zat) VALUES (2, 25, 100, '1 sat');
INSERT INTO parkingServis.zatvoreno (id_parkiralista, cena_po_satu_zat, cena_dnevna_zat, vr_ogr_zat) VALUES (3, 30, 90, '2 sata');
INSERT INTO parkingServis.zatvoreno (id_parkiralista, cena_po_satu_zat, cena_dnevna_zat, vr_ogr_zat) VALUES (4, 55, 170, '3 sata');
INSERT INTO parkingServis.zatvoreno (id_parkiralista, cena_po_satu_zat, cena_dnevna_zat, vr_ogr_zat) VALUES (5, 20, 100, '1 sat');
INSERT INTO parkingServis.zatvoreno (id_parkiralista, cena_po_satu_zat, cena_dnevna_zat, vr_ogr_zat) VALUES (6, 25, 100, '3 sat');
INSERT INTO parkingServis.zatvoreno (id_parkiralista, cena_po_satu_zat, cena_dnevna_zat, vr_ogr_zat) VALUES (7, 30, 90, '2 sata');
INSERT INTO parkingServis.zatvoreno (id_parkiralista, cena_po_satu_zat, cena_dnevna_zat, vr_ogr_zat) VALUES (8, 55, 170, '1 sata');
INSERT INTO parkingServis.zatvoreno (id_parkiralista, cena_po_satu_zat, cena_dnevna_zat, vr_ogr_zat) VALUES (9, 20, 100, '1 sat');
INSERT INTO parkingServis.zatvoreno (id_parkiralista, cena_po_satu_zat, cena_dnevna_zat, vr_ogr_zat) VALUES (11, 20, 100, '1 sat');
--PERIOD
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('06/02/2020', '06/09/2020', 'Exit festival');
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('03/22/2020', '03/25/2020', 'Sajam obrazovanja');
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('08/01/2020', '09/01/2020', 'Poljoprivredni sajam');
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('09/02/2020', '09/09/2020', 'Sajam knjiga');
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('11/02/2020', '11/05/2020', 'Sajam zavicaja');
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('06/18/2020', '06/25/2020', 'Cinema city');
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('08/10/2020', '10/10/2020', 'Sajam turizma');
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('09/10/2020', '10/10/2020', 'Sajam sporta');
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('08/10/2020', '10/10/2020', 'Sajam vocarstva');
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('09/10/2020', '10/10/2020', 'Sajam grncarstva');
INSERT INTO parkingServis.period (period_datum_od, period_datum_do, naziv_dogadjaja)
VALUES ('09/10/2020', '10/19/2020', 'Zmajeve igre');



--REDNI BROJ ZAPOSLENJA
INSERT INTO parkingServis.rbr_zaposlenja VALUES (1);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (2);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (3);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (4);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (5);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (6);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (7);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (8);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (9);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (10);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (11);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (12);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (13);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (14);
INSERT INTO parkingServis.rbr_zaposlenja VALUES (15);


--SLUZBA PARKING SERVISA
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (1, 'Sluzba za kontrolu parkiralista', 200);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (2, 'Sluzba za pravne poslove', 50);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (3, 'Sluzba za komercijalne poslove', 70);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (4, 'Sluzba za internu kontrolu', 20);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (5, 'Sluzba za signalizaciju i javno osvetljenje', 70);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (6, 'Sluzba za ekonomsko-finansijske poslove', 70);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (7, 'Sluzba za investicije i izgradnju', 30);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (8, 'Sluzba za garaze i parkiralista', 90);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (9, 'Sluzba odrzavanja', 20);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (10, 'Sluzba za eksploataciju vozila', 70);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (6, 'Sluzba za zajednicke poslove', 70);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (7, 'Sluzba za automatiku', 30);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (8, 'Sluzba za informatiku', 90);
INSERT INTO parkingServis.sluzba_parking_servisa (id_grada, naziv_sluzbe, br_zaposlenih) VALUES (9, 'Sluzba za ljudske resurse', 20);


--ZAPOSLENI
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (10129988, 'Drasko', 'Draskovic', '060053543', 50000, 'Cenejska 43');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (12345678, 'Ana', 'Milinkovic', '060111543', 70000, 'Omladinska 11');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (87654321, 'Marija', 'Peric', '06432543', 35000, 'Jadranska 55');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (19856498, 'Milan', 'Nedic', '060053519', 29000, 'Stevana Goldmana 9');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (85859400, 'Pavle', 'Savic', '06005865', 100000, 'Profesora Grcica 3');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (13339988, 'Dejan', 'Djukic', '063353543', 60000, 'Vase Spajica 53');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (12544568, 'Nevena', 'Rakic', '060151543', 50000, 'Zadruzna 81');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (87699321, 'Dejana', 'Coskov', '06432587', 45000, 'Eme Goldman 55');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (19608498, 'Jovan', 'Glintic', '060654519', 67000, 'Kisacka 9');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (85877400, 'Filip', 'Stevic', '06034265', 100000, 'Jovana Subotica 3');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (87651111, 'Nikola', 'Tesla', '06003359', 19000, 'Jovana Solic 19');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (19852222, 'Sara', 'Vucurevic', '06333865', 10000, 'Cenejska 3');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (85853333, 'Marija', 'Dzida', '063333543', 60000, 'Vase Papic 13');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (13334444, 'Nevena', 'Rakac', '061151543', 50000, 'Zadruzna 21');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (12545555, 'Dunja', 'Zivanac', '06436787', 45000, 'Ene Goldman 45');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (87696666, 'Sanja', 'Glintic', '061444719', 16000, 'Mileve Maric 22');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (87697777, 'Natasa', 'Licina', '06034277', 100000, 'Futoska 37');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (87698888, 'Stefana', 'Stevic', '06135565', 100000, 'Jovana Subotica 33');
INSERT INTO parkingServis.zaposleni (mbr, ime_zap, prezime_zap, kontakt_zap, plata,  adresa_zap) VALUES (87699999, 'Nina', 'Malinovic', '06135760', 60000, 'Jovake Tomic 83');



--IMA
INSERT INTO parkingServis.ima (id_parkiralista, id_period) VALUES (10, 10);
INSERT INTO parkingServis.ima (id_parkiralista, id_period) VALUES (2, 2);
INSERT INTO parkingServis.ima (id_parkiralista, id_period) VALUES (3, 3);
INSERT INTO parkingServis.ima (id_parkiralista, id_period) VALUES (4, 4);
INSERT INTO parkingServis.ima (id_parkiralista, id_period) VALUES (5, 5);
INSERT INTO parkingServis.ima (id_parkiralista, id_period) VALUES (6, 6);
INSERT INTO parkingServis.ima (id_parkiralista, id_period) VALUES (7, 9);
INSERT INTO parkingServis.ima (id_parkiralista, id_period) VALUES (8, 8);
INSERT INTO parkingServis.ima (id_parkiralista, id_period) VALUES (9, 7);
INSERT INTO parkingServis.ima (id_parkiralista, id_period) VALUES (11, 7);

--PRIPADA
INSERT INTO parkingServis.pripada
VALUES (10, 2, 3, 1, 50, 1234 , 45);
INSERT INTO parkingServis.pripada
VALUES (3, 2, 1, 1, 50, 1634 , 45);
INSERT INTO parkingServis.pripada
VALUES (2, 1, 3, 0, null, null , null);
INSERT INTO parkingServis.pripada
VALUES (4, 5, 6, 0, null, null , null);
INSERT INTO parkingServis.pripada
VALUES (6, 5, 4, 1, 110, 1934 , 88);
INSERT INTO parkingServis.pripada
VALUES (5, 4, 6, 1, 50, 1008 , 45);
INSERT INTO parkingServis.pripada
VALUES (7, 10, 9, 1, 50, 1621 , 45);
INSERT INTO parkingServis.pripada
VALUES (8, 9, 7, 0, null, null , null);
INSERT INTO parkingServis.pripada
VALUES (9, 8, 10, 0, null, null , null);
INSERT INTO parkingServis.pripada
VALUES (11, 5, 4, 1, 110, 1934 , 88);


--ZAPOSLJAVA
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (1, 1, 10129988, 1, '02/11/2019', '03/06/2019');
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (1, 1, 12345678, 1, '02/11/2019', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (2, 2, 87654321, 2, '09/14/2020', '12/16/2020');
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (2, 2, 87651111, 2, '01/01/2020', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (4, 4, 19856498, 4, '03/19/2020', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (4, 4, 19852222, 1, '03/02/2020', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (5, 5, 85859400, 5, '04/29/2020', '08/19/2020');
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (5, 5, 85853333, 5, '04/21/2020', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (7, 7, 13339988, 6, '2019/11/11', '2019/12/11');
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (7, 7, 13334444, 1, '2019/12/11', '2019/12/12');
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (9, 9, 12544568, 7, '2019/02/11', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (9, 9, 12545555, 2, '2019/02/16', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (10, 10, 87696666, 8, '2020/04/01', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (10, 10, 87699321, 8, '2020/09/14', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (8, 8, 87697777, 3, '2020/03/14', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (8, 8, 19608498, 8, '2020/03/19', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (3, 3, 87699321, 2, '2020/03/14', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (3, 3, 87698888, 2, '2020/1/14', null);
INSERT INTO parkingServis.zaposljava (id_sluzbe, id_grada, mbr, rbr_zaposlenja, datum_od, datum_do) 
VALUES (1, 1, 87699999, 1, '2019/02/02', null);


--U_OKVIRU
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (1, 1, '2 sata', '6578', 20, 15);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (2, 2, '3 sata', '9999', 30, 25);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (1, 3, '2 sata', '3457', 20, 15);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (3, 2, '1 sat', '1285', 60, 55);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (9, 2, '2 sata', '2222',  25, 20);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (4, 4, '3 sata', '6578', 20, 15);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (7, 7, '3 sata', '9999', 30, 25);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (8, 9, '1 sata', '3457', 20, 15);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (6, 8, '1 sat', '1285', 60, 55);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (5, 6, '2 sata', '2222',  25, 20);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (2, 3, '3 sata', '5444', 30, 25);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (3, 5, '1 sata', '5666', 20, 15);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (4, 2, '1 sat', '5888', 60, 55);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (5, 4, '2 sata', '5999',  25, 20);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (6, 5, '3 sata', '5678', 20, 15);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (7, 3, '3 sata', '5566', 30, 25);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (10, 5, '2 sata', '5121',  25, 20);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (9, 8, '1 sat', '5898', 60, 55);
INSERT INTO parkingServis.u_okviru (id_grada, id_zone, ogranicenje_parkiranja, broj_za_uplatu, cenaaposatu, cenaaposatusapopustom) 
VALUES (8, 1, '2 sata', '5613',  25, 20);