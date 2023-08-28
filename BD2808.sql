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

INSERT INTO serie (nome, produtora, genero)
VALUES ('Hannibal', 'NBC', 'Terror Psicológico');

INSERT INTO serie (nome, produtora, genero)
VALUES ('Good Omens', 'BBC', 'Romance gay cristão');

SELECT * from serie;

INSERT INTO amigo (nome, whats, insta)
VALUES ('Danilo', 519999999, '@danilo99');

INSERT INTO amigo (nome, whats, insta)
VALUES ('Joana', 51333333, '@joana33');

SELECT * FROM amigo;

INSERT INTO artista (nome, datanasc, localnasc)
VALUES ('Mads Mikkelsen', '1965-11-22', 'Dinamarca');

INSERT INTO artista (nome, datanasc, localnasc)
VALUES ('Michael Sheen', '1969-02-05', 'Reino Unido');

SELECT * FROM artista;

INSERT INTO temporada (nome, ano, idserie)
VALUES ('1ª Temporada', 2013, 1);

INSERT INTO temporada (nome, ano, idserie)
VALUES ('1ª Temporada', 2019, 2);

SELECT * FROM temporada;

INSERT INTO episodio(numero, titulo, duracao, idtemporada)
VALUES (1, 'Apéritiff', '0:30', 1);

INSERT INTO episodio(numero, titulo, duracao, idtemporada)
VALUES (1, 'No Inicio', '0:45', 2);

SELECT * FROM episodio;

INSERT INTO assiste (idamigo, idepisodio)
VALUES (2, 1);

INSERT INTO assiste (idamigo, idepisodio)
VALUES (1, 2);

SELECT * FROM assiste;

INSERT INTO atuacao (idartista, idtemporada)
VALUES (1, 1);

INSERT INTO atuacao (idartista, idtemporada)
VALUES (2, 2);

SELECT * FROM atuacao;