SELECT usuario.usuario AS usuario,
IF(MAX(YEAR(historico.data_reproducao)) = '2021', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.historico_reproducao AS historico
INNER JOIN SpotifyClone.usuario AS usuario
ON usuario.usuario_id = historico.usuario_id
GROUP BY usuario.usuario;