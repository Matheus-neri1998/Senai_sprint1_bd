/*
	Exerc�cio 1 - Filmes e Gen�ros
*/

CREATE DATABASE Filmes;

USE Filmes;

CREATE TABLE Generos
(
	idGenero INT PRIMARY KEY IDENTITY
	,Nome     VARCHAR (150) NOT NULL
);
CREATE TABLE Filmes
(
	IdFilme INT PRIMARY KEY IDENTITY
	,idGenero INT FOREIGN KEY REFERENCES Generos (idGenero)
	,Titulo VARCHAR (100) NOT NULL
);