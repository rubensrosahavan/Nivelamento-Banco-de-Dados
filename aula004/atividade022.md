# Atividade 022

### Questão 01
Crie uma coluna SituacaoCadastro com as colunas 
- Nome: SituacaoCadastro
- Não pode aceitar nulos
- Os valores aceitos são de 0 a 5

Com o que você aprendeu até o momento, crie uma procedure conforme a definição
Nome: EfetuaVendaCliente
Parametro de Entrada: Codigo do cliente
Comportamento:
No corpo da procedure deve haver uma query para validar se o cliente existe no cadastro, e caso existir, se a situação é ativo
Retornos:
Se estiver ativo, imprimir ok
Se nao existir, ocorre exception "!!! ERRO - Cliente não encontrado"
Se existir, porém não estiver ativo, ocorre exception "!!! ERRO - Cliente não está com cadastro ativo"

## Resposta
	CREATE OR ALTER PROCEDURE EfetuaVendaCliente (
	@CodigoCliente int 
	)
	AS
	BEGIN 
		BEGIN TRY
			IF EXISTS(SELECT 1 SituacaoCadastro FROM Cliente WHERE Codigo = @CodigoCliente)
				BEGIN
					IF (SELECT SituacaoCadastro FROM Cliente WHERE Codigo = @CodigoCliente) = 0
						RAISERROR('!!! ERRO - Cliente não está com cadastro ativo',16,1)
					ELSE
						RAISERROR('Cliente Ativo', 16, 1)
				END
			ELSE
				RAISERROR('!!! ERRO - Cliente não cadastrado', 16, 1)
		END TRY
		BEGIN CATCH
			SELECT ERROR_MESSAGE ()
		END CATCH
	END
	GO