-- Exercicio 1.0 > Filmes - DML --

USE Filmes;

INSERT INTO Generos (Nome)
VALUES              ('A��o')
                    ,('Terror')

INSERT INTO Filmes (IdGenero, Titulo)
VALUES              (1, 'Vingadores')
                   ,(2, 'Invoca��o do Mal');
GO
                     
