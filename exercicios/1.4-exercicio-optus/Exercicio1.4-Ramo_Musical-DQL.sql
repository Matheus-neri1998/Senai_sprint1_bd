-- Exercício 1.4 > Ramo Musical - DQL/JOINS --  

USE Optus

SELECT * FROM Albuns -- Tabela Albuns

SELECT * FROM AlbunsEstilos -- Tabela AlbunsEstilos

SELECT * FROM Usuarios -- Tabela Usuarios

SELECT * FROM Estilos -- Tabela Estilos

SELECT * FROM Artistas -- Tabela Artistas

-- INNER JOIN

SELECT Artistas.Nome AS Artista
FROM Artistas

