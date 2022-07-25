SELECT US.usuario AS usuario,
COUNT(historico.usuario_id) AS qtde_musicas_ouvidas,
ROUND(SUM(total.duracao_segundo/60),2) AS total_minutos
FROM SpotifyClone.usuario AS US
INNER JOIN SpotifyClone.historico_reproducao AS historico
ON historico.usuario_id = US.usuario_id
INNER JOIN SpotifyClone.cancao AS total
ON total.cancao_id = historico.cancao_id
GROUP BY US.usuario;