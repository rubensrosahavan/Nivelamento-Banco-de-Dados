# Atividade 011

### Questão 01
Crie uma tabela para armazenar os produtos
Guarde o Código, o Nome e o valor unitário, então insira 10 produtos na tabela

## Resposta
    CREATE TABLE Produto(
	   Codigo       tinyint       NOT NULL
	 , Nome         varchar(256)  NOT NULL
	 , PrecoUnidade	numeric(10,2) NOT NULL
	 );
	 GO

	 ALTER TABLE Produto ADD CONSTRAINT [PK_Produto_Codigo] PRIMARY KEY (Codigo);
	 GO

	 INSERT INTO Produto (Codigo, Nome, PrecoUnidade)
	   VALUES (1, 'Tinta transparente para alvenaria', 19.99),
			  (2, 'Pincel sem ponta', 28.89),
			  (3, 'Caneta Azul de duas cores', 37.79),
			  (4, 'Lápis de grafite 0.7', 46.69),
			  (5, 'Balde de plástico furado', 55.59),
			  (6, 'Escada retrátil de madeira', 64.49),
			  (7, 'Espelho sem aço', 73.39),
			  (8, 'Broca de madeira 9mm', 82.29),
			  (9, 'Lenço de papel úmido', 90.19),
			  (10,'Saco de batatas sem fundo', 22.75);
	GO
	
### Questão 02
Crie outra tabela para armazenar a venda de produtos com a seguinte estrutura:
- Codigo da venda
- Codigo do produto
- Nome do produto
- Valor unitario do produto
- Quantidade do produto vendido
- Codigo do cliente
E então, cadastre 10 vendas

## Resposta
	CREATE TABLE Vendas (
	   CodigoVenda      tinyint NOT NULL
	 , CodigoProduto    tinyint NOT NULL
	 , NomeProduto      varchar(256) NOT NULL
	 , ValorProduto     numeric(10,2) NOT NULL
	 , QtdProduto       tinyint NOT NULL
	 , CodigoCliente    tinyint NOT NULL
	 );
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



