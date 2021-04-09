-- Exerc�cio 1.4 > Ramo Musical - DQL/JOINS --  

USE Optus

SELECT * FROM Albuns -- Tabela Albuns

SELECT * FROM AlbunsEstilos -- Tabela AlbunsEstilos

SELECT * FROM Usuarios -- Tabela Usuarios

SELECT * FROM Estilos -- Tabela Estilos

SELECT * FROM Artistas -- Tabela Artistas
GO

-- Listar todos os usu�rios administradores, sem exibir suas senhas

SELECT Nome, Email, Permissao FROM Usuarios
WHERE Usuarios.Permissao LIKE 'Administrador' 

-- Listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento

SELECT Titulo AS Album, YEAR(DataLancamento) AS Lancamento, Localizacao, QtdMinutos AS Dura��o, Ativo, Artistas.Nome AS Artista
FROM Albuns
INNER JOIN Artistas
ON Albuns.IdArtista = Artistas.IdArtista
WHERE Albuns.DataLancamento > '2000'

-- Listar os dados de um usu�rio atrav�s do e-mail e senha

SELECT Nome, Email, Permissao FROM Usuarios
WHERE Email LIKE 's.santos@email.com' AND Senha LIKE '123456'

-- Listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 

SELECT Titulo, DataLancamento, Localizacao, Ativo, AR.Nome AS Artista, E.Nome AS Estilo
FROM Albuns AL
INNER JOIN Artistas AR
ON AR.IdArtista = AL.IdArtista
INNER JOIN AlbunsEstilos
ON AL.IdAlbum = AlbunsEstilos.IdAlbum
INNER JOIN Estilos E
ON AlbunsEstilos.IdEstilo = E.IdEstilo
WHERE AL.Ativo = 'true'









