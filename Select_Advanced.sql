--Название и год выхода альбомов, вышедших в 2018 году.

SELECT album_name, YEAR FROM Albums
WHERE YEAR = 2018;

--Название и продолжительность самого длительного трека.

SELECT song_name, duration FROM Tracks
WHERE max(duration);

--Название треков, продолжительность которых не менее 3,5 минут.

SELECT song_name FROM Tracks
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

select collection_name FROM Collections
WHERE YEAR BETWEEN 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова.

SELECT nick_name FROM Musicians
WHERE nick_name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».

SELECT song_name FROM Tracks
WHERE song_name LIKE '%my%' or '%мой%';