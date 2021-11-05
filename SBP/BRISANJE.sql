--brisanje stranih kljuceva
--u okviru
alter table parkingServis.u_okviru drop constraint fk_u_okviru_grad;
alter table parkingServis.u_okviru drop constraint fk_u_okviru_zona;
alter table parkingServis.u_okviru drop constraint pk_u_okviru;
alter table parkingServis.u_okviru drop constraint ch_cenaaposatu;
--zaposljava
alter table parkingServis.zaposljava drop constraint fk_zaposljava_sluzba_parking_servisa;
alter table parkingServis.zaposljava drop constraint fk_zaposljava_zaposleni;
alter table parkingServis.zaposljava drop constraint fk_zaposljava_rbr_zaposlenja;
alter table parkingServis.zaposljava drop constraint pk_zaposljava;
alter table parkingServis.zaposljava drop constraint ch_datum_od_datum_do;
--pripadaa
alter table parkingServis.pripada drop constraint fk_pripada_parkiraliste;
alter table parkingServis.pripada drop constraint fk_pripada_grad;
alter table parkingServis.pripada drop constraint fk_pripada_zona;
alter table parkingServis.pripada drop constraint pk_pripada;
alter table parkingServis.pripada drop constraint ch_pripada_dnevna_vazi;
--ima
alter table parkingServis.ima drop constraint fk_ima_parkiraliste;
alter table parkingServis.ima drop constraint fk_ima_period;
alter table parkingServis.ima drop constraint pk_ima;
--zaposleni
alter table parkingServis.zaposleni drop constraint pk_zaposleni;
alter table parkingServis.zaposleni drop constraint ch_mbr;
alter table parkingServis.zaposleni drop constraint DFT_mbr;
alter table parkingServis.zaposleni drop constraint uq_kontakt_zap;
--sluzba parking servisa
alter table parkingServis.sluzba_parking_servisa drop constraint fk_sluzba_parking_servisa_grad;
alter table parkingServis.sluzba_parking_servisa drop constraint pk_sluzba_parking_servisa;
alter table parkingServis.sluzba_parking_servisa drop constraint ch_br_zaposlenih;
alter table parkingServis.sluzba_parking_servisa drop constraint DFT_id_sluzbe;
--redni broj zaposlenja
alter table parkingServis.rbr_zaposlenja drop constraint pk_rbr_zaposlenja;
--period
alter table parkingServis.period drop constraint ch_period_datum_od_period_datum_do;
alter table parkingServis.period drop constraint pk_period;
alter table parkingServis.period drop constraint DFT_id_period;
--zatvoreno
alter table parkingServis.zatvoreno drop constraint fk_zatvoreno_parkiraliste;
alter table parkingServis.zatvoreno drop constraint pk_zatvoreno;
--privremeno
alter table parkingServis.privremeno drop constraint ch_cena_privremeno;
alter table parkingServis.privremeno drop constraint fk_privremeno_parkiraliste;
alter table parkingServis.privremeno drop constraint pk_privremeno;
alter table parkingServis.privremeno drop constraint uq_br_za_uplatu;
--otvoreno
alter table parkingServis.otvoreno drop constraint fk_otvoreno_parkiraliste;
alter table parkingServis.otvoreno drop constraint pk_otvoreno;
--parkiraliste
alter table parkingServis.parkiraliste drop constraint pk_parkiraliste;
alter table parkingServis.parkiraliste drop constraint ch_br_ukupno_parking_mesta;
alter table parkingServis.parkiraliste drop constraint ch_br_invalidskih_parking_mesta;
alter table parkingServis.parkiraliste drop constraint ch_br_taxi_parking_mesta;
alter table parkingServis.parkiraliste drop constraint fk_parkiraliste_se_nalazi;
alter table parkingServis.parkiraliste drop constraint DFT_id_parkiralista;
--se nalazi
alter table parkingServis.se_nalazi drop constraint fk_se_nalazi_ulica;
alter table parkingServis.se_nalazi drop constraint fk_se_nalazi_oblast;
alter table parkingServis.se_nalazi drop constraint pk_se_nalazi;
--ulica
alter table parkingServis.ulica drop constraint pk_ulica;
alter table parkingServis.ulica drop constraint DFT_id_ulice;
--oblast
alter table parkingServis.oblast drop constraint fk_oblast_grad;
alter table parkingServis.oblast drop constraint pk_oblast;
alter table parkingServis.oblast drop constraint DFT_id_oblasti;
--dnevna karta
alter table parkingServis.dnevna_kartaa drop constraint pk_id_dnevne_karte;
alter table parkingServis.dnevna_kartaa drop constraint fk_dnevna_kartaa_zona;
alter table parkingServis.dnevna_kartaa drop constraint fk_dnevna_kartaa_grad;
alter table parkingServis.dnevna_kartaa drop constraint DFT_id_dnevne_karte;
--grad
alter table parkingServis.grad drop constraint pk_grad;
alter table parkingServis.grad drop constraint ch_broj_stan;
alter table parkingServis.grad drop constraint ch_broj_reg_vozila;
alter table parkingServis.grad drop constraint DFT_id_grada;
alter table parkingServis.grad drop constraint UQ_naziv_grada;
--zona
alter table parkingServis.zona drop constraint pk_id_zone;
alter table parkingServis.zona drop constraint DFT_id_zone;
--tabele
drop table parkingServis.u_okviru;
drop table parkingServis.zaposljava;
drop table parkingServis.pripada;
drop table parkingServis.ima;
drop table parkingServis.zaposleni;
drop table parkingServis.sluzba_parking_servisa;
drop table parkingServis.rbr_zaposlenja;
drop table parkingServis.period;
drop table parkingServis.zatvoreno;
drop table parkingServis.privremeno;
drop table parkingServis.otvoreno;
drop table parkingServis.parkiraliste;
drop table parkingServis.se_nalazi;
drop table parkingServis.ulica;
drop table parkingServis.oblast;
drop table parkingServis.dnevna_kartaa;
drop table parkingServis.grad;
drop table parkingServis.zona;
--sekvence
drop sequence parkingServis.zaposleniSeq
drop sequence parkingServis.sluzbaSeq
drop sequence parkingServis.periodSeq
drop sequence parkingServis.parkiralisteSeq
drop sequence parkingServis.ulicaSeq
drop sequence parkingServis.oblastSeq
drop sequence parkingServis.dnevna_kartaaSeq
drop sequence parkingServis.gradSeq
drop sequence parkingServis.zonaSeq

