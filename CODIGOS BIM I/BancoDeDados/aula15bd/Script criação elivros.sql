-- #######################################################  TURMA 17 - CHECKPOINT II   #######################################################
-- Professora Yana Mendes
-- Aluno Wagner Sena


-- ##################################################  PROJETO LOCADORA DE LIVROS ON LINE   ##################################################
-- Neste projeto o objetivo é construir uma base de dados para um sistema de locação de livros online. De acordo como diagrama, 
-- O Banco de dados conterá inicialmente apenas 5 tabelas: livro, livro_emprestado, genero, autor, usuario.
-- Todas as PRIMARY KEYS serão definidas com o tipo de dados INT e usarão AUTO_INCREMENT e constraint NOT NULL (configurado automaticamente).
-- Como 'BOA PRÁTICA' o banco receberá as definições ENGINE=InnoDB e DEFAULT CHARSET=utf8 respectivamente.
-- De acordo com especificações e para garantir a consistência da operação e atender as regras de negócio, todos os atributos exceto (usuario:
-- dt_atualizacao), deverão ser definidos como NOT NULL.

-- ##########################################  PRINCIPAIS REGRAS DE NEGÓCIO DEFINIDAS PELO CLIENTE   #########################################
-- Pra alugar um livro é preciso que o usuário cadastrado informe todos os dados, (Nome, CPF, Endereço e Telefone);
-- Os livros precisam ter o genero e o nome do Autor cadastrado;
-- o campo ter data devolução da tabela (livro_emprestado) deverá ser informado;
-- ##################################################  SCRIPT DE CRIAÇÂO DEBANCO DE DADOS   ##################################################




CREATE DATABASE elivros;
USE `elivros`;
CREATE TABLE usuario(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    dt_cadastro DATETIME NOT NULL,
    dt_atualizacao DATETIME NULL,
    	
    PRIMARY KEY (id)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE genero(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR (30) NOT NULL,

	PRIMARY KEY (id)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE autor(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (id)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE livro(
	id INT NOT NULL AUTO_INCREMENT,
    id_genero INT NOT NULL,
    id_autor INT NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    lancamento DATETIME NULL,
    edicao TINYINT NULL,
    dt_cadastro DATETIME NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (id_genero) REFERENCES genero(id),
    FOREIGN KEY (id_autor) REFERENCES autor(id)       
 )ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE livro_emprestado(
	id INT NOT NULL AUTO_INCREMENT,
    id_livro INT NOT NULL,
    id_usuario INT NOT NULL,
    dt_emprestimo DATETIME NOT NULL,
    dt_devolucao DATETIME NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (id_livro) REFERENCES livro(id),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;


-- ##################################################  CRUD (Create, Read, Update and Delete)   ##################################################

INSERT INTO usuario (
	nome,
    cpf,
    endereco,
    telefone,
    dt_cadastro
) VALUES (
	'Wagner Mais Conhecido Como Claudio',
    '08166458598',
    'Rua dos Bobos, Numero 0',
    '13988776655',
    '2021-09-21 19:00:00'
);

INSERT INTO usuario (
	nome,
    cpf,
    endereco,
    telefone,
    dt_cadastro
) VALUES (
	'Paula Sena',
    '08168458598',
    'Rua dos Bobos, Numero 1',
    '13988548655',
    '2021-09-21 19:00:00'
);

INSERT INTO usuario (
	nome,
    cpf,
    endereco,
    telefone,
    dt_cadastro
) VALUES (
	'Marina Sena',
    '08166584598',
    'Rua dos Bobos, Numero 2',
    '13996968655',
    '2021-09-21 19:00:00'
);

SELECT * FROM usuario
WHERE dt_cadastro > '2021-09-01 00:00:00'
AND nome LIKE '%Wagner%';

UPDATE usuario SET 
	nome = 'Wagner Sena',
    dt_atualizacao = '2021-09-21 19:10:00'
WHERE id = 1;

DELETE FROM usuario 
WHERE id = 4;
