-- Projeto Gufi - DML 

USE Projeto_Gufi;

INSERT INTO TiposUsuarios (TituloTipoUsuario) -- Tabela TiposUsuarios
VALUES					  ('Administrador')
						  ,('Comum');
GO

INSERT INTO Usuarios  (IdTipoUsuario, NomeUsuario, Email, Senha) -- Tabela Usuarios 
VALUES				  (1, 'Administrador', 'adm@adm.com', 'adm123') 
					 ,(2, 'Caique', 'caique@email.com', 'caique123')
					 ,(2, 'Saulo', 'saulo@email.com', 'saulo123');
					 GO

INSERT INTO Instituicoes (Cnpj, NomeFantasia, Endereco) -- Tabela Instituicoes
VALUES					 ('12345678912345', 'Escola SENAI de Informática', 'Al. Barão de Limeira, 538');
GO

INSERT INTO TiposEventos (TituloTipoEvento) -- Tabela TiposEventos
VALUES					 ('C#')
						 ,('ReactJs')
						 ,('SQL');
GO

INSERT INTO Eventos (IdTipoEvento, IdInstituicao, NomeEvento, AcessoLivre, DataEvento, Descricao) -- Tabela Eventos
VALUES				 (1, 1, 'POO', 1, '07/04/2021', 'Conceitos sobre os pilares da programação orientada a objetos')
				    ,(2, 1, 'Ciclo de Vida', 0, '08/04/2020', 'Como utilizar os ciclos de vida com a biblioteca ReactJs')
					,(3, 1, 'Introdução ao SQL', 1, '09/04/2021', 'Comandos básicos utilizando SQL Server');
GO

INSERT INTO Presencas (IdUsuario, IdEvento, Situacao) -- Tabela Presenca
VALUES				  (2, 2, 'Não Confirmada')
					 ,(2, 3, 'Confirmada')
					 ,(3, 1, 'Confirmada');
GO