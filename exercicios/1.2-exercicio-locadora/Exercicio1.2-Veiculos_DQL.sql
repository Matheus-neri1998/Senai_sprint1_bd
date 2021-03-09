-- Exercício 1.2 > Veículos - DQL/JOINS -- 

USE Empresa

SELECT * FROM Marca -- Tabela Marca --

SELECT * FROM Modelos -- Tabela Modelos --

SELECT * FROM Veiculos -- Tabela Veiculos --

SELECT * FROM Cliente -- Tabela Cliente --

SELECT * FROM Aluguel -- Tabela Aluguel --

SELECT * FROM Empresas -- Tabela Empresas --

-- INNER JOIN --

SELECT * FROM Veiculos
INNER JOIN Aluguel
ON Veiculos.IdVeiculo = Aluguel.IdVeiculo
INNER JOIN Cliente
ON Veiculos.IdVeiculo = Cliente.IdCliente




