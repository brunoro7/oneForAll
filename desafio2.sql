SELECT
	COUNT(song.`id`) AS `cancoes`,
  COUNT(DISTINCT artist.`id`) AS `artistas`,
  COUNT(DISTINCT album.`id`) AS `albuns` 
FROM SpotifyClone.song AS song

INNER JOIN SpotifyClone.album AS album
ON album.id = song.album_id

INNER JOIN SpotifyClone.artist AS artist
ON album.artist_id = artist.id;
