SELECT
	(`userAlias`.`name`) AS `usuario`,
  IF(MAX(YEAR(`historyAlias`.`play_song_date`)) > 2020, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'

FROM SpotifyClone.`user` AS `userAlias`

INNER JOIN SpotifyClone.`history` AS `historyAlias`
ON `historyAlias`.user_id = `userAlias`.`id`

GROUP BY `userAlias`.`name`
ORDER BY `userAlias`.`name`;