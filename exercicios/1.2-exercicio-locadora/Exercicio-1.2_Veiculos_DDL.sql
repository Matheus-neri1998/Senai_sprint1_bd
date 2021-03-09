/*
	Exercício 1.2 - Veículos - DDL --
*/

CREATE DATABASE Empresa

USE Empresa

-- Tabela 1 - Empresa
CREATE TABLE Empresas
(
	IdEmpresa INT PRIMARY KEY IDENTITY
	,Nome     VARCHAR (150) NOT NULL
)

-- Tabela 2 - Marca
CREATE TABLE Marca
(
	IdMarca INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (250) NOT NULL
)

-- Tabela 3 - Modelos
CREATE TABLE Modelos
(
	IdModelo INT PRIMARY KEY IDENTITY
	,Descricao VARCHAR (250) NOT NULL
	,IdMarca INT FOREIGN KEY REFERENCES Marca (IdMarca)
)

-- Tabela 4 - Veículos 
CREATE TABLE Veiculos
(
	IdVeiculo INT PRIMARY KEY IDENTITY
	,IdModelo INT FOREIGN KEY REFERENCES Modelos (IdModelo)
	,Placa VARCHAR (200) NOT NULL
	,IdEmpresa INT FOREIGN KEY REFERENCES Empresas (IdEmpresa)
)

--	Tabela 5 - Cliente
CREATE TABLE Cliente
(
	IdCliente INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL
	,CPF VARCHAR (150) NOT NULL
)

-- Tabela 6 - Alugueis 
CREATE TABLE Aluguel
(
	IdAluguel INT PRIMARY KEY IDENTITY
	,IdCliente INT FOREIGN KEY REFERENCES Cliente (IdCliente)
	,IdVeiculo INT FOREIGN KEY REFERENCES Veiculos (IdVeiculo)
	,DataInicio DATE 
	,DataFim DATE 
)