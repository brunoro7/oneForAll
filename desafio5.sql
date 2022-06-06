SELECT
	`songAlias`.`name` AS `cancao`,
  COUNT(*) AS `reproducoes`
FROM SpotifyClone.`history` AS `historyAlias`

INNER JOIN SpotifyClone.`song` AS `songAlias`
ON `songAlias`.`id` = `historyAlias`.`song_id`

GROUP BY `songAlias`.`id`
ORDER BY `reproducoes`
DESC, `songAlias`.`name`

LIMIT 2;