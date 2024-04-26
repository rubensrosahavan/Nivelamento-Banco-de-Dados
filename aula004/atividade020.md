# Atividade 20

### Questão 01
Altere a tabela cliente para adicionar uma nova coluna
- Nome: PossuiCartaoFidelidade
- Só pode armazenar 0 e 1 (tipo bit)
- Quando não for informado no INSERT valor padrão = 0
- Banco não pode permitir valor diferente de 0 ou 1

Após terminar, constraua duas queries com transaction queries
- Tente fazer o INSERT de um novo cliente com o valor da coluna PossuiCartaoFidelidade fora dos valores estabelecidos
- Tente fazer um UPDATE de um cliente que já existe na base fora dos valores estabelecidos

## Resposta
	ALTER TABLE Cliente
	ADD PossuiCartaoFidelidade tinyint DEFAULT 0 NOT NULL
	CONSTRAINT CHK_PossuiCartaoFidelidade_Cliente
	CHECK (PossuiCartaoFidelidade BETWEEN 0 AND 1)
	GO
		
	-- Insert de um novo cliente com os valores fora do padrão
	INSERT INTO Cliente
	(Codigo, Nome, DataNascimento, Cpf, CodCidadeNascimento, CodEstadoNascimento, CodCidadeResidencia, CodEstadoResidencia, EndLogradouro, EndNumero, Cep, PossuiCartaoFidelidade)
	VALUES
	(14, 'Nome do Cliente', '2000-01-01', '143.457.780-00', 1, 1, 1, 1, 'Rua Exemplo', 123, 12345678, 2);

	-- Update de cliente com os valores fora do padrão
	UPDATE Cliente
	SET PossuiCartaoFidelidade = 2
	WHERE Codigo = 1;

	SELECT * FROM Cliente
