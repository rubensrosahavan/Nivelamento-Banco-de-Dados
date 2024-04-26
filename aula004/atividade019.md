# Aula 019

### Questão 001
Construa uma tabela que retorne 
- Nome do Cliente
- Data de nascimento 
- CPF
- Nome da cidade que nasceu
- Sigla da cidade que nasceu
- Nome da cidade que reside
- Sigla do estado que reside

## Resposta
	CREATE OR ALTER PROCEDURE EfetuaVendaCliente (
		@CodigoCliente TINYINT,
		@CodigoProduto TINYINT,
		@QuantidadeVendidaProduto TINYINT
	)
	AS
	BEGIN
		BEGIN TRY
			DECLARE @ConsultaSituacaoCliente VARCHAR(256) = (SELECT SituacaoCadastro FROM Cliente WHERE Codigo = @CodigoCliente)
	 
			DECLARE @ConsultaSituacaoProduto VARCHAR(256) = (SELECT Codigo FROM Produto WHERE Codigo = @CodigoProduto)
	 
			IF (@ConsultaSituacaoCliente IS NULL)
				RAISERROR('CLIENTE NÃO CADASTRADO',16,1)
			ELSE
				IF (@ConsultaSituacaoCliente = 0)
					RAISERROR('INATIVO', 16, 1)
			PRINT 'ATIVO'
	 
			--Validação do produto
			IF (@ConsultaSituacaoProduto IS NULL)
				RAISERROR('PRODUTO NÃO CADASTRADO', 16, 1)
			--Inserindo linha na tabela
			INSERT INTO Vendas (CodigoVenda, CodigoProduto, NomeProduto, ValorProduto, QtdProduto, CodigoCliente)
			VALUES ((SELECT MAX(CodigoVenda+1) FROM Vendas), @CodigoProduto, (SELECT Nome FROM Produto WHERE @CodigoProduto = Codigo), (SELECT PrecoUnidade FROM Produto WHERE @CodigoProduto = Codigo), @QuantidadeVendidaProduto, @CodigoCliente)
			PRINT 'VENDA CONCLUIDA COM SUCESSO'
	 
		END TRY
		BEGIN CATCH
			SELECT ERROR_MESSAGE()
		END CATCH
	END
	GO
	 
	EXEC EfetuaVendaCliente @CodigoCliente = 2, @CodigoProduto = 1, @QuantidadeVendidaProduto = 1