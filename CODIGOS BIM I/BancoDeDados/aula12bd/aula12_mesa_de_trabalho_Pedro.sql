-- Mesa de trabalho
-- Grupo 1: Pedro Henrique Cardoso, Pedro Verner, Gladston de Paula, Mario Braga, Tulio Marinho

USE projeto_spotify;

-- 2) Liste as músicas que possuem a letra "z" no título.
SELECT * FROM cancao WHERE titulo LIKE "%z%";

-- "z%" => z_______
-- "%z" => ________z
-- "%z%" => ________z_________

-- 3) Liste as músicas que têm a letra "a" como segundo caractere e a 
-- letra "s" como último caractere.
SELECT * FROM cancao WHERE titulo LIKE "_a%s";

-- "_" => _a%s
-- "%"

-- 4)Mostre a lista de reprodução que contém mais músicas, 
-- renomeando as colunas, colocando em maiúscula a primeira letra, 
-- os acentos correspondentes e adicionando os espaços entre as palavras.
SELECT idPlaylist AS "Id Playlist", idUsuario AS "Id Usuário", 
titulo AS "Título", qtdcancoes AS "Quantidade Canções", 
idestado AS "ID Estado", Datacriacao AS "Data Criação", 
Dataexclusao AS "Data Exclusão" FROM playlist ORDER BY qtdcancoes DESC LIMIT 1;

-- 5) Em outro momento, obtenha uma lista com os 5 usuários mais jovens, 
-- a partir dos próximos 10 registros.
SELECT * FROM usuario ORDER BY Data_nac DESC LIMIT 5 OFFSET 10;

-- 6) Liste as 5 músicas com mais reproduções, em ordem decrescente.
SELECT * FROM cancao ORDER BY qtdreproducao DESC LIMIT 5;

-- 7) Gere um relatório de todos os álbuns em ordem alfabética.
SELECT * FROM album ORDER BY titulo;

-- 8) Liste todos os álbuns que não possuem imagem, organizados em 
-- ordem alfabética.
SELECT * FROM album WHERE imagemcapa IS NULL ORDER BY titulo;

-- 9) Insira um novo usuário com os seguintes dados 
-- (leve em consideração os relacionamentos):
-- nomeusuario: novousuariodespotify@gmail.com
-- Nome e sobrenome: Elmer Santos 
-- password: S4321m
-- Data de nacimiento: 15/11/1991
-- Sexo: Masculino
-- Código Postal: B4129ATF
-- País: Brasil
INSERT INTO usuario (idUsuario, Nomeusuario, NomeCompleto, Data_nac, sexo, Cod, senha, Pais_idPais)
VALUES (20 , "novousuariodespotify@gmail.com", "ELMER SANTOS", "1991-11-15", "M", "B4129ATF", "S4321m", 9);

-- 10) Exclua todas as músicas do gênero "pop".
SELECT * FROM generoxcancao WHERE idGenero = 9;
-- Idcancao in (6, 7, 8, 9, 11, 12, 13, 14, 15, 18, 19, 20, 21, 22, 23, 24, 25, 79, 85, 130, 133)
DELETE FROM playlistxcancao WHERE idcancao in (6, 7, 8, 9, 11, 12, 13, 14, 15, 18, 19, 20, 21, 22, 23, 24, 25, 79, 85, 130, 133);
DELETE FROM generoxcancao WHERE idcancao in (6, 7, 8, 9, 11, 12, 13, 14, 15, 18, 19, 20, 21, 22, 23, 24, 25, 79, 85, 130, 133);
DELETE FROM cancao WHERE idcancao in (6, 7, 8, 9, 11, 12, 13, 14, 15, 18, 19, 20, 21, 22, 23, 24, 25, 79, 85, 130, 133);

-- 11) Edite todos os artistas que não possuem uma imagem carregada e carregue para eles o texto "Imagem em falta" na coluna de imagens.
UPDATE artista SET imagem = "Imagem em falta" WHERE imagem IS NULL; 