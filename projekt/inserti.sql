--users
insert all 
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (1,'Pero','Peric','pero_p','15-05-2001','pass123',NULL,'pero.peric@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (2,'Juraj','Juric','jure','15-05-2010','pass123','1-7-2020','juraj.juric@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (3,'Krunoslav','Vrkljan','kruno','10-08-1999','pass123','1-8-2020','krunoslav.vrkljan@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (4,'Lovro','Mutic','muto','15-05-2005','pass123','1-5-2020','lovro.mutic@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (5,'Leon','Maric','Lekac','15-05-2001','pass123',NULL,'leon.maric@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (6,'Tihomir','Buka','Bukac','10-07-1988','pass123','1-6-2020','tihomir.buka@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (7,'Luka','Kovac','Kova','10-08-1999','pass123',NULL,'luka.kovac@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (8,'Rajko','Luric','Lure','10-10-2005','pass123','01-10-2020','rajko.luric@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (9,'Jan','Dujmovic','Dujma','10-03-1988','pass123',NULL,'jan.dujmovic@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (10,'Pero','Peric','rope','15-08-2010','pass123','01-01-2021','peric.pero@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (11,'Luka','Peric','luka','15-05-2002','pass123','03-09-2020','luka.peric@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (12,'Marko','Sebetic','Seba','10-05-2003','pass123',NULL,'marko.sebetic@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (13,'Iva','Ratkovic','iva','15-05-2001','pass123',NULL,'iva.ratkovic@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (14,'Roko','Jedvaj','jedva','19-03-2009','pass123','01-08-2020','roko.jedvaj@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (15,'Ivan','Rojs','Rojs','10-04-2003','pass123','01-07-2020','iva.rojs@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (16,'Marko','Sebetic','Sebaj','15-05-2001','pass123',NULL,'sebetic.marko@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (17,'Ivo','Sivo','Sivi','15-05-2001','pass123','01-07-2020','ivo.sivo@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (18,'Lana','Tiho','Tiha','15-05-2005','pass123',NULL,'lana.tiho@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (19,'Dejan','Kotiga','Kotiga','15-05-1980','pass123','01-12-2020','dejan.kotiga@gmail.com')
into users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) VALUES (20,'Dejan','Kotiga','Kotiga','15-05-1985','pass123','13-10-2020','kotiga.dejan@gmail.com')
SELECT * FROM dual;
COMMIT;
--friend_list

insert all
into friend_list(user_id_1,user_id_2) VALUES (3,9)
into friend_list(user_id_1,user_id_2) VALUES (10,17)
into friend_list(user_id_1,user_id_2) VALUES (19,13)
into friend_list(user_id_1,user_id_2) VALUES (14,2)
into friend_list(user_id_1,user_id_2) VALUES (4,6)
into friend_list(user_id_1,user_id_2) VALUES (19,17)
into friend_list(user_id_1,user_id_2) VALUES (12,17)
into friend_list(user_id_1,user_id_2) VALUES (1,12)
into friend_list(user_id_1,user_id_2) VALUES (17,18)
into friend_list(user_id_1,user_id_2) VALUES (3,10)
into friend_list(user_id_1,user_id_2) VALUES (1,7)
into friend_list(user_id_1,user_id_2) VALUES (3,13)
into friend_list(user_id_1,user_id_2) VALUES (5,4)
into friend_list(user_id_1,user_id_2) VALUES (18,19)
into friend_list(user_id_1,user_id_2) VALUES (11,9)
into friend_list(user_id_1,user_id_2) VALUES (7,13)
into friend_list(user_id_1,user_id_2) VALUES (12,18)
into friend_list(user_id_1,user_id_2) VALUES (13,19)
into friend_list(user_id_1,user_id_2) VALUES (1,5)
into friend_list(user_id_1,user_id_2) VALUES (15,6)
into friend_list(user_id_1,user_id_2) VALUES (3,6)
into friend_list(user_id_1,user_id_2) VALUES (9,18)
into friend_list(user_id_1,user_id_2) VALUES (12,2)
into friend_list(user_id_1,user_id_2) VALUES (2,13)
into friend_list(user_id_1,user_id_2) VALUES (16,13)
into friend_list(user_id_1,user_id_2) VALUES (3,14)
into friend_list(user_id_1,user_id_2) VALUES (1,3)
into friend_list(user_id_1,user_id_2) VALUES (11,6)
into friend_list(user_id_1,user_id_2) VALUES (6,10)
into friend_list(user_id_1,user_id_2) VALUES (20,3)
into friend_list(user_id_1,user_id_2) VALUES (4,19)
into friend_list(user_id_1,user_id_2) VALUES (15,1)
into friend_list(user_id_1,user_id_2) VALUES (16,17)
into friend_list(user_id_1,user_id_2) VALUES (20,1)
into friend_list(user_id_1,user_id_2) VALUES (9,1)
into friend_list(user_id_1,user_id_2) VALUES (18,15)
into friend_list(user_id_1,user_id_2) VALUES (7,12)
into friend_list(user_id_1,user_id_2) VALUES (1,11)
into friend_list(user_id_1,user_id_2) VALUES (15,16)
into friend_list(user_id_1,user_id_2) VALUES (11,20)
SELECT * FROM dual;
COMMIT;

--streaming sites
insert all 
into streaming_sites (stream_site_id,name) VALUES (1,'HBO GO')
into streaming_sites (stream_site_id,name) VALUES (2,'Netflix')
into streaming_sites (stream_site_id,name) VALUES (3,'Prim Video')
into streaming_sites (stream_site_id,name) VALUES (4,'Tennis TV')
SELECT * FROM dual;
COMMIT;

--meberships
insert all
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,3,'15-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,8,'10-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (1,18,'15-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,7,'11-06-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (4,1,'31-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (3,7,'11-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,13,'13-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (4,13,'13-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (1,1,'13-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (1,19,'13-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (4,10,'13-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (1,8,'13-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (4,15,'13-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (1,10,'05-05-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,9,'13-06-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,10,'13-05-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (3,16,'11-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,17,'07-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,2,'05-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (1,5,'14-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (4,4,'30-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (3,5,'25-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (4,19,'15-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (3,20,'11-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (3,9,'29-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,15,'11-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (3,15,'19-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (1,16,'14-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,11,'15-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (3,6,'15-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (2,19,'13-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (1,17,'13-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (4,5,'20-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (3,17,'14-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (4,9,'17-08-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (3,14,'10-07-2020')
into mebership (stream_site_id, user_id,expiration_date) VALUES (1,20,'15-07-2020')
SELECT * FROM dual;
COMMIT;

--bank cards
insert all

into bank_cards (card_id, user_id,card_number,year_of_expiration,month_of_expiration,type_of_card)   VALUES (1,2,872141675250,23,9,'diners') 
into bank_cards (card_id, user_id,card_number,year_of_expiration,month_of_expiration,type_of_card)   VALUES (2,4,444608580763,23,5,'diners') 
into bank_cards (card_id, user_id,card_number,year_of_expiration,month_of_expiration,type_of_card)   VALUES (3,6,382054749960,23,8,'mastercard') 
into bank_cards (card_id, user_id,card_number,year_of_expiration,month_of_expiration,type_of_card)   VALUES (4,8,962700265660,24,3,'visa') 
into bank_cards (card_id, user_id,card_number,year_of_expiration,month_of_expiration,type_of_card)   VALUES (5,10,774977039543,23,4,'maestro') 
into bank_cards (card_id, user_id,card_number,year_of_expiration,month_of_expiration,type_of_card)   VALUES (6,12,674553103403,24,4,'mastercard') 
into bank_cards (card_id, user_id,card_number,year_of_expiration,month_of_expiration,type_of_card)   VALUES (7,14,973763858183,23,4,'visa') 
into bank_cards (card_id, user_id,card_number,year_of_expiration,month_of_expiration,type_of_card)   VALUES (8,16,283221203765,23,6,'mastercard') 
into bank_cards (card_id, user_id,card_number,year_of_expiration,month_of_expiration,type_of_card)   VALUES (9,18,731968665191,24,7,'maestro') 
into bank_cards (card_id, user_id,card_number,year_of_expiration,month_of_expiration,type_of_card)   VALUES (10,20,626591482081,22,3,'mastercard') 
SELECT * FROM dual;
COMMIT;

--comunities
insert all
into communities(community_id,name,description) VALUES (1 , 'FIFA 20 fun club', 'Club for every fifa fan') 
into communities(community_id,name,description) VALUES (2, 'Rockstar games club', NULL)
into communities(community_id,name,description) VALUES (3, 'Speedrun gamers', 'Speedrun game and compete with others')
into communities(community_id,name,description) VALUES (4, 'Best games on PS4', NULL)
into communities(community_id,name,description) VALUES (5, 'Speedrun gamers', 'Speedrun game and compete with others')
into communities(community_id,name,description) VALUES (6, 'Best horror games', NULL)
SELECT * FROM dual;
COMMIT;

--enrollment in comunities

insert all 
into enrollment(community_id,user_id) VALUES (1,1)
into enrollment(community_id,user_id) VALUES (2,10)
into enrollment(community_id,user_id) VALUES (3,13)
into enrollment(community_id,user_id) VALUES (4,12)
into enrollment(community_id,user_id) VALUES (5,1)
into enrollment(community_id,user_id) VALUES (6,10)
into enrollment(community_id,user_id) VALUES (1,2)
into enrollment(community_id,user_id) VALUES (1,5)
into enrollment(community_id,user_id) VALUES (2,7)
into enrollment(community_id,user_id) VALUES (2,13)
into enrollment(community_id,user_id) VALUES (3,8)
into enrollment(community_id,user_id) VALUES (4,10)
into enrollment(community_id,user_id) VALUES (4,5)
into enrollment(community_id,user_id) VALUES (4,20)
into enrollment(community_id,user_id) VALUES (5,10)
into enrollment(community_id,user_id) VALUES (6,11)

SELECT * FROM dual;
COMMIT;

insert all 
into games( game_id,name,age_restriction,cijena) VALUES (1,'FIFA 20',3,500)
into games( game_id,name,age_restriction,cijena) VALUES (2,'God of war',18,150)
into games( game_id,name,age_restriction,cijena) VALUES (3,'Last of us ',18,150)
into games( game_id,name,age_restriction,cijena) VALUES (4,'Last of us part II',18,500)
into games( game_id,name,age_restriction,cijena) VALUES (5,'Sims 3 ',3,200)
into games( game_id,name,age_restriction,cijena) VALUES (6,'Spyro ',3,300)
into games( game_id,name,age_restriction,cijena) VALUES (7,'GTA V ',18,250)
into games( game_id,name,age_restriction,cijena) VALUES (8,'Dark souls 3',18,250)
into games( game_id,name,age_restriction,cijena) VALUES (9,'Red dead redemtion',18,500)
into games( game_id,name,age_restriction,cijena) VALUES (10,'Spider-man ',18,300)
into games( game_id,name,age_restriction,cijena) VALUES (11,'The witcher III - wild hunt ',18,200)
into games( game_id,name,age_restriction,cijena) VALUES (12,'Street Fighter V ',15,150)
into games( game_id,name,age_restriction,cijena) VALUES (13,'Far cry primal ',18,300)
into games( game_id,name,age_restriction,cijena) VALUES (14,'Far cry V ',18,300)
into games( game_id,name,age_restriction,cijena) VALUES (15,'assassins creed odyssey' ,18,300)
into games( game_id,name,age_restriction,cijena) VALUES (16,'Battlefield 4' ,18,400)
into games( game_id,name,age_restriction,cijena) VALUES (17,'Need for speed Rivals' ,7,300)
into games( game_id,name,age_restriction,cijena) VALUES (18,'Uncharted 4: A Thiefs End' ,18,100)

SELECT * FROM dual;
COMMIT;

--Trophies

insert all 
into trophies(trophy_id,game_id,description) VALUES(1,1,'Score 20 goals')
into trophies(trophy_id,game_id,description) VALUES(2,1,'Play 10 games')
into trophies(trophy_id,game_id,description) VALUES(3,2,'Complete game')
into trophies(trophy_id,game_id,description) VALUES(4,2,'Complete game on highest dificulty')
into trophies(trophy_id,game_id,description) VALUES(5,3,'Complete game on highest dificulty')
into trophies(trophy_id,game_id,description) VALUES(6,4,'Complete game on highest dificulty')
into trophies(trophy_id,game_id,description) VALUES(7,6,'Complete all 3 games')
into trophies(trophy_id,game_id,description) VALUES(8,3,'Defeat first boss')
into trophies(trophy_id,game_id,description) VALUES(9,10,'Complete storyline')
into trophies(trophy_id,game_id,description) VALUES(10,10,'Collect all the items')
into trophies(trophy_id,game_id,description) VALUES(11,12,'Win online game')
into trophies(trophy_id,game_id,description) VALUES(12,16,'Complete game')
into trophies(trophy_id,game_id,description) VALUES(13,17,'Drive 200 km/h')
into trophies(trophy_id,game_id,description) VALUES(14,17,'Drive porche gt3')
into trophies(trophy_id,game_id,description) VALUES(15,18,'Play online')
into trophies(trophy_id,game_id,description) VALUES(16,18,'Complete storyline')
Select * from dual;
COMMIT;

--acquired_trophies
insert all 
into acquired_trophies(user_id,trophy_id) VALUES (1,13) 
into acquired_trophies(user_id,trophy_id) VALUES (15,16) 
into acquired_trophies(user_id,trophy_id) VALUES (16,1) 
into acquired_trophies(user_id,trophy_id) VALUES (3,4) 
into acquired_trophies(user_id,trophy_id) VALUES (10,11) 
into acquired_trophies(user_id,trophy_id) VALUES (5,1) 
into acquired_trophies(user_id,trophy_id) VALUES (10,5) 
into acquired_trophies(user_id,trophy_id) VALUES (11,5) 
into acquired_trophies(user_id,trophy_id) VALUES (5,3) 
into acquired_trophies(user_id,trophy_id) VALUES (18,14) 
into acquired_trophies(user_id,trophy_id) VALUES (13,6) 
into acquired_trophies(user_id,trophy_id) VALUES (2,12) 
into acquired_trophies(user_id,trophy_id) VALUES (15,7) 
into acquired_trophies(user_id,trophy_id) VALUES (19,12) 
into acquired_trophies(user_id,trophy_id) VALUES (14,8) 
into acquired_trophies(user_id,trophy_id) VALUES (14,1) 
into acquired_trophies(user_id,trophy_id) VALUES (17,12) 
into acquired_trophies(user_id,trophy_id) VALUES (14,10) 
into acquired_trophies(user_id,trophy_id) VALUES (18,12) 
into acquired_trophies(user_id,trophy_id) VALUES (19,14) 
Select * from dual;
COMMIT;


--events
insert all
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (1,'10-07-2020','22:00',2,'Speedrun Tournament')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (2,'11-08-2020','10:00',1,'World championship')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (3,'18-08-2020','15:00',8,'Team event')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (4,'01-09-2020','10:00',1,'Croatian championship')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (5,'10-10-2020','20:00',12,'Tourrnament')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (6,'13-09-2020','19:00',17,'Team race')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (7,'15-07-2020','13:00',6,'Speedrun Tournament of first game')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (8,'11-08-2020','10:00',17,'World championship')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (9,'17-07-2020','10:00',11,'Speedrun')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (10,'15-07-2020','16:00',6,'Speedrun Tournament of second game')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (11,'15-07-2020','19:00',6,'Speedrun Tournament of third game')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (12,'11-08-2020','15:00',7,'Playing for fun')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (13,'13-09-2020','16:00',7,'Heists')
into events(event_id,date_of_event,time_of_event,game_id,name) VALUES (14,'10-09-2020','18:00',3,'PvP Tournament')
Select * from dual;
COMMIT;

--event_enrollment
insert all
into event_enrollment(event_id,user_id) VALUES (5,5) 
into event_enrollment(event_id,user_id) VALUES (7,5) 
into event_enrollment(event_id,user_id) VALUES (3,9) 
into event_enrollment(event_id,user_id) VALUES (14,16) 
into event_enrollment(event_id,user_id) VALUES (2,4) 
into event_enrollment(event_id,user_id) VALUES (1,9) 
into event_enrollment(event_id,user_id) VALUES (9,12) 
into event_enrollment(event_id,user_id) VALUES (8,20) 
into event_enrollment(event_id,user_id) VALUES (4,15) 
into event_enrollment(event_id,user_id) VALUES (5,3) 
into event_enrollment(event_id,user_id) VALUES (4,11) 
into event_enrollment(event_id,user_id) VALUES (12,10) 
into event_enrollment(event_id,user_id) VALUES (10,16) 
into event_enrollment(event_id,user_id) VALUES (9,13) 
into event_enrollment(event_id,user_id) VALUES (1,11) 
into event_enrollment(event_id,user_id) VALUES (12,20) 
into event_enrollment(event_id,user_id) VALUES (9,18) 
into event_enrollment(event_id,user_id) VALUES (1,19) 
into event_enrollment(event_id,user_id) VALUES (12,8) 
into event_enrollment(event_id,user_id) VALUES (7,19) 
Select * from dual;
COMMIT;

--transaction
insert all 
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('08-05-2020',2,1,1)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('08-03-2020',2,2,1)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('10-10-2019',4,1,2)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('01-01-2020',4,3,2)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('03-07-2019',4,6,2)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('06-09-2019',4,10,2)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('10-10-2019',4,9,2)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('10-08-2019',6,2,3)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('13-03-2019',6,3,3)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('15-11-2019',6,6,3)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('13-07-2019',8,6,4)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('11-11-2018',8,2,4)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('23-10-2019',8,10,4)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('13-07-2019',10,11,5)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('11-11-2018',10,13,5)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('23-10-2019',10,8,5)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('13-07-2019',12,13,6)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('11-11-2018',12,5,6)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('23-10-2019',12,8,6)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('13-07-2019',14,16,7)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('11-11-2018',14,17,7)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('23-10-2019',14,18,7)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('13-07-2019',16,14,8)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('11-11-2018',16,13,8)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('23-10-2019',16,15,8)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('13-07-2019',18,10,9)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('11-11-2018',18,1,9)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('23-10-2019',18,9,9)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('13-07-2019',20,3,10)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('11-11-2018',20,5,10)
into transaction(date_of_transaction,user_id,game_id,card_id) VALUES('23-10-2019',20,8,10)
Select * from dual;
COMMIT;