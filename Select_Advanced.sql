-- 1. Количество исполнителей в каждом жанре:

SELECT Genre.genre_name, COUNT(Artist.artist_id) AS artist_count
FROM Genres
LEFT JOIN Artist ON Genre.genre_id = Artist.genre_id
GROUP BY Genre.genre_name;

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов:

SELECT COUNT(Track.track_id) AS track_count
FROM Tracks
INNER JOIN Album ON Track.album_id = Album.album_id
WHERE Album.release_year BETWEEN '2019-01-01' AND '2020-12-31';

-- 3. Средняя продолжительность треков по каждому альбому:

SELECT Album.album_name, AVG(Track.duration) AS avg_duration
FROM Albums
INNER JOIN Track ON Album.album_id = Track.album_id
GROUP BY Album.album_name;

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году:

SELECT Artist.artist_name
FROM Musicians
LEFT JOIN Album ON Artist.artist_id = Album.artist_id
WHERE Album.release_year <> '2020';

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами):

SELECT Collection.collection_name
FROM Collections
INNER JOIN Track ON Collection.collection_id = Track.collection_id
INNER JOIN Artist ON Track.artist_id = Artist.artist_id
WHERE Artist.artist_name = 'Исполнитель';

-- 6. Названия альбомов, в которых присутствуют исполнители более чем одного жанра:

SELECT Album.album_name
FROM Albums
INNER JOIN (
    SELECT Artist.artist_id
    FROM Artists
    GROUP BY Artist.artist_id
    HAVING COUNT(DISTINCT Artist.genre_id) > 1
) AS MultiGenreArtists ON Album.artist_id = MultiGenreArtists.artist_id;

-- 7. Наименования треков, которые не входят в сборники:

SELECT Track.track_name
FROM Tracks
LEFT JOIN Collection ON Track.collection_id = Collection.collection_id
WHERE Collection.collection_id IS NULL;

-- 8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек:

SELECT Artist.artist_name
FROM Artists
INNER JOIN (
    SELECT MIN(duration) AS min_duration
    FROM Tracks
) AS MinDurationTrack ON Artist.artist_id = Track.artist_id
WHERE Track.duration = MinDurationTrack.min_duration;

-- 9. Названия альбомов, содержащих наименьшее количество треков:

SELECT Album.album_name
FROM Albums
INNER JOIN (
    SELECT MIN(track_count) AS min_track_count
    FROM (
        SELECT Album.album_id, COUNT(Track.track_id) AS track_count
        FROM Albums
        INNER JOIN Track ON Album.album_id = Track.album_id
        GROUP BY Album.album_id
    ) AS TrackCountByAlbum
) AS MinTrackCountAlbum ON Album.album_id = TrackCountByAlbum.album_id
WHERE TrackCountByAlbum.track_count = MinTrackCountAlbum.min_track_count;
