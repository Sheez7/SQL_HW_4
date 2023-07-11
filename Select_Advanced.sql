--Количество исполнителей в каждом жанре. Но не получилось. Прошу уточнить в чем ошибка.
SELECT title, COUNT(musician_id) musician_q FROM genre g
JOIN musician m ON g.genre_id = m.musician_id
GROUP BY g.title
ORDER BY musician_q DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT title, COUNT(title) FROM album
WHERE release_year >= '2019-01-01' AND release_year <= '2020-12-31'
GROUP BY title;

--Средняя продолжительность треков по каждому альбому.
SELECT duration, AVG(duration) d FROM album a
JOIN track t  ON a.album_id = t.track_id
GROUP BY t.duration
ORDER BY d DESC;

--Все исполнители, которые не выпустили альбомы в 2020 году. 
SELECT name, COUNT(musician_id) FROM album a
JOIN musician m ON a.album_id = m.musician_id
WHERE release_year NOT BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.title FROM collection c
JOIN musician m ON c.collection_id = m.musician_id
JOIN track t ON m.musician_id = t.track_id
WHERE musician_id = '4'
GROUP BY c.title;

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
--Не могу понять, что сделал не так. прошу обьяснить.
SELECT a.title, COUNT(genre_id) FROM album a 
JOIN musician m ON a.album_id = m.musician_id
JOIN genre g ON m.musician_id = g.genre_id
WHERE genre_id > 1
GROUP BY a.title;

--Наименования треков, которые не входят в сборники.
--Не могу понять, какой критерий нужно указать, должно вывести 13 треков, которые не входят в сборники. Прошу объяснить.
SELECT t.title FROM track t
JOIN collection c ON t.track_id = c.collection_id
WHERE collection_id = track_id
GROUP BY t.title;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT m.name, MIN(duration) FROM musician m
JOIN track t ON m.musician_id = t.track_id
GROUP BY m.name;

--Названия альбомов, содержащих наименьшее количество треков.
SELECT a.title, COUNT(t.title) FROM album a 
JOIN track t ON a.album_id = t.track_id 
GROUP BY a.title
ORDER BY MIN(t.title);





























