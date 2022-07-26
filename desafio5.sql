SELECT cancao AS cancao, COUNT(HIS.usuario_id) AS reproducoes
FROM SpotifyClone.cancao AS cancao
INNER JOIN SpotifyClone.historico_reproducao AS HIS
ON cancao.cancao_id = HIS.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;