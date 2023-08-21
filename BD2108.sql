CREATE TABLE serie (
  idserie SERIAL NOT NULL,
  nome VARCHAR(50) NOT NULL,
  produtora VARCHAR(30),
  genero VARCHAR(40),
  PRIMARY KEY (idserie)
);
CREATE TABLE artista (
  idartista SERIAL NOT NULL,
  nome VARCHAR(50) NOT NULL,
  datanasc DATE,
  localnasc VARCHAR(60),
  PRIMARY KEY (idartista)
);
CREATE TABLE temporada (
  idtemporada SERIAL NOT NULL,
  nome VARCHAR(30) NOT NULL,
  ano INT,
  idserie SERIAL NOT NULL,
  PRIMARY KEY (idtemporada)
);
CREATE TABLE episodio (
  idepisodio SERIAL NOT NULL,
  numero INT NOT NULL,
  titulo VARCHAR(50),
  duracao TIME,
  idtemporada SERIAL NOT NULL,
  PRIMARY KEY (idepisodio)
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
CREATE TABLE assiste (
  idassiste SERIAL NOT NULL,
  idamigo SERIAL NOT NULL,
  idepisodio SERIAL NOT NULL,
  PRIMARY KEY (idassiste)
);

ALTER TABLE temporada
ADD FOREIGN KEY (idserie) REFERENCES serie(idserie);

ALTER TABLE episodio
ADD FOREIGN KEY (idtemporada) REFERENCES temporada(idtemporada);

ALTER TABLE atuacao
ADD FOREIGN KEY (idartista) REFERENCES artista(idartista),
ADD FOREIGN KEY (idtemporada) REFERENCES temporada(idtemporada);

ALTER TABLE assiste
ADD FOREIGN KEY (idamigo) REFERENCES amigo(idamigo),
ADD FOREIGN KEY (idepisodio) REFERENCES episodio(idepisodio);

