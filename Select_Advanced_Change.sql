--1. Количество исполнителей в каждом жанре. Но не получилось. Прошу уточнить в чем ошибка.
SELECT title, COUNT(musician_id) FROM genre g
LEFT JOIN musician_genre mg ON g.genre_id = mg.musician_id
GROUP BY g.title;


--2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track_id) FROM track t 
JOIN album a ON t.track_id = a.album_id
WHERE release_year BETWEEN '2019-01-01' AND '2020-12-31';


--3. Средняя продолжительность треков по каждому альбому.
SELECT a.title, AVG(duration) FROM track t
JOIN album a ON t.track_id = a.album_id 
GROUP BY a.title;


--4. Все исполнители, которые не выпустили альбомы в 2020 году. 
SELECT name FROM musician
WHERE name NOT IN (SELECT name FROM musician m
    JOIN album_musician am ON m.musician_id = am.album_id
    JOIN album a ON am.musician_id = a.album_id
    WHERE release_year BETWEEN '2020-01-01' AND '2020-12-31'
);


--5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами). 
--Все вроде прописано правильно, н овыводится не правильно.
SELECT DISTINCT c.title FROM collection c
JOIN collection_track ct ON c.collection_id = ct.track_id
JOIN track t ON ct.collection_id = t.track_id
JOIN album a ON t.track_id = a.album_id
JOIN album_musician am ON a.album_id = am.musician_id
JOIN musician m ON am.musician_id = m.musician_id
WHERE name = 'AC/DC';


--6. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT DISTINCT a.title FROM album a 
JOIN album_musician am ON a.album_id = am.musician_id
JOIN musician m ON am.musician_id = m.musician_id
JOIN musician_genre mg ON m.musician_id = mg.genre_id
GROUP BY a.title, mg.musician_id
HAVING COUNT(mg.genre_id) > 1;


--7. Наименования треков, которые не входят в сборники.
--Все прописал  верно, но выводить некоторые треки из сборников.
SELECT title FROM track t
LEFT JOIN collection_track ct ON t.track_id = ct.collection_id
WHERE ct.track_id is NULL;


--8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT m.name FROM musician m
JOIN album_musician am ON m.musician_id = am.album_id
JOIN album a ON am.album_id = a.album_id
JOIN track t ON a.album_id = t.track_id
WHERE duration = (SELECT MIN(duration) FROM track);


--9. Названия альбомов, содержащих наименьшее количество треков.
SELECT a.title FROM album a 
JOIN track t ON a.album_id = t.track_id 
GROUP BY a.album_id
HAVING COUNT(track_id) = (
    SELECT COUNT(track_id) FROM track t2
    GROUP BY album_id
    ORDER BY 1
    LIMIT 1
);




























