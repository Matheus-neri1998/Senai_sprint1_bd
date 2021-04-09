/*

Banco de dados Ecomerece - DDL > Data Definition Language > Linguagem de Definição de dados

*/
/* Criando o banco de dados Ecomerce */
CREATE DATABASE Ecomerce

/* Escolhendo o banco "Ecomerce" */
USE Ecomerce

/* Criando a tabela Lojas */
CREATE TABLE Lojas
(
	IdLoja		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) UNIQUE NOT NULL
);

/* Criando a tabela Categorias */
CREATE TABLE Categorias
(
	IdCategoria     INT PRIMARY KEY IDENTITY 
	,Nome			VARCHAR(200) UNIQUE NOT NULL
	/*              Faz referencia a tabela de "Lojas" com a coluna "IdLoja"  */
	,IdLoja         INT FOREIGN KEY REFERENCES Lojas(IdLoja)
);

/* Criando a tabela Subcategorias */
CREATE TABLE Subcategorias
(
	IdSubCategoria     INT PRIMARY KEY IDENTITY
	,Nome			   VARCHAR(200) UNIQUE NOT NULL
	/*                 Faz referencia a tabela de "Categorias" com a coluna "IdCategoria" */
	,IdCategoria	   INT FOREIGN KEY REFERENCES Categorias (IdCategoria)
);

/* Criando a tabela Produtos */
CREATE TABLE Produtos
(
	IdProduto			INT PRIMARY KEY IDENTITY
	,Titulo				VARCHAR(200) UNIQUE NOT NULL
	,Valor				DECIMAL(18,2) NOT NULL
	/*                  Faz referencia a tabela de "Subcategorias" com a coluna "IdSubCategoria" */
	,IdSubCategoria		INT FOREIGN KEY REFERENCES Subcategorias (IdSubCategoria)   
);

/* Criando a tabela Clientes */
CREATE TABLE Clientes
(
	IdCliente       INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(200) UNIQUE NOT NULL
);

/* Criando a tabela Pedidos */
CREATE TABLE Pedidos
(
	IdPedido     INT PRIMARY KEY IDENTITY
	,NumPedido   VARCHAR (200) UNIQUE NOT NULL
	/*           Faz referencia a tabela de "Clientes" com a coluna "IdCliente"  */
	,IdCliente   INT FOREIGN KEY REFERENCES Clientes (IdCliente)
	,DataPedido  DATE NOT NULL
	,[Status]    VARCHAR (200) NOT NULL
);

/* Criando a tabela PedidosProdutos */
CREATE TABLE PedidosProdutos
(
	IdPedido     INT FOREIGN KEY REFERENCES Pedidos (IdPedido)
	,IdProduto   INT FOREIGN KEY REFERENCES Produtos (IdProduto)
);