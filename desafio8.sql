SELECT
  `artistAlias`.`name` AS artista,
  `albumAlias`.`name` AS `album`
FROM SpotifyClone.artist AS `artistAlias`

INNER JOIN SpotifyClone.album AS `albumAlias`
ON `albumAlias`.`artist_id` = `artistAlias`.`id`
WHERE `artistAlias`.`name` = 'Walter Phoenix';