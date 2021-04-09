-- Exercicio 1.0 > Filmes - DML --

USE Filmes;

INSERT INTO Generos (Nome)
VALUES              ('Ação')
                    ,('Terror')

INSERT INTO Filmes (IdGenero, Titulo)
VALUES              (1, 'Vingadores')
                   ,(2, 'Invocação do Mal');
GO
                     
