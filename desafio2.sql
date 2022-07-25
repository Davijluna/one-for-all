SELECT COUNT(cancoes.cancao) AS cancoes,
 COUNT(DISTINCT artistas.artista_id) AS artistas,
 COUNT(DISTINCT albuns.album_id) AS albuns
FROM SpotifyClone.cancao AS cancoes
INNER JOIN SpotifyClone.album AS albuns
ON cancoes.album_id = albuns.album_id
INNER JOIN SpotifyClone.artista AS artistas
ON albuns.artista_id = artistas.artista_id;