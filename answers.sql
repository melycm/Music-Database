-- 1) What are tracks for a given album?
-- SELECT songs.namesong FROM songs
--     WHERE songs.album_id = 2;

-- 2) What are the albums produced by a given artist?
-- SELECT album.id, album.name FROM album
--     WHERE album.name = album.producer;

-- 3) What is the track with the longest duration?
-- SELECT songs.namesong, songs.duration FROM songs
--     WHERE songs.duration >= '00:05:20';

-- 4) What are the albums released in the 60s? 70s? 80s? 90s?
-- SELECT album.name, artist.era FROM album, artist
--     WHERE artist.era between 1960 and 2000;

-- 5) How many albums did a given artist produce in the 90s?
-- SELECT album.name, artist.era, album.producer FROM artist, album
--     WHERE artist.era between 1960 and 2000;

-- 6) What is each artist's latest album?
-- SELECT album.name, album.release_year FROM album   
--     WHERE release_year between 2017 and 2018;

-- 7) List all albums along with its total duration based on summing the duration of its tracks.
-- SELECT album.id, album.name, SUM(songs.duration) FROM songs
--     INNER JOIN album ON album.id = songs.album_id
--     GROUP BY album.id;

-- 8) What is the album with the longest duration?
-- SELECT album.id, album.name, SUM(songs.duration) FROM songs
--     INNER JOIN album ON album.id = songs.album_id
--     GROUP BY album.id LIMIT 1;

-- 9) Who are the 5 most prolific artists based on the number of albums they have recorded?
-- SELECT artist.name, count(album.id) FROM artist, album
--     LEFT OUTER JOIN songs ON album.id = songs.album_id
--     GROUP BY artist.id;

-- 10) What are all the tracks a given artist has recorded?
-- SELECT count(songs.namesong) FROM songs
--     WHERE songs.artist_id = 2;

-- 11) What are the top 5 most often recorded songs?
-- SELECT count(songs.namesong), album.release_year FROM songs, album 
--     WHERE release_year between 2017 and 2018 LIMIT 5;

-- 12) Who are the top 5 song writers whose songs have been most often recorded?
-- SELECT album.id, album.name FROM album
--     WHERE album.name = album.producer LIMIT 5;

-- 13) Who is the most prolific song writer based on the number of songs he has written?
-- SELECT artist.name, count(songs.namesong) FROM songs
--     LEFT OUTER JOIN artist ON artist.id = songs.artist_id
--     GROUP BY artist.id;

-- 14) What songs has a given artist recorded?
-- SELECT songs.namesong FROM songs
--     WHERE songs.artist_id = 3;

-- 15) Who are the song writers whose songs a given artist has recorded?
-- SELECT songs.namesong, artist.name FROM songs, artist
--     WHERE songs.artist_id = artist.id AND artist.id = 1;

-- 16) Who are the artists who have recorded a given song writer's songs?
-- SELECT songs.namesong FROM songs
--     WHERE songs.artist_id = 2;