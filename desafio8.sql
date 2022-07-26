SELECT 
B.nome_artista AS artista,
A.album AS album
FROM SpotifyClone.artista AS B
INNER JOIN SpotifyClone.album AS A
ON B.artista_id = A.artista_id
GROUP BY B.nome_artista, A.album
ORDER BY artista DESC, album ASC
LIMIT 2;