-- Projeto Gufi - DQL/JOINS 

USE Projeto_Gufi;
GO

SELECT * FROM TiposUsuarios;
SELECT * FROM Usuarios;
SELECT * FROM Instituicoes;
SELECT * FROM TiposEventos;
SELECT * FROM Eventos;
SELECT * FROM Presencas;

SELECT IdUsuario, TituloTipoUsuario, NomeUsuario, Email FROM Usuarios -- Selecionando as colunas da tabela "Usuarios"
INNER JOIN TiposUsuarios -- Juntando a tabela "Usuarios" com a "TiposUsuarios"
ON Usuarios.IdTipoUsuario = TiposUsuarios.IdTipoUsuario 
/* Juntando a coluna IdTipoUsuario da Tabela "TiposUsuarios" com a tabela "Usuarios" */

SELECT NomeFantasia [Local], IdEvento, NomeEvento, TituloTipoEvento Tema, DataEvento [Data] -- AS (ALIAS) = Altera o nome da coluna 
FROM Eventos E /* Selecionando as colunas da tabela "Usuarios", e acrescentando as colunas das tabelas 
que juntaram através do comando "JOIN */
INNER JOIN Instituicoes I -- Juntando com a tabela "Eventos" com a tabela "Institucoes"
ON E.IdInstituicao = I.IdInstitucao -- Alterando o nome da tabela "Instituicoes" para "I" com o comando AS
-- Juntando a coluna "IdInstituicao" da tabela "Instituicoes" com a tabela "Eventos"
INNER JOIN TiposEventos TE-- Juntando a tabela "TiposEventos" com a tabela "Eventos"
ON E.IdTipoEvento = TE.IdTipoEvento


SELECT NomeFantasia [Local], NomeUsuario, Email, NomeEvento AS NomeDoEvento, 
TituloTipoEvento Tema, DataEvento, Situacao FROM Usuarios U
INNER JOIN Presencas P
ON U.IdUsuario = P.IdUsuario
INNER JOIN Eventos E
ON E.IdEvento = P.IdEvento
INNER JOIN TiposEventos TE
ON E.IdTipoEvento = TE.IdTipoEvento
INNER JOIN Instituicoes I
ON E.IdInstituicao = I.IdInstitucao

SELECT NomeUsuario, Email FROM Usuarios
WHERE Email = 'saulo@email.com' AND Senha = 'saulo123'; -- WHERE = Condição
