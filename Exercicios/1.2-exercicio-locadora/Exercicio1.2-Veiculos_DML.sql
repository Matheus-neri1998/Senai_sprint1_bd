-- Exercício 1.2 > Veículos - DML -- 

USE Empresa

INSERT INTO Empresas(Nome) -- Nome da tabela + coluna
VALUES				('Unidas')
					,('Localiza');

INSERT INTO Marca(Nome) -- Tabela Marca
VALUES			('Ford')
				,('GM')
				,('Fiat');

INSERT INTO Modelos(Descricao, IdMarca) -- Tabela Modelos
VALUES				('Fiesta', 1 )
					,('Onix', 2)
					,('Argo', 3);

INSERT INTO Cliente (Nome, CPF) -- Tabela Cliente
VALUES				('Saulo', 1E+11)
					,('Caique', 145289)

INSERT INTO Veiculos (IdModelo, Placa, IdEmpresa) -- Tabela Veiculos
VALUES				(1, 'HEL1805', 1 )
					,(2, 'FER1010', 1)
					,(3, 'POR1978', 2)
					,(1, 'LEM9876', 2)

INSERT INTO Aluguel (IdCliente, IdVeiculo, DataInicio, DataFim) -- Tabela Alugueis --
VALUES				(1, 1, 19/01/2019, 20/01/2019)
					,(1, 2, 20/01/2019, 21/01/2019)
					,(2, 3, 21/01/2019, 21/01/2019)
					,(2, 2, 22/01/2019, 22/01/2019)