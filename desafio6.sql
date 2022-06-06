SELECT
    ROUND(MIN(`planAlias`.`value`), 2) AS `faturamento_minimo`,
    ROUND(AVG(`planAlias`.`value`),2 ) AS `faturamento_medio`,
    ROUND(MAX(`planAlias`.`value`), 2) AS `faturamento_maximo`,
    ROUND(SUM(`planAlias`.`value`), 2) AS `faturamento_total`
FROM SpotifyClone.`plan` AS `planAlias`

INNER JOIN SpotifyClone.`user` AS `userAlias`
ON `userAlias`.`plan_id` = `planAlias`.`id`
