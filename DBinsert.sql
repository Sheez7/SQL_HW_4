--список жанров
INSERT INTO genres(genres_id, title) 
VALUES('1', 'D`N`B');

INSERT INTO genres(genres_id, title) 
VALUES('2', 'Raggae');

INSERT INTO genres(genres_id, title) 
VALUES('3', 'Metal');

INSERT INTO genres(genres_id, title) 
VALUES('4', 'Hip hop');

INSERT INTO genres(genres_id, title) 
VALUES('5', 'Minimal techno');

--список испольнителей
INSERT INTO artists(Artists_id, name)
VALUES('1', 'Zardonic');

INSERT INTO artists(Artists_id, name)
VALUES('2', 'The Quemists');

INSERT INTO artists(Artists_id, name)
VALUES('3', 'Ini Kamoze');

INSERT INTO artists(Artists_id, name)
VALUES('4', 'Damian Marley');

INSERT INTO artists(Artists_id, name)
VALUES('5', 'Fear Factory');

INSERT INTO artists(Artists_id, name)
VALUES('6', 'Orbit Culture');

INSERT INTO artists(Artists_id, name)
VALUES('7', 'Mobb Deep');

INSERT INTO artists(Artists_id, name)
VALUES('8', 'Night Lovell');

INSERT INTO artists(Artists_id, name)
VALUES('9', 'RTTWLR');

INSERT INTO artists(Artists_id, name)
VALUES('10', 'Boris Brejcha');

SELECT * FROM genre;

--список альбомов
INSERT INTO Albums(album_id, title, release_year)
VALUES('1', 'Become', '2018-28-09');

INSERT INTO Albums(album_id, title, release_year)
VALUES('2', 'Antihero', '2015-18-09');

INSERT INTO Albums(album_id, title, release_year)
VALUES('3', 'Join the Q', '2009-02-02');

INSERT INTO Albums(album_id, title, release_year)
VALUES('4', 'Spirit in the System', '2010-07-07');

INSERT INTO Albums(album_id, title, release_year)
VALUES('5', 'Here comes the Hotstepper', '1995-11-01');

INSERT INTO Albums(album_id, title, release_year)
VALUES('6', 'Tramplin` Down Babylon', '2016-06-04');

INSERT INTO Albums(album_id, title, release_year)
VALUES('7', 'Make it bun dem', '2012-01-05');

INSERT INTO Albums(album_id, title, release_year)
VALUES('8', 'Welcome to Jamrock', '2005-12-09');

INSERT INTO Albums(album_id, title, release_year)
VALUES('9', 'Demanufacture', '1995-03-03');

INSERT INTO Albums(album_id, title, release_year)
VALUES('10', 'Genexus', '2015-07-08');

INSERT INTO Albums(album_id, title, release_year)
VALUES('11', 'Redfog', '2018-03-02');

INSERT INTO Albums(album_id, title, release_year)
VALUES('12', 'Descent', '2023-08-05');

INSERT INTO Albums(album_id, title, release_year)
VALUES('13', 'The Infamous', '1995-25-04');

INSERT INTO Albums(album_id, title, release_year)
VALUES('14', 'Red Teenage melody', '2016-13-06');

INSERT INTO Albums(album_id, title, release_year)
VALUES('15', 'Techno nun', '2022-04-12');

INSERT INTO Albums(album_id, title, release_year)
VALUES('16', 'Space Diver', '2020-03-23')

UPDATE Albums
SET release_year = '1995-25-04'
WHERE album_id = 13;


--список треков
INSERT INTO track(track_id, title, duration, album_id)
VALUES('1', 'Before the dawn', '328', '1');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('2', 'Override', '283', '2');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('3', 'Drop Audio', '174', '3');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('4', 'Vote with a bullet', '255', '4');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('5', 'Here comes the Hotstepper', '253', '4');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('6', 'Make it bun dem', '210', '5');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('7', 'Road to Zion', '224', '5');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('8', 'Demanufacture', '351', '6');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('9', 'Soul hacker', '330', '6');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('10', 'Redfog', '288', '7');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('11', 'Vultures of North', '355', '7');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('12', 'Survival of the fittest', '204', '8');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('13', 'Body hammer', '322', '9');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('14', 'Collusion', '318', '10');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('15', 'LTE', '249', '11');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('16', 'Blow your mind', '228', '12');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('17', 'Invade, destroy, repeat', '264', '15');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('18', 'Survive', '230', '13');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('19', 'For juctice', '189', '14');

INSERT INTO track(track_id, title, duration, album_id)
VALUES('20', 'Mary Jane', '212', '16');


--список сборников
INSERT INTO collection(collection_id, title, release_year)
VALUES('1', 'Borderlands 2 ost', '2005-11-18');

INSERT INTO collection(collection_id, title, release_year)
VALUES('2', 'Modern metal', '2018-01-01');

INSERT INTO collection(collection_id, title, release_year)
VALUES('3', 'Far cry 3 ost', '2009-07-08');

INSERT INTO collection(collection_id, title, release_year)
VALUES('4', 'Love And Robots', '2021-01-01');

INSERT INTO collection(collection_id, title, release_year)
VALUES('5', 'The best of Fear Factory', '2015-01-12');

INSERT INTO collection(collection_id, title, release_year)
VALUES('6', '100 Greatest Metal', '2020-06-06');

INSERT INTO collection(collection_id, title, release_year)
VALUES('7', 'NFS: Payback', '2002-08-06');

INSERT INTO collection(collection_id, title, release_year)
VALUES('8', 'Minimal_techno_2022', '2022-03-25');


--связь жанров и исполнителей
INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('1', '1');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('1', '2');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('2', '3');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('2', '4');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('3', '5');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('3', '6');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('3', '8');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('4', '7');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('5', '9');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('5', '10');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('2', '5');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('2', '6');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('2', '8');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('2', '1');

INSERT INTO musician_genre(genres_id, Artists_id) 
VALUES('2', '2');


--связь альбомов и исполнителей
INSERT INTO album_musician(Artists_id, album_id)
VALUES('1', '1');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('1', '2');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('1', '12');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('2', '3');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('3', '4');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('3', '16');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('4', '5');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('5', '6');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('5', '13');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('6', '7');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('7', '8');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('8', '9');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('8', '14');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('9', '10');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('9', '15');

INSERT INTO album_musician(Artists_id, album_id)
VALUES('10', '11');


--связь сборников и треков
INSERT INTO collection_track(track_id, collection_id)
VALUES('16', '1');

INSERT INTO collection_track(track_id, collection_id)
VALUES('3', '2');

INSERT INTO collection_track(track_id, collection_id)
VALUES('17', '3');

INSERT INTO collection_track(track_id, collection_id)
VALUES('7', '4');

INSERT INTO collection_track(track_id, collection_id)
VALUES('7', '5');

INSERT INTO collection_track(track_id, collection_id)
VALUES('18', '6');

INSERT INTO collection_track(track_id, collection_id)
VALUES('19', '7');

INSERT INTO collection_track(track_id, collection_id)
VALUES('20', '8');

