/*
	Exercício 1 - Filmes e Genêros - DDL
*/

-- Cria o banco de dados a ser utilizado
CREATE DATABASE Filmes;

-- Define o banco de dados que será utilizado (Filmes)
USE Filmes;

-- Cria a tabela com a entidade Genero
CREATE TABLE Generos
(
	IdGenero INT PRIMARY KEY IDENTITY
	,Nome     VARCHAR (150) NOT NULL
);

-- Cria a tabela com a entidade Filmes
CREATE TABLE Filmes
(
	IdFilme    INT PRIMARY KEY IDENTITY
	,IdGenero  INT FOREIGN KEY REFERENCES Generos (IdGenero) 
	,Titulo    VARCHAR (100) NOT NULL
);
