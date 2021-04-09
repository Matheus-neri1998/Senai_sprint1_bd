-- Exercício 1.4 > Ramo Musical - DQL/JOINS --  

USE Optus

SELECT * FROM Albuns -- Tabela Albuns

SELECT * FROM AlbunsEstilos -- Tabela AlbunsEstilos

SELECT * FROM Usuarios -- Tabela Usuarios

SELECT * FROM Estilos -- Tabela Estilos

SELECT * FROM Artistas -- Tabela Artistas
GO

-- Listar todos os usuários administradores, sem exibir suas senhas

SELECT Nome, Email, Permissao FROM Usuarios
WHERE Usuarios.Permissao LIKE 'Administrador' 

-- Listar todos os álbuns lançados após o um determinado ano de lançamento

SELECT Titulo AS Album, YEAR(DataLancamento) AS Lancamento, Localizacao, QtdMinutos AS Duração, Ativo, Artistas.Nome AS Artista
FROM Albuns
INNER JOIN Artistas
ON Albuns.IdArtista = Artistas.IdArtista
WHERE Albuns.DataLancamento > '2000'

-- Listar os dados de um usuário através do e-mail e senha

SELECT Nome, Email, Permissao FROM Usuarios
WHERE Email LIKE 's.santos@email.com' AND Senha LIKE '123456'

-- Listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 

SELECT Titulo, DataLancamento, Localizacao, Ativo, AR.Nome AS Artista, E.Nome AS Estilo
FROM Albuns AL
INNER JOIN Artistas AR
ON AR.IdArtista = AL.IdArtista
INNER JOIN AlbunsEstilos
ON AL.IdAlbum = AlbunsEstilos.IdAlbum
INNER JOIN Estilos E
ON AlbunsEstilos.IdEstilo = E.IdEstilo
WHERE AL.Ativo = 'true'









