CREATE TABLE serie (
  idserie SERIAL NOT NULL,
  nome VARCHAR(50) NOT NULL,
  produtora VARCHAR(30),
  genero VARCHAR(40),
  PRIMARY KEY (idserie)
);
CREATE TABLE temporada (
  idtemporada SERIAL NOT NULL,
  nome VARCHAR(30) NOT NULL,
  ano INT,
  idserie INT,
  PRIMARY KEY (idtemporada)
);
CREATE TABLE artista (
  idartista SERIAL NOT NULL,
  nome VARCHAR(50) NOT NULL,
  datanasc DATE,
  localnasc VARCHAR(60),
  PRIMARY KEY (idartista)
);
CREATE TABLE episodio (
  idepisodio SERIAL NOT NULL,
  numero INT NOT NULL,
  titulo VARCHAR(50),
  duracao TIME,
  PRIMARY KEY (idepisodio)
);
CREATE TABLE temporada (
  idtemporada SERIAL NOT NULL,
  nome VARCHAR(30) NOT NULL,
  ano INT,
  idserie SERIAL NOT NULL,
  PRIMARY KEY (idtemporada)
);
CREATE TABLE amigo (
  idamigo SERIAL NOT NULL,
  nome VARCHAR(30) NOT NULL,
  whats INT,
  insta VARCHAR(25),
  PRIMARY KEY (idamigo)
);
CREATE TABLE atuacao (
  idatuacao SERIAL NOT NULL,
  idartista INT NOT NULL,
  idtemporada INT NOT NULL,
  PRIMARY KEY (idatuacao)
);
CREATE TABLE atua (
  idatua SERIAL NOT NULL,
  idartista SERIAL NOT NULL,
  idtemporada SERIAL NOT NULL,
  PRIMARY KEY (idatua)
);
CREATE TABLE assiste (
  idassiste SERIAL NOT NULL,
  idamigo SERIAL NOT NULL,
  idepisodio SERIAL NOT NULL,
  PRIMARY KEY (idassiste)
);