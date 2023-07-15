--список жанров
INSERT INTO 

    Genres(genre_id, title) 

VALUES
    ('1', 'D`N`B'),
    ('2', 'Raggae'),
    ('3', 'Metal'),
    ('4', 'Hip hop'),
    ('5', 'Minimal techno');

--список испольнителей
INSERT INTO 

    Musicians(musician_id, name)

VALUES
    ('1', 'Zardonic'),
    ('2', 'The Quemists'),
    ('3', 'Ini Kamoze'),
    ('4', 'Damian Marley'),
    ('5', 'Fear Factory'),
    ('6', 'Orbit Culture'),
    ('7', 'Mobb Deep'),
    ('8', 'Night Lovell'),
    ('9', 'RTTWLR'),
    ('10', 'Boris Brejcha');

SELECT * FROM genres;

--список альбомов
INSERT INTO 

    Albums(album_id, title, release_year)

VALUES
    ('1', 'Become', '2018-28-09'),
    ('2', 'Antihero', '2015-18-09'),
    ('3', 'Join the Q', '2009-02-02'),
    ('4', 'Spirit in the System', '2010-07-07'),
    ('5', 'Here comes the Hotstepper', '1995-11-01'),
    ('6', 'Tramplin` Down Babylon', '2016-06-04'),
    ('7', 'Make it bun dem', '2012-01-05'),
    ('8', 'Welcome to Jamrock', '2005-12-09'),
    ('9', 'Demanufacture', '1995-03-03'),
    ('10', 'Genexus', '2015-07-08'),
    ('11', 'Redfog', '2018-03-02'),
    ('12', 'Descent', '2023-08-05'),
    ('13', 'The Infamous', '1995-25-04'),
    ('14', 'Red Teenage melody', '2016-13-06'),
    ('15', 'Techno nun', '2022-04-12'),
    ('16', 'Space Diver', '2020-03-23');

UPDATE Albums
SET release_year = '1995-25-04'
WHERE album_id = 13;


--список треков
INSERT INTO 

    Tracks(track_id, title, duration, album_id)

VALUES
    ('1', 'Before the dawn', '328', '1'),
    ('2', 'Override', '283', '2'),
    ('3', 'Drop Audio', '174', '3'),
    ('4', 'Vote with a bullet', '255', '4'),
    ('5', 'Here comes the Hotstepper', '253', '4'),
    ('6', 'Make it bun dem', '210', '5'),
    ('7', 'Road to Zion', '224', '5'),
    ('8', 'Demanufacture', '351', '6'),
    ('9', 'Soul hacker', '330', '6'),
    ('10', 'Redfog', '288', '7'),
    ('11', 'Vultures of North', '355', '7'),
    ('12', 'Survival of the fittest', '204', '8'),
    ('13', 'Body hammer', '322', '9'),
    ('14', 'Collusion', '318', '10'),
    ('15', 'LTE', '249', '11'),
    ('16', 'Blow your mind', '228', '12'),
    ('17', 'Invade, destroy, repeat', '264', '15'),
    ('18', 'Survive', '230', '13'),
    ('19', 'For juctice', '189', '14'),
    ('20', 'Mary Jane', '212', '16');


--список сборников
INSERT INTO 

    Collections(collection_id, title, release_year)

VALUES
    ('1', 'Borderlands 2 ost', '2005-11-18'),
    ('2', 'Modern metal', '2018-01-01'),
    ('3', 'Far cry 3 ost', '2009-07-08'),
    ('4', 'Love And Robots', '2021-01-01'),
    ('5', 'The best of Fear Factory', '2015-01-12'),
    ('6', '100 Greatest hits of Metal', '2020-06-06'),
    ('7', 'NFS: Payback', '2002-08-06'),
    ('8', 'Minimal_techno_2022', '2022-03-25');


--связь жанров и исполнителей
INSERT INTO 

    Musicians_Genres(genre_id, artist_id) 

VALUES
    ('1', '1'),
    ('1', '2'),
    ('2', '3'),
    ('2', '4'),
    ('3', '5'),
    ('3', '6'),
    ('3', '8'),
    ('4', '7'),
    ('5', '9'),
    ('5', '10'),
    ('2', '5'),
    ('2', '6'),
    ('2', '8'),
    ('2', '1'),
    ('2', '2');


--связь альбомов и исполнителей
INSERT INTO 

    Albums_Musicians(Artist_id, album_id)

VALUES
    ('1', '1'),
    ('1', '2'),
    ('1', '12'),
    ('2', '3'),
    ('3', '4'),
    ('3', '16'),
    ('4', '5'),
    ('5', '6'),
    ('5', '13'),
    ('6', '7'),
    ('7', '8'),
    ('8', '9'),
    ('8', '14'),
    ('9', '10'),
    ('9', '15'),
    ('10', '11');


--связь сборников и треков
INSERT INTO 

    Collections_Tracks(track_id, collection_id)

VALUES
    ('16', '1'),
    ('3', '2'),
    ('17', '3'),
    ('7', '4'),
    ('7', '5'),
    ('18', '6'),
    ('19', '7'),
    ('20', '8');

