-- Exercício 1.0 > Filmes - DQL/JOINS --

USE Filmes;

SELECT * FROM Generos;

-- * = ALL (Tudo/Todos) --

 SELECT * FROM Filmes;

-- INNER JOIN --
-- AS = ALIAS -- 

SELECT Filmes.IdFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela1 = Filmes --
INNER JOIN Generos -- Tabela2 = Generos --
ON Filmes.idGenero = Generos.idGenero;

-- LEFT JOIN --
SELECT Filmes.IdFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela1 = Filmes --
LEFT JOIN Generos -- Tabela2 = Generos --
ON Filmes.idGenero = Generos.idGenero;

-- RIGHT JOIN -- 
SELECT Filmes.IdFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela1 = Filmes --
RIGHT JOIN Generos -- Tabela2 = Generos --
ON Filmes.idGenero = Generos.idGenero;

-- FULL OUTER JOIN -- Exibe todos os registros que possui relação
SELECT Filmes.IdFilme, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes -- Tabela1 = Filmes --
FULL OUTER JOIN Generos -- Tabela2 = Generos --
ON Filmes.idGenero = Generos.idGenero;



