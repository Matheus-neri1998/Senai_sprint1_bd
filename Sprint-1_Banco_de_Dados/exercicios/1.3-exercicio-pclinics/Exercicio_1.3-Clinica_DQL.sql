-- Exercício 1.3 > Clinica - DQL/JOINS --

USE Clinica

SELECT * FROM Donos -- Tabela Donos

SELECT * FROM Clinicas -- Tabela Clinicas 

SELECT * FROM TiposPets -- Tabela TiposPets

SELECT * FROM Racas -- Tabela Racas

SELECT * FROM Pets -- Tabela Pets

SELECT * FROM Atendimentos -- Tabela Atendimentos

SELECT * FROM Veterinarios -- Tabela Veterinarios

-- INNER JOIN

SELECT * FROM Atendimentos
INNER JOIN Pets
ON Atendimentos.DataAtendimento = Pets.DataNascimento
INNER JOIN Veterinarios
ON Atendimentos.IdVeterinario = Veterinarios.IdVeterinario
