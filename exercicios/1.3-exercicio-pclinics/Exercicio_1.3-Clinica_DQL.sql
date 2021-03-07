-- Exercício 1.3 > Clinica - DQL --

USE Clinica

SELECT Nome, CRMV FROM Veterinarios;

SELECT RazaoSocial FROM Clinicas;

SELECT Descricao FROM Racas
WHERE IdRaca = 3;

SELECT * FROM TiposPets;

SELECT * FROM Donos;

SELECT Endereco FROM Clinicas;

SELECT Nome FROM Veterinarios
WHERE IdVeterinario = 1;

SELECT IdTipoPet FROM TiposPets
SELECT Descricao FROM Racas;