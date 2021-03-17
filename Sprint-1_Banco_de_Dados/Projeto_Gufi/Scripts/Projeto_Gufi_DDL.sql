-- Projeto Gufi - DDL

-- Cria um banco de dados nomeado "Projeto_Gufi" 
CREATE DATABASE Projeto_Gufi;
GO
-- Comando GO faz uma "pausa"; No caso ele faz a leitura antes de executar todo o arquivo, sem precisar selecionar algum bloco

-- Define o banco de dados que ser� utilizado
USE Projeto_Gufi;
GO

CREATE TABLE TiposUsuarios -- Tabela TiposUsuarios
(
	IdTipoUsuario		INT PRIMARY KEY IDENTITY -- Chave Prim�ria/PK = PRIMARY KEY; IDENTITY = Identidade. Ele n�o se repete, e autoincrementa;
	,TituloTipoUsuario  VARCHAR (100) UNIQUE NOT NULL /* Entre par�nteses est� o limite de caracteres;  
	NOT NULL = � obrigat�rio preencher o campo
    UNIQUE � �nico, e exemplificando no campo/coluna s� pode ser preenchido por um tipo apenas, e n�o se repete */
);
GO

CREATE TABLE Usuarios -- Tabela Usuarios
(
	 IdUsuario		INT PRIMARY KEY IDENTITY 
	,IdTipoUsuario	INT FOREIGN KEY REFERENCES TiposUsuarios (IdTipoUsuario) /* INT = Valor Inteiro; 
	 FOREIGN KEY = Chave Estrangeira;
	 REFERENCES = Refer�ncia; No exemplo acima "IdTipoUsuario" da tabela "Usuarios" faz referencia � coluna "IdTipoUsuario" que � uma PK 
     da tabela "TiposUsuarios" */
	,NomeUsuario    VARCHAR (100) NOT NULL -- Limite do VARCHAR definido em 100/255; Limite m�ximo � 255;
	,Email		    VARCHAR (255) UNIQUE  NOT NULL
	,Senha			VARCHAR (255) NOT NULL
);
GO

CREATE TABLE Instituicoes -- Tabela Instituicoes
(
	IdInstitucao		INT PRIMARY KEY IDENTITY
	,Cnpj				CHAR (14) UNIQUE NOT NULL -- CHAR preenche o valor j� estabelecido 
	,NomeFantasia		VARCHAR (255) UNIQUE NOT NULL -- VARCHAR � um tipo vari�vel
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
	,IdTipoEvento	INT FOREIGN KEY REFERENCES TiposEventos (IdTipoEvento) /* Entre parentes est� a coluna que faz refer�ncia
	  a uma tabela anterior. No exemplo "IdTipoEvento" da tabela "Eventos" faz refer�ncia a tabela "TiposEventos". */
	,IdInstituicao	INT FOREIGN KEY REFERENCES Instituicoes (Idinstitucao)
	,NomeEvento		VARCHAR (255) NOT NULL
	,AcessoLivre	BIT DEFAULT (1) /* BIT � um Bin�rio; DEFAULT � um padr�o e implementa automaticamente, 
	e nesse exemplo � o valor "1" */
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



