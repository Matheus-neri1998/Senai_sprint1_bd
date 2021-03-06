/*
	Exerc�cio 1.4 - Ramo Musical
*/
CREATE DATABASE Optus

USE Optus

-- Tabela 1 - Artistas --
CREATE TABLE Artistas
(
	IdArtista INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL
);


-- Tabela 2 - Estilos --
CREATE TABLE Estilos
(
	IdEstilo INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL
);


-- Tabela 4 - �lbuns --
CREATE TABLE Albuns
(
	IdAlbum INT PRIMARY KEY IDENTITY
	,Titulo VARCHAR (250) NOT NULL
	,DataLancamento DATE NOT NULL
	,Localizacao VARCHAR (100) NOT NULL
	,QtdMinutos INT NOT NULL
	,Ativo  BIT DEFAULT (1)
	,IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista)
);


-- Tabela 3 - �lbuns de Estilos --
CREATE TABLE AlbunsEstilos
(
	IdAlbum INT FOREIGN KEY REFERENCES Albuns (IdAlbum) 
	,IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);


-- Tabela 5 - Usu�rios --
CREATE TABLE Usuarios
(
	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL
	,Email VARCHAR (200) NOT NULL
	,Senha VARCHAR (250) NOT NULL
	,Permissao VARCHAR (100) NOT NULL

);

