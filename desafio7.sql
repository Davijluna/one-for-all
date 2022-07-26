SELECT B.nome_artista AS artista,
 A.album AS album,
 COUNT(C.usuario_id) AS seguidores
FROM SpotifyClone.artista AS B
INNER JOIN SpotifyClone.album AS A
ON B.artista_id = A.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS C
ON A.artista_id = C.artista_id
GROUP BY B.nome_artista, A.album
ORDER BY seguidores DESC, artista ASC, album ASC;