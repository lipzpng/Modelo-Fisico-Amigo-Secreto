#CREATE DATABASE AMIGOSECRETO;
#DROP DATABASE AMIGOSECRETO;

USE AMIGOSECRETO;

CREATE TABLE Grupo(
    id_grupo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_grupo VARCHAR(100) NOT NULL,
    dt_inicio DATE NOT NULL,
    dt_final DATE NOT NULL,
    valor FLOAT,
    tipo_amg_scrto VARCHAR(100),
    descricao VARCHAR(500)
);

CREATE TABLE Participantes(
    id_participante INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_partic VARCHAR(100) NOT NULL,
    cargo VARCHAR(20) NOT NULL,
    apelido VARCHAR(50) NOT NULL,
    id_grupo INT,
    id_lista INT
);

CREATE TABLE Lista(
    id_lista INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    presente VARCHAR(50) NOT NULL,
    id_participante INT
);

CREATE TABLE Dupla(
    id_duplas INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    partic_1 VARCHAR(100),
    partic_2 VARCHAR(100),
    id_participante INT
);

CREATE TABLE Chat(
    id_chat INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    mensagem_self VARCHAR(255),
    mensagem_other VARCHAR(255),
    id_partic INT,
    id_duplas INT
);

ALTER TABLE Participantes ADD CONSTRAINT FK_Grupo_Participantes
	FOREIGN KEY (id_grupo) REFERENCES Grupo(id_grupo);
    
ALTER TABLE Participantes ADD CONSTRAINT FK_Lista_Participantes
	FOREIGN KEY (id_lista) REFERENCES Lista(id_lista);

ALTER TABLE Lista ADD CONSTRAINT FK_Participantes_Lista
	FOREIGN KEY (id_participante) REFERENCES Participantes(id_participante);
    
ALTER TABLE Chat ADD CONSTRAINT FK_Participantes_Chat
	FOREIGN KEY (id_partic) REFERENCES Participantes(id_participante);