CREATE DATABASE DHTube;

USE DHTube;

CREATE TABLE avatar (
	idAvatar INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45),
	urlImagem VARCHAR(100)
);

CREATE TABLE pais (
	idPais INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE usuario (
	idUsuario INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    senha VARCHAR(45),
    dataNascimento DATETIME,
    cep VARCHAR(45),
    idPais INT(11),
    idAvatar INT(11),
    FOREIGN KEY (idPais) REFERENCES pais (idPais),
    FOREIGN KEY (idAvatar) REFERENCES avatar (idAvatar)
);


CREATE TABLE playlists (
	idPlaylist INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    dataCriacao DATETIME,
    privado SMALLINT(6),
    idUsuario INT(11),
    FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
);


CREATE TABLE canal (
	idCanal INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    descricao TEXT,
    dataCriacao DATETIME,
    idUsuario INT(11),
    FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
);


CREATE TABLE video (
	idVideo INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao TEXT,
    tamanho DOUBLE,
    nomeArquivo VARCHAR(100),
    duracao DOUBLE,
    imagem VARCHAR(100),
    qtdReproducoes INT(11),
    qtdLikes INT(11),
    qtdDislikes INT(11),
    privado SMALLINT(6),
    dataPublicacao DATETIME,
    idUsuario INT(11),
    FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
);


CREATE TABLE playlist_video (
	idVideo INT(11),
    idPlaylist INT(11),
    FOREIGN KEY (idVideo) REFERENCES video (idVideo),
    FOREIGN KEY (idPlaylist) REFERENCES playlists (idPlaylist)
);