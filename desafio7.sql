-- SELECT  
-- 	artist.name AS artista,
-- 	album.name AS album,
-- 	COUNT(f.artist_id) AS seguidores
-- FROM SpotifyClone.album AS album
-- INNER JOIN SpotifyClone.follow AS f ON f.artist_id = album.artist_id
-- INNER JOIN SpotifyClone.artist AS artist ON album.artist_id = artist.id
-- GROUP BY album.name, artist.name
-- ORDER BY seguidores DESC, artista, album;

em trabalho