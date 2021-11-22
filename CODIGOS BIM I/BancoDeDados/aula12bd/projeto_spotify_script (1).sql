-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_spotify
-- ------------------------------------------------------
-- Server version	8.0.17

USE projeto_spotify;

-- 2 Liste as músicas que possuem a letra "z" no título.
select * from cancao
where titulo like "%z%";

-- 3 Liste as músicas que têm a letra "a" como segundo caractere e a letra "s" como último caractere.

-- 4 Mostre a lista de reprodução que contém mais músicas, renomeando as colunas, colocando em maiúscula a primeira letra, 
-- os acentos correspondentes e adicionando os espaços entre as palavras.

-- 5 Em outro momento, obtenha uma lista com os 5 usuários mais jovens, a partir dos próximos 10 registros

-- 6 Liste as 5 músicas com mais reproduções, em ordem decrescente.
SELECT * FROM cancao ORDER BY qtdreproducao DESC LIMIT 5;


-- 7 Gere um relatório de todos os álbuns em ordem alfabética.

-- 8 Liste todos os álbuns que não possuem imagem, organizados em ordem alfabética.

select * from generoxcancao;

-- 9 Insira um novo usuário com os seguintes dados (leve em consideração os relacionamentos):
-- nomeusuario: novousuariodespotify@gmail.com
-- Nome e sobrenome: Elmer Santos 
-- password: S4321m
-- Data de nacimiento: 15/11/1991
-- Sexo: Masculino
-- Código Postal: B4129ATF
-- País: Brasil


select * from artista;
UPDATE TABELA  
    SET CAMPO = Null




