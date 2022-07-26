SELECT MIN(valor_plano) AS faturamento_minimo,
 MAX(valor_plano) AS faturamento_maximo,
 ROUND(AVG(valor_plano),2) AS faturamento_medio ,
 ROUND(SUM(valor_plano),2) AS faturamento_total
 FROM SpotifyClone.plano AS PLA
 INNER JOIN SpotifyClone.usuario AS USU
 ON PLA.plano_id = USU.plano_id;