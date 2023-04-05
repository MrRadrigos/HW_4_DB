--Количество исполнителей в каждом жанре.
SELECT genre_name, COUNT(artist_id) artist_count FROM artist_genre
LEFT JOIN genre ON genre.id = artist_genre.genre_id
GROUP BY genre_name
ORDER BY artist_count DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track.id) FROM track /* Количество айди треков из таблицы треков */
JOIN album ON album.id = album_id  /* Делаем объединение от таблицы треков к альбомам */
WHERE album.year BETWEEN 2019 AND 2020; /* Где год альбома находится в требуемом промежутке */

--Средняя продолжительность треков по каждому альбому.
SELECT album_name, AVG(track_lenght) FROM Album
LEFT JOIN track ON track.album_id = album.id
GROUP BY album.album_name 
ORDER BY AVG(track.track_lenght);

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT artist_name FROM artist
WHERE artist.artist_name NOT IN (
    SELECT DISTINCT artist_name FROM artist
    LEFT JOIN artist_album ON artist.id = artist_album.artist_id
    LEFT JOIN album ON album.id = artist_album.album_id
    WHERE album.year = 2020
)
ORDER BY artist.artist_name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT collection.name FROM collection
LEFT JOIN collection_track ON collection.id = collection_track.collection_id
LEFT JOIN track ON track.id = collection_track.track_id
LEFT JOIN album ON album.id = track.album_id
LEFT JOIN artist_album ON artist_album.album_id = album.id
LEFT JOIN artist ON artist.id = artist_album.artist_id
WHERE artist.artist_name like '%%Lady Gaga%%'
ORDER BY collection.name;

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT DISTINCT album.album_name FROM album
JOIN artist_album ON album.id = artist_album.album_id
JOIN artist ON artist.id = artist_album.artist_id
JOIN artist_genre ON artist.id = artist_genre.artist_id
JOIN genre ON genre.id = artist_genre.genre_id
GROUP BY album.id, artist.id
HAVING COUNT(DISTINCT genre.id) > 1
ORDER BY album.album_name;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT artist.artist_name, track.track_lenght FROM track
LEFT JOIN album ON album.id = track.album_id
LEFT JOIN artist_album ON artist_album.album_id = album.id
LEFT JOIN artist ON artist.id = artist_album.artist_id
WHERE track.track_lenght = (
  SELECT MIN(track_lenght) FROM track
)
ORDER BY artist.artist_name;

--Названия альбомов, содержащих наименьшее количество треков.
SELECT album.album_name FROM album
LEFT JOIN track ON album.id = track.album_id
GROUP BY album.id
HAVING COUNT(track.id) = ( 
    SELECT COUNT(id) FROM track 
    GROUP BY album_id 
    ORDER BY COUNT(id) ASC 
    LIMIT 1 
)
ORDER BY album.album_name ASC;

--Наименования треков, которые не входят в сборники.
SELECT track.track_name FROM track
LEFT JOIN collection_track ON track.id = collection_track.track_id
WHERE collection_track.track_id IS NULL;