/*
	Exercício 1.4 - Ramo Musical
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

-- Tabela 3 - Álbuns de Estilos --
CREATE TABLE AlbunsEstilos
(
	IdAlbumEstilo INT PRIMARY KEY IDENTITY
	,IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

-- Tabela 4 - Álbuns --
CREATE TABLE Albuns
(
	IdAlbum INT PRIMARY KEY IDENTITY
	,Titulo VARCHAR (250) NOT NULL
	,DataLancamento VARCHAR (100) NOT NULL
	,Localizacao VARCHAR (100) NOT NULL
	,QtdMinutos VARCHAR (250) NOT NULL
	,Ativo VARCHAR (100) NOT NULL
	,IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista)
);

-- Tabela 5 - Usuários --
CREATE TABLE Usuarios
(
	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL
	,Email VARCHAR (200) NOT NULL
	,Senha VARCHAR (250) NOT NULL
	,Permissao VARCHAR (100) NOT NULL

);

