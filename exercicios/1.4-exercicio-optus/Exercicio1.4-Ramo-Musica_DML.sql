-- Exercício 1.4 > Ramo Musical - DML -- 

USE Optus

INSERT INTO Artistas (Nome) -- Tabela Artsitas --
VALUES               ('Angra')
					 ,('Madonna')
					 ,('Shamam');

INSERT INTO Estilos (Nome) -- Tabela Estilos --
VALUES              ('Rock')
				    ,('Pop')
					,('Metal');

INSERT INTO AlbunsEstilos (IdEstilo) -- Tabela AlbunsEstilos --
VALUES                    (1)
						  ,(3)
						  ,(1);

INSERT INTO Albuns (Titulo, DataLancamento, Localizacao, QtdMinutos, Ativo, IdArtista) -- Tabela Albuns --
VALUES             ('Holy Land', 1996, 'Brasil', 57, 1, 1)
				  ,('MDNA', 2012, 'EUA', 75, 0, 2 );

INSERT INTO Usuarios (Nome, Email, Senha, Permissao) -- Tabela Usuarios -- 
VALUES               ('Saulo', 's.santos@email.com', 123456, 'Administrador')
					 ,('Caique', 'c.zaneti@email.com', 123456, 'Comum');