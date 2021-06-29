DROP TABLE transaction;
DROP TABLE event_enrollment;
DROP TABLE events;
DROP TABLE acquired_trophies;
DROP TABLE trophies;
DROP TABLE games;
DROP TABLE enrollment;
DROP TABLE communities;
DROP TABLE bank_cards;
DROP TABLE mebership;
DROP TABLE streaming_sites;
DROP TABLE friend_list;
DROP TABLE users;



CREATE TABLE users (
    user_id INT NOT NULL ,
    FirstName VARCHAR(15) NOT NULL,
    LastName VARCHAR(15) NOT NULL,
    user_name VARCHAR(30) NOT NULL,
    date_of_birth_day DATE NOT NULL,
    password VARCHAR(30) NOT NULL,
    datum_isteka_ps_plus DATE,
    email VARCHAR(45) NOT NULL  ,
    CONSTRAINT PK_users PRIMARY KEY (user_id),
    CONSTRAINT UC_email UNIQUE(email)
);

CREATE TABLE friend_list(
    user_id_1 int NOT NULL CONSTRAINT fk_user_id_1 REFERENCES users(user_id),
    user_id_2 int NOT NULL CONSTRAINT fk_user_id_2 REFERENCES users(user_id),
    CONSTRAINT frn_list_CHK CHECK(user_id_1 <> user_id_2),
    CONSTRAINT PK_friend_list PRIMARY KEY (user_id_1,user_id_2)
);

CREATE TABLE streaming_sites(
    stream_site_id int NOT NULL PRIMARY KEY,
    name VARCHAR(15) NOT NULL
);

CREATE TABLE mebership(
    stream_site_id int NOT NULL CONSTRAINT fk_stream_site_id REFERENCES streaming_sites(stream_site_id),
    user_id int NOT NULL CONSTRAINT fk_user_id REFERENCES users(user_id),
    expiration_date DATE NOT NULL,
    CONSTRAINT PK_mebership PRIMARY KEY (stream_site_id,user_id)
);

CREATE TABLE bank_cards(
    card_id int NOT NULL PRIMARY KEY ,
    user_id int NOT NULL CONSTRAINT fk_user_id_b REFERENCES users(user_id),
    card_number NUMBER(12) NOT NULL, 
    year_of_expiration VARCHAR(2) NOT NULL,
    month_of_expiration VARCHAR(2) NOT NULL,
    type_of_card VARCHAR(20) NOT NULL,
    CHECK(type_of_card in ('mastercard','maestro','visa','diners'))
);

CREATE TABLE communities(
    community_id int not null PRIMARY KEY ,
    name VARCHAR(30) not null,
    description VARCHAR (100)
);

CREATE TABLE enrollment(
    community_id int NOT NULL CONSTRAINT fk_community_id REFERENCES communities(community_id),
    user_id int NOT NULL CONSTRAINT fk_user_id_e REFERENCES users(user_id),
    CONSTRAINT PK_enrollment_c PRIMARY KEY (community_id,user_id)
);

CREATE TABLE games(
    game_id int NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    age_restriction INT NOT NULL,
    cijena INT NOT NULL
);

CREATE TABLE trophies(
    trophy_id int NOT NULL PRIMARY KEY,
    game_id int NOT NULL CONSTRAINT fk_game_id_t REFERENCES games(game_id),
    description VARCHAR(45) NOT NULL 
);

CREATE TABLE acquired_trophies(
    user_id int NOT NULL CONSTRAINT fk_user_id_t REFERENCES users(user_id),
    trophy_id int NOT NULL CONSTRAINT fk_trophies_id REFERENCES trophies(trophy_id),
    CONSTRAINT PK_acquired_trophies PRIMARY KEY (user_id,trophy_id)
);

CREATE TABLE events(
    event_id int NOT NULL PRIMARY KEY ,
    date_of_event DATE NOT NULL,
    time_of_event VARCHAR(5) NOT NULL,
    game_id int NOT NULL CONSTRAINT fk_game_id_e REFERENCES games(game_id),
    name VARCHAR (50) NOT NULL 
);

CREATE TABLE event_enrollment(
    event_id int NOT NULL CONSTRAINT fk_event_id REFERENCES events(event_id),
    user_id int NOT NULL CONSTRAINT fk_user_id_ev REFERENCES users(user_id),
    CONSTRAINT PK_event_enrollment PRIMARY KEY (user_id,event_id)
);

CREATE TABLE transaction (
    date_of_transaction DATE NOT NULL,
    user_id int NOT NULL CONSTRAINT fk_user_id_tr REFERENCES users(user_id),
    game_id int NOT NULL CONSTRAINT fk_game_id_tr REFERENCES games(game_id),
    card_id int NOT NULL CONSTRAINT fk_card_id REFERENCES bank_cards(card_id),
    CONSTRAINT PK_transaction PRIMARY KEY (user_id,game_id)
);


--Selects


--select friendlist
SELECT u.user_name FROM
    users u INNER JOIN friend_list f ON f.user_id_1 = u.user_id
    where user_id_2 = 1 
    UNION
    SELECT u.user_name FROM
    users u INNER JOIN friend_list f ON f.user_id_2 = u.user_id
    where user_id_1 = 1 ;

--broj igrica usera

SELECT u.email, COUNT(DISTINCT game_id) AS 'broj igara' FROM 
transaction t INNER JOIN users u USING (user_id)
GROUP BY u.email;

--user_nameovi korisnika koji imaju trofeje iz vise od jedne igrice
SELECT uk.user_name FROM
(SELECT u.user_name,u.email, COUNT(g.name) as broj_igara FROM 
games g INNER JOIN trophies t USING (game_id) 
INNER JOIN acquired_trophies at USING (trophy_id)
INNER JOIN users u USING (user_id) 
GROUP BY u.email,u.user_name) uk WHERE 
uk.broj_igara>1;

--valid stream site membership

SELECT u.user_name,ss.name FROM
mebership m INNER JOIN streaming_sites ss USING (stream_site_id)
INNER JOIN users u USING (user_id)
WHERE m.expiration_date > '03-07-2020'
ORDER BY u.user_name;

--valid PS-plus membership
SELECT user_name FROM users
WHERE datum_isteka_ps_plus > CURRENT_DATE
ORDER BY user_name;

SELECT g.name,COUNT(DISTINCT e.name) FROM 
events e INNER JOIN games g USING (game_id) 
GROUP BY g.name;

DROP SEQUENCE auto_increment;
CREATE SEQUENCE auto_increment
start with 21
increment by 1;

SET SERVEROUTPUT ON;

--procedura za insertanje novih usera


CREATE OR REPLACE PROCEDURE InsertNewUser(
    p_FirstName IN VARCHAR,
    p_LastName IN VARCHAR,
    p_user_name IN VARCHAR ,
    p_date_of_birth_day IN DATE ,
    p_password IN VARCHAR,
    p_email IN VARCHAR)
    AS
        BEGIN
            INSERT INTO users (user_id,FirstName,LastName,user_name,date_of_birth_day,password,datum_isteka_ps_plus,email) 
            VALUES (auto_increment.NEXTVAL,p_FirstName,p_LastName,p_user_name,p_date_of_birth_day,p_password,NULL,p_email);
            COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
        END InsertNewUser;
/

CALL InsertNewUser('Josipa','Pavletic','Josipa','01-01-2000','pass123','josipa.pavletic@gamil.com');
select * from users ;

--promjeniti description community-ja

CREATE OR REPLACE PROCEDURE UpdateCommunityName
(u_name IN VARCHAR,u_id IN INT) AS 
BEGIN
    UPDATE communities  SET description = u_name WHERE u_id = community_id ;
    COMMIT;
     EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
END UpdateCommunityName;
/
CALL UpdateCommunityName('Try the best games with us',4);

select * from communities where community_id=4;

--renew ps plus
CREATE OR REPLACE PROCEDURE ReNewPsPlus
(u_id IN INT)AS 
BEGIN
    UPDATE users  SET datum_isteka_ps_plus = CURRENT_DATE + 30 WHERE user_id = u_id ;
    COMMIT;
    EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
END ReNewPsPlus;
/

CALL ReNewPsPlus(1);




CREATE OR REPLACE PROCEDURE FriendList(
u_user_id IN INT) AS 
curs SYS_REFCURSOR;
u_user_pom VARCHAR(40);
u_ukupno INT;
BEGIN 
    SELECT COUNT (distinct uk.user_id_1) + COUNT (distinct ukp.user_id_2) into u_ukupno  FROM
    (SELECT user_id_1 FROM
    friend_list 
    where user_id_2 = u_user_id) uk ,
    (SELECT user_id_2 FROM
    friend_list 
    where user_id_1 = u_user_id) ukp;
    
    OPEN curs FOR
        SELECT u.user_name FROM
        users u INNER JOIN friend_list f ON f.user_id_1 = u.user_id
        where user_id_2 = u_user_id 
        UNION
        SELECT u.user_name FROM
        users u INNER JOIN friend_list f ON f.user_id_2 = u.user_id
        where user_id_1 = u_user_id;
        FOR i IN  1..u_ukupno LOOP 
            FETCH curs INTO u_user_pom;
        DBMS_OUTPUT.PUT_LINE('Prijatelj:' || u_user_pom);  
    END LOOP;
    
END FriendList;
/
CALL FriendList(1);



--trigeri

CREATE OR REPLACE TRIGGER User_added
AFTER UPDATE OF  datum_isteka_ps_plus ON users
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Your mebership has been renewed');
END;
/

CREATE OR REPLACE TRIGGER Popust_igre
BEFORE UPDATE of cijena ON games 
FOR EACH ROW WHEN (NEW.cijena< OLD.cijena * 0.75)
BEGIN
    DBMS_OUTPUT.PUT_LINE('Smanjenje cijena za vise od 25%');
END;
/
--indexi
DROP INDEX Prezimena;
CREATE INDEX Prezimena ON users(LastName);

Select * FROM USERS;

DROP INDEX PretragaTrofeja;
CREATE INDEX PretragaTrofeja ON trophies(game_id);

Select * FROM trophies;


    
