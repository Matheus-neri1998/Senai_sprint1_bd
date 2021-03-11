-- Projeto Gufi - DDL

-- Cria um banco de dados nomeado "Projeto_Gufi" 
CREATE DATABASE Projeto_Gufi;
GO
-- Comando GO faz uma "pausa"; No caso ele faz a leitura antes de executar todo o arquivo, sem precisar selecionar algum bloco

-- Define o banco de dados que será utilizado
USE Projeto_Gufi;
GO

CREATE TABLE TiposUsuarios -- Tabela TiposUsuarios
(
	IdTipoUsuario		INT PRIMARY KEY IDENTITY -- Chave Primária/PK = PRIMARY KEY; IDENTITY = Identidade. Ele não se repete, e autoincrementa;
	,TituloTipoUsuario  VARCHAR (100) UNIQUE NOT NULL /* Entre parênteses está o limite de caracteres;  
	NOT NULL = É obrigatório preencher o campo
    UNIQUE é único, e exemplificando no campo/coluna só pode ser preenchido por um tipo apenas, e não se repete */
);
GO

CREATE TABLE Usuarios -- Tabela Usuarios
(
	 IdUsuario		INT PRIMARY KEY IDENTITY 
	,IdTipoUsuario	INT FOREIGN KEY REFERENCES TiposUsuarios (IdTipoUsuario) /* INT = Valor Inteiro; 
	 FOREIGN KEY = Chave Estrangeira;
	 REFERENCES = Referência; No exemplo acima "IdTipoUsuario" da tabela "Usuarios" faz referencia à coluna "IdTipoUsuario" que é uma PK 
     da tabela "TiposUsuarios" */
	,NomeUsuario    VARCHAR (100) NOT NULL -- Limite do VARCHAR definido em 100/255; Limite máximo é 255;
	,Email		    VARCHAR (255) UNIQUE  NOT NULL
	,Senha			VARCHAR (255) NOT NULL
);
GO

CREATE TABLE Instituicoes -- Tabela Instituicoes
(
	IdInstitucao		INT PRIMARY KEY IDENTITY
	,Cnpj				CHAR (14) UNIQUE NOT NULL -- CHAR preenche o valor já estabelecido 
	,NomeFantasia		VARCHAR (255) UNIQUE NOT NULL -- VARCHAR é um tipo variável
	,Endereco			VARCHAR (255) UNIQUE NOT NULL
);
GO

CREATE TABLE TiposEventos -- Tabela TiposEventos
(
	IdTipoEvento		INT PRIMARY KEY IDENTITY
	,TituloTipoEvento	VARCHAR (255) UNIQUE NOT NULL
);
GO

CREATE TABLE Eventos -- Tabela Eventos
(
	IdEvento		INT PRIMARY KEY IDENTITY
	,IdTipoEvento	INT FOREIGN KEY REFERENCES TiposEventos (IdTipoEvento) /* Entre parentes está a coluna que faz referência
	  a uma tabela anterior. No exemplo "IdTipoEvento" da tabela "Eventos" faz referência a tabela "TiposEventos". */
	,IdInstituicao	INT FOREIGN KEY REFERENCES Instituicoes (Idinstitucao)
	,NomeEvento		VARCHAR (255) NOT NULL
	,AcessoLivre	BIT DEFAULT (1) /* BIT é um Binário; DEFAULT é um padrão e implementa automaticamente, 
	e nesse exemplo é o valor "1" */
	,DataEvento		DATE NOT NULL -- DATE = Data
	,Descricao		TEXT -- TEXT = Texto
);
GO

CREATE TABLE Presencas -- Tabela Presencas
(
	IdPresenca		INT PRIMARY KEY IDENTITY
	,IdUsuario		INT FOREIGN KEY REFERENCES Usuarios (IdUsuario)
	,IdEvento		INT FOREIGN KEY REFERENCES Eventos (IdEvento)
	,Situacao		VARCHAR (100) NOT NULL
);
GO



