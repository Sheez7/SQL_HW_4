-- 1. Количество исполнителей в каждом жанре:

SELECT Genres.title AS genre, COUNT(Musicians_Genres.musician_id) AS artist_count
FROM Genres
LEFT JOIN Musicians_Genres ON Genres.genre_id = Musicians_Genres.genre_id
GROUP BY Genres.title;

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов:

SELECT COUNT(Tracks.track_id) AS track_count
FROM Tracks
INNER JOIN Albums ON Tracks.album_id = Albums.album_id
WHERE Albums.release_year BETWEEN '2019-01-01' AND '2020-12-31';

-- 3. Средняя продолжительность треков по каждому альбому:

SELECT Albums.title AS album, AVG(Tracks.duration) AS avg_duration
FROM Albums
INNER JOIN Tracks ON Albums.album_id = Tracks.album_id
GROUP BY Albums.title;

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году:

SELECT Musicians.name AS artist
FROM Musicians
WHERE Musicians.musician_id NOT IN (
    SELECT DISTINCT Albums_Musicians.musician_id
    FROM Albums_Musicians
    INNER JOIN Albums ON Albums_Musicians.album_id = Albums.album_id
    WHERE Albums.release_year = '2020'
);

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами):

SELECT Collections.title AS collection
FROM Collections
INNER JOIN Collections_Tracks ON Collections.collection_id = Collections_Tracks.collection_id
INNER JOIN Tracks ON Collections_Tracks.track_id = Tracks.track_id
INNER JOIN Albums ON Tracks.album_id = Albums.album_id
INNER JOIN Albums_Musicians ON Albums.album_id = Albums_Musicians.album_id
INNER JOIN Musicians ON Albums_Musicians.musician_id = Musicians.musician_id
WHERE Musicians.name = 'Исполнитель';

-- 6. Названия альбомов, в которых присутствуют исполнители более чем одного жанра:

SELECT Albums.title
FROM Albums
INNER JOIN (
    SELECT Albums_Musicians.album_id
    FROM Albums_Musicians
    INNER JOIN Musicians ON Albums_Musicians.musician_id = Musicians.musician_id
    GROUP BY Albums_Musicians.album_id
    HAVING COUNT(DISTINCT Musicians.genre_id) > 1
) AS MultiGenreAlbums ON Albums.album_id = MultiGenreAlbums.album_id;

-- 7. Наименования треков, которые не входят в сборники:

SELECT Tracks.title
FROM Tracks
LEFT JOIN Collections_Tracks ON Tracks.track_id = Collections_Tracks.track_id
WHERE Collections_Tracks.track_id IS NULL;

-- 8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек:

SELECT Musicians.name AS artist
FROM Musicians
INNER JOIN (
    SELECT MIN(Tracks.duration) AS min_duration
    FROM Tracks
) AS MinDurationTrack ON Musicians.musician_id = Tracks.musician_id
WHERE Tracks.duration = MinDurationTrack.min_duration;

-- 9. Названия альбомов, содержащих наименьшее количество треков:

SELECT Albums.title
FROM Albums
INNER JOIN (
    SELECT MIN(track_count) AS min_track_count
    FROM (
        SELECT Albums.album_id, COUNT(Tracks.track_id) AS track_count
        FROM Albums
        INNER JOIN Tracks ON Albums.album_id = Tracks.album_id
        GROUP BY Albums.album_id
    ) AS TrackCountByAlbum
) AS MinTrackCountAlbum ON Albums.album_id = TrackCountByAlbum.album_id
WHERE TrackCountByAlbum.track_count = MinTrackCountAlbum.min_track_count;