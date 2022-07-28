SELECT his.usuario_id AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducao AS his
INNER JOIN SpotifyClone.usuario
ON his.usuario_id = his.usuario_id
GROUP BY quantidade_musicas_no_historico
LIMIT 1 OFFSET 2;