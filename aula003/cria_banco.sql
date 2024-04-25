/*
	Nome do Script: cria_banco.sql
	Autor: Rubens Rosa
	Data de Criação: 25/04/2024
	Descrição: Este script tem como objetivo registrar as 
	operações necessárias para criar o banco 'Havan'
	e suas tabelas com as devidas chaves primárias e
	constraints. Ele pode ser usado como um ponto de 
	retorno para as atividades em sala de aula.
*/

CREATE DATABASE Havan
GO

USE Havan
GO

--> Inicio tabela Cidade
CREATE TABLE Cidade(
      Codigo tinyint      NOT NULL -- Define a coluna Codigo como PK da tabela
    , Nome   varchar(256) NOT NULL
);
GO

--Adiciona o campo Código como a chave primária da tabela
ALTER TABLE Cidade ADD CONSTRAINT [PK_Cidade_Codigo] PRIMARY KEY (Codigo)
GO

INSERT INTO Cidade 
 VALUES ('Brusque'),
		('Blumenau'),
		('Guabiruba'),
		('Gaspar'),
		('Ilhota'),
		('Timbó'),
		('Tijucas'),
        ('Florianópolis');
GO
--> Fim tabela Cidade

--> Inicio tabela Estado
CREATE TABLE Estado(
     Codigo tinyint      NOT NULL
   , Nome   varchar(256) NOT NULL
   , Sigla  char(2)      NOT NULL
);
GO

INSERT INTO Estado
 VALUES  ('Santa Catarina','SC'),
         ('São Paulo','SP'),
		 ('Rio de Janeiro','RJ'),
		 ('Rio Grande do Sul','RS'),
		 ('Tocantins','TO'),
		 ('Parná','PR'),
		 ('Amazonas','AM'),
		 ('Rondônia','RO'),
		 ('Mato Grosso','MT'),
		 ('Mato Grosso do Sul','MS');
GO

--Adiciona o campo Codigo como a chave primária da tabela
ALTER TABLE Estado ADD CONSTRAINT [PK_Estado_Codigo] PRIMARY KEY (Codigo)
GO
--> Fim tabela Estado

--> Inicio tabela Cliente

DROP TABLE IF EXISTS Cliente
GO

--Cria a tabela Cliente e insere 10 registros
CREATE TABLE Cliente (
     Codigo              tinyint      NOT NULL
   , Nome                varchar(256) NOT NULL
   , DataNascimento      date         NOT NULL
   , Cpf                 varchar(14)  NOT NULL
   , CodCidadeNascimento tinyint      NOT NULL
   , CodEstadoNascimento tinyint      NOT NULL
   , CodCidadeResidencia tinyint      NOT NULL
   , CodEstadoResidencia tinyint      NOT NULL
   , EndLogradouro       varchar(256) NOT NULL
   , EndNumero           smallint     NOT NULL
   , Cep                 int          NOT NULL 
);
GO

INSERT INTO Cliente (Codigo,Nome,DataNascimento,Cpf,CodCidadeNascimento,CodEstadoNascimento,CodCidadeResidencia,CodEstadoResidencia,EndLogradouro,EndNumero,Cep)
 VALUES (1, 'Genoveva Armindo da Silva'   , '1970-01-01', '109.135.618-90', 1,1,1,1,'Rua numero zero'  , 10, 10045678),
        (2, 'João Cesar Augusto'          , '1990-04-07', '217.230.272-98', 1,1,1,1,'Rua numero um'    , 20, 13445679),
		(3, 'Joana Almeida Santos'        , '1950-08-04', '325.339.374-70', 1,1,1,1,'Rua numero dois'  , 30, 12455973),
		(4, 'Cleiton de Souza Prado'      , '2005-01-23', '434.438.473-96', 1,1,1,1,'Rua numero tres'  , 40, 12356648),
		(5, 'Esmeraldina Silva e Lima'    , '1980-04-22', '543.537.528-50', 1,1,1,1,'Rua numero quatro', 50, 12746578),
		(6, 'Augusto Pena'                , '1979-09-17', '652.636.674-94', 1,1,1,1,'Rua numero cinco' , 60, 12646788),
		(7, 'Leopoldina de Bragança'      , '2006-05-11', '765.734.718-30', 1,1,1,1,'Rua numero seis'  , 70, 12375689),
		(8, 'Cristóvan Buarque de Orleans', '1976-02-20', '871.835.874-92', 1,1,1,1,'Rua numero sete'  , 80, 12835679),
		(9, 'Barbara Souto Coelho Campo'  , '2001-03-31', '985.425.978-10', 1,1,1,1,'Rua numero oito'  , 90, 19325678);
GO

--Adiciona PK na Cliente.Codigo
ALTER TABLE Cliente ADD CONSTRAINT [PK_Cliente_Codigo] PRIMARY KEY (Codigo);
GO

--Adiciona UK na Cliente.Cpf
ALTER TABLE Cliente ADD CONSTRAINT [UK_Cliente_Cpf] UNIQUE (Cpf);
GO

--Adiciona DF na Cliente.DataNascimento
ALTER TABLE Cliente ADD CONSTRAINT [DF_Cliente_DataNascimento] DEFAULT '1900-01-01' FOR DataNascimento
GO

--Adiciona FK e referencia as colunas CidadeNascimento
ALTER TABLE [dbo].[Cliente] 
  ADD CONSTRAINT [FK_Cliente_CodCidadeNascimento_Cidade_Codigo] FOREIGN KEY([CodCidadeNascimento]) REFERENCES [dbo].[Cidade] ([Codigo])
GO

--Adiciona FK e referencia as colunas EstadoNascimento
ALTER TABLE [dbo].[Cliente] 
  ADD CONSTRAINT [FK_Cliente_CodEstadoNascimento_Estado_Codigo] FOREIGN KEY([CodEstadoNascimento]) REFERENCES [dbo].[Estado] ([Codigo])
GO

--Adiciona FK e referencia as colunas CidadeResidencia
ALTER TABLE [dbo].[Cliente] 
  ADD CONSTRAINT [FK_Cliente_CodCidadeResidencia_Cidade_Codigo] FOREIGN KEY([CodCidadeResidencia]) REFERENCES [dbo].[Cidade] ([Codigo])
GO

--Adiciona FK e referencia as colunas EstadoResidencia
ALTER TABLE [dbo].[Cliente] 
  ADD CONSTRAINT [FK_Cliente_CodEstadoResidencia_Estado_Codigo] FOREIGN KEY([CodEstadoResidencia]) REFERENCES [dbo].[Estado] ([Codigo])
GO
--> Fim tabela Cliente

--> Inicio tabela Produto
CREATE TABLE Produto(
   Codigo       tinyint       NOT NULL
 , Nome         varchar(256)  NOT NULL
 , PrecoUnidade	numeric(10,2) NOT NULL
 );
 GO

 ALTER TABLE Produto ADD CONSTRAINT [PK_Produto_Codigo] PRIMARY KEY (Codigo);
 GO
	
INSERT INTO Produto (Codigo, Nome, PrecoUnidade)
 VALUES
        (1, 'Conjunto de Chaves de Fenda', 72.71),
	    (2, 'Alicate', 89.40),
	    (3, 'Tapete Verde', 91.65),
	    (4, 'Martelo', 80.18),
	    (5, 'Abridor de Lata', 34.12),
	    (6,'Conjunto de Utensílios de Cozinha', 56.23),
	    (7, 'Tapete Vermelho', 67.89),
	    (8, 'Fita Métrica', 93.40),
	    (9, 'Tapete Macio', 72.35),
	    (10, 'Espátula de Cozinha', 14.93);
--> Fim tabela Produto

--> Inicio tabela venda
CREATE TABLE Vendas (
   CodigoVenda      tinyint NOT NULL
 , CodigoProduto    tinyint NOT NULL
 , NomeProduto      varchar(256) NOT NULL
 , ValorProduto     numeric(10,2) NOT NULL
 , QtdProduto       tinyint NOT NULL
 , CodigoCliente    tinyint NOT NULL
 );
 GO

 --Adiciona UK que não permite vendas com o mesmo ID
ALTER TABLE [dbo].[Vendas]
	ADD CONSTRAINT [UK_Vendas_CodigoVenda] UNIQUE (CodigoVenda)
GO

--Adiciona UK que não permite produtos com o mesmo ID
ALTER TABLE [dbo].[Vendas]
	ADD CONSTRAINT [UK_Vendas_CodigoProduto] UNIQUE (CodigoProduto)
GO

--Adiciona FK e referencia as colunas CodigoProduto e Produto.Codigo
ALTER TABLE [dbo].[Vendas]
	ADD CONSTRAINT [FK_Vendas_CodigoProduto_Produto_Codigo] 
	FOREIGN KEY ([CodigoProduto]) REFERENCES [dbo].[Produto] ([Codigo])
GO

--Adiciona FK e referencia as colunas CodigoCliente e Cliente.Codigo
ALTER TABLE [dbo].[Vendas]
	ADD CONSTRAINT [FK_Vendas_CodigoCliente_Cliente_Codigo] 
	FOREIGN KEY ([CodigoCliente]) REFERENCES [dbo].[Cliente] ([Codigo])
GO

INSERT INTO Vendas (CodigoVenda, CodigoProduto, NomeProduto, ValorProduto, QtdProduto, CodigoCliente)
	VALUES 
		(1, 1, 'Conjunto de Chaves de Fenda', 72.71, 2, 1),
		(2, 2, 'Alicate', 89.40, 1, 1),
		(3, 3, 'Tapete Verde', 91.65, 1, 2),
		(4, 4, 'Martelo', 80.18, 1, 3),
		(5, 5, 'Abridor de Lata', 34.12, 2, 4),
		(6, 6, 'Conjunto de Utensílios de Cozinha', 56.23, 3, 5),
		(7, 7, 'Tapete Vermelho', 67.89, 2, 6),
		(8, 8, 'Fita Métrica', 93.40, 1, 7),
		(9, 9, 'Tapete Macio', 72.35, 2, 8),
		(10, 10, 'Espátula de Cozinha', 14.93, 1, 9);
	GO
--> Fim tabela venda