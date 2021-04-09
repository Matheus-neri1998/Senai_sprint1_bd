-- Exercício 1.0 > Filmes - DQL/JOINS --

USE Filmes;

SELECT * FROM Generos

SELECT * FROM Filmes
GO

SELECT Filmes.IdFilme, Generos.IdGenero, Filmes.Titulo AS Filme, Generos.Nome FROM Filmes
INNER JOIN Generos -- Juntando com a tabela Generos
ON Filmes.IdGenero = Generos.IdGenero
GO

