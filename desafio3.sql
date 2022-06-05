SELECT
	(`userAlias`.`name`) AS `usuario`,
  COUNT(`historyAlias`.`song_id`) AS `qtde_musicas_ouvidas`,
  ROUND(SUM((`songAlias`.`duration` / 60)), 2) AS `total_minutos`

FROM SpotifyClone.`user` AS `userAlias`

INNER JOIN SpotifyClone.`history` AS `historyAlias`
ON `historyAlias`.user_id = `userAlias`.`id`

INNER JOIN SpotifyClone.`song` AS `songAlias`
ON `historyAlias`.song_id = `songAlias`.id

GROUP BY `historyAlias`.user_id
ORDER BY `userAlias`.`name`;
