-- Exercicio 1.0 > Filmes - DML --

USE Filmes;

INSERT INTO Generos (Nome)
VALUES              ('A��o')
                    ,('Romance');

INSERT INTO Generos  (Nome)
VALUES					 ('Drama');
					
INSERT INTO Filmes (Titulo, idGenero)
VALUES             ('Rambo', 1)
				   ,('Vingadores', 1)
				   ,('Ghost', 2)
				   ,('Di�rio de uma paix�o', 2); 



UPDATE Generos      -- UPDATE = Atualizar/Alterar
SET Nome = 'Romance'
WHERE IdGenero = 2;

DELETE FROM Filmes
WHERE IdFilme = 3;