-- Exercício 1.3 - Clínica - DML --

USE Clinica;

INSERT INTO Donos(Nome) -- Nome da Tabela + coluna --
VALUES      ('Paulo')  -- Inserindo os valores da tabela nome, que é uma chave estrangeira --
			,('Odirlei'); -- Tabela 1 - Donos --

INSERT INTO TiposPets(Descricao) -- Tabela 2 - TiposPets --
VALUES		('Cachorro')
			,('Gato');

INSERT INTO Racas(Descricao, IdTipoPet) -- Tabela 3 - Racas com duas colunas --			 
VALUES			('Poodle', 1) -- Coluna 1 > Descricao/ Coluna 2 > IdTipoPet estruturado e separados por vírgula na mesma linha em "VALUES" --
				,('Labrador', 1)
				,('SRD', 1)
				,('Siamês', 2);

INSERT INTO Pets (Nome, DataNascimento, IdRaca, IdDono) -- Tabela 4 - Pets com 4 colunas --
VALUES			('Junior', 10/10/2018 , 1, 1) 
				,('Loli', 18/05/2017, 4, 1)
				,('Sammy', 16/06/2016, 1, 2);

INSERT INTO Clinicas (RazaoSocial, CNPJ, Endereco) -- Tabela 5 - Clínicas --
VALUES				 ('Meu Pimpão', 12345, 'Av. Barão de Limeira, 539');

INSERT INTO Veterinarios (Nome, CRMV, IdClinica) -- Tabela 6 - Veterinarios --
VALUES					 ('Saulo', 4E+05, 1)
						 ,('Caique', 7E+05, 1);

INSERT INTO Atendimentos (Descricao, DataAtendimento, IdVeterinario, IdPet ) -- Tabela 7 - Atendimentos --
VALUES					 ('Restam 10 dias de vida', 22/01/2019, 1, 1)
						 ,('O paciente está OK', 21/01/2019, 2, 2)
						 ,('O paciente está OK', 22/01/2019, 2, 1);
			
