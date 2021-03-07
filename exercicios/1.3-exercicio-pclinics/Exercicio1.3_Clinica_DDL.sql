/*
	Exercício 1.3 - Clínica -- DDL 
*/

CREATE DATABASE Clinica

USE Clinica

-- Tabela 1 Clinicas --
CREATE TABLE Clinicas
(
	IdClinica INT PRIMARY KEY IDENTITY
	,RazaoSocial VARCHAR (100) NOT NULL
	,CNPJ VARCHAR (100) NOT NULL
	,Endereco VARCHAR (200) NOT NULL
);

-- Tabela 2 - Tipos de PETs --
CREATE TABLE TiposPets
(
	IdTipoPet INT PRIMARY KEY IDENTITY
	,Descricao VARCHAR (200) NOT NULL
);

-- Tabela 3 - Racas --
CREATE TABLE Racas
(
	IdRaca INT PRIMARY KEY IDENTITY
	,Descricao VARCHAR (200) NOT NULL
	,IdTipoPet INT FOREIGN KEY REFERENCES TiposPets (IdTipoPet)
);

-- Tabela 4 - Donos --
CREATE TABLE Donos
(
	IdDono INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL
);

-- Tabela 5 - Pets --
CREATE TABLE Pets
(
	IdPet INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (100) NOT NULL
	,DataNascimento VARCHAR (50) NOT NULL
	,IdRaca INT FOREIGN KEY REFERENCES Racas (IdRaca)
	,IdDono INT FOREIGN KEY REFERENCES Donos (IdDono)
);

-- Tabela 6 - Veterinários --
CREATE TABLE Veterinarios
(
	IdVeterinario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (100) NOT NULL
	,CRMV VARCHAR (100) NOT NULL
	,IdClinica INT FOREIGN KEY REFERENCES Clinicas (IdClinica)

);

-- Tabela 7 - Atendimentos --
CREATE TABLE Atendimentos
(
	IdAtendimento INT PRIMARY KEY IDENTITY
	,Descricao VARCHAR (300) NOT NULL
	,DataAtendimento VARCHAR (100) NOT NULL
	,IdVeterinario INT FOREIGN KEY REFERENCES Veterinarios (IdVeterinario)
	,IdPet INT FOREIGN KEY REFERENCES Pets (IdPet)

);