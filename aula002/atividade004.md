# Atividade 04

## Objetivo, exercitar os conceitos aprendidos em sala de aula

### Questão 01:
Faça o insert de 10 clientes na tabela que foi criada na etapa anterior.

Faça o INSERT com transações (BEGIN TRAN) e sem transação. Faça o COMMIT após um insert, consulte os dados da tabela, então execute um ROLLBACK. Por fim, tire suas conclusões sobre as diferenças entre cada operação

## Resposta:
    USE Havan
	GO

	/*
	    ===Inserindo as informações no banco de dados com BEGIN TRAN e COMMIT===
		
		Realizando as inserções desta forma, podemos perceber que o banco
	    "trava" ao executar a transaction, e ele bloqueia novas consultas ao 
		objeto até que seja informado a cláusula "COMMIT". Apesar de isso pa-
		recer um ponto negativo, temos a garantia de verificar os dados antes
		de aplicar as alterações no disco do nosso servidor.
	*/

	BEGIN TRAN

	INSERT INTO Cliente (
		  Codigo
		, Nome
		, DataNascimento
		, Cpf
		, CidadeNascimento
		, EstadoNascimento
		, CidadeResidencia
		, EstadoResidencia
		, EndLogradouro
		, EndNumero
		, Cep
	) 
	VALUES
		(1, 'João Silva', '1990-05-15', '123.456.789-00', 'São Paulo', 'SP', 'Rio de Janeiro', 'RJ', 'Rua das Flores', '123', '20000000'),
		(2, 'Maria Oliveira', '1985-09-20', '987.654.321-00', 'Rio de Janeiro', 'RJ', 'São Paulo', 'SP', 'Avenida dos Bandeirantes', '456', '10000000'),
		(3, 'Carlos Santos', '1978-03-10', '456.789.123-00', 'Salvador', 'BA', 'Salvador', 'BA', 'Rua das Palmeiras', '789', '40000000'),
		(4, 'Ana Souza', '1995-12-03', '789.123.456-00', 'Porto Alegre', 'RS', 'Porto Alegre', 'RS', 'Avenida Brasil', '321', '90000000'),
		(5, 'Paulo Lima', '1982-07-28', '234.567.890-00', 'Fortaleza', 'CE', 'Fortaleza', 'CE', 'Rua da Praia', '567', '60000000'),
		(6, 'Fernanda Costa', '1998-01-22', '567.890.123-00', 'Recife', 'PE', 'Recife', 'PE', 'Travessa das Águias', '890', '50000000'),
		(7, 'Rafaela Pereira', '1993-11-17', '345.678.901-00', 'Manaus', 'AM', 'Manaus', 'AM', 'Avenida das Flores', '234', '69000000'),
		(8, 'Gustavo Oliveira', '1989-04-05', '678.901.234-00', 'Belém', 'PA', 'Belém', 'PA', 'Rua dos Pinheiros', '901', '66000000'),
		(9, 'Lucas Almeida', '1980-08-12', '890.123.456-00', 'Goiânia', 'GO', 'Goiânia', 'GO', 'Alameda das Estrelas', '345', '70000000'),
		(10, 'Amanda Santos', '1990-06-30', '012.345.678-00', 'Brasília', 'DF', 'Brasília', 'DF', 'Quadra dos Governadores', '678', '70000000');

	COMMIT 
	GO
	
	/*
		===Inserindo as informações no banco de dados com BEGIN TRAN e ROLLBACK===
		
		A execução é similar a com o COMMIT, porém, ao invés de aplicar as altera-
		ções no disco, o servidor apenas descarta a consulta e a tabela que defini-
		mos durante a execução.
	*/
	
	BEGIN TRAN

	INSERT INTO Cliente (
		  Codigo
		, Nome
		, DataNascimento
		, Cpf
		, CidadeNascimento
		, EstadoNascimento
		, CidadeResidencia
		, EstadoResidencia
		, EndLogradouro
		, EndNumero
		, Cep
	) 
	VALUES
		(1, 'João Silva', '1990-05-15', '123.456.789-00', 'São Paulo', 'SP', 'Rio de Janeiro', 'RJ', 'Rua das Flores', '123', '20000000'),
		(2, 'Maria Oliveira', '1985-09-20', '987.654.321-00', 'Rio de Janeiro', 'RJ', 'São Paulo', 'SP', 'Avenida dos Bandeirantes', '456', '10000000'),
		(3, 'Carlos Santos', '1978-03-10', '456.789.123-00', 'Salvador', 'BA', 'Salvador', 'BA', 'Rua das Palmeiras', '789', '40000000'),
		(4, 'Ana Souza', '1995-12-03', '789.123.456-00', 'Porto Alegre', 'RS', 'Porto Alegre', 'RS', 'Avenida Brasil', '321', '90000000'),
		(5, 'Paulo Lima', '1982-07-28', '234.567.890-00', 'Fortaleza', 'CE', 'Fortaleza', 'CE', 'Rua da Praia', '567', '60000000'),
		(6, 'Fernanda Costa', '1998-01-22', '567.890.123-00', 'Recife', 'PE', 'Recife', 'PE', 'Travessa das Águias', '890', '50000000'),
		(7, 'Rafaela Pereira', '1993-11-17', '345.678.901-00', 'Manaus', 'AM', 'Manaus', 'AM', 'Avenida das Flores', '234', '69000000'),
		(8, 'Gustavo Oliveira', '1989-04-05', '678.901.234-00', 'Belém', 'PA', 'Belém', 'PA', 'Rua dos Pinheiros', '901', '66000000'),
		(9, 'Lucas Almeida', '1980-08-12', '890.123.456-00', 'Goiânia', 'GO', 'Goiânia', 'GO', 'Alameda das Estrelas', '345', '70000000'),
		(10, 'Amanda Santos', '1990-06-30', '012.345.678-00', 'Brasília', 'DF', 'Brasília', 'DF', 'Quadra dos Governadores', '678', '70000000');

	ROLLBACK
	GO
	
	/*
		===Inserindo as informações no banco de dados sem BEGIN TRAN, sem COMMIT e sem ROLLBACK===
		Ao realizar as inserções desta forma, o banco aplica diretamente as alterações que defini-
		mos na cláusula INSERT. Ele não espera a confirmação do usuário, e não exibe a tabela para
		a confirmação dos resultados.
	*/
	USE Havan
	GO

	--Inserindo as informações no banco de dados com BEGIN TRAN e COMMIT

	INSERT INTO Cliente (
		  Codigo
		, Nome
		, DataNascimento
		, Cpf
		, CidadeNascimento
		, EstadoNascimento
		, CidadeResidencia
		, EstadoResidencia
		, EndLogradouro
		, EndNumero
		, Cep
	) 
	VALUES
		(1, 'João Silva', '1990-05-15', '123.456.789-00', 'São Paulo', 'SP', 'Rio de Janeiro', 'RJ', 'Rua das Flores', '123', '20000000'),
		(2, 'Maria Oliveira', '1985-09-20', '987.654.321-00', 'Rio de Janeiro', 'RJ', 'São Paulo', 'SP', 'Avenida dos Bandeirantes', '456', '10000000'),
		(3, 'Carlos Santos', '1978-03-10', '456.789.123-00', 'Salvador', 'BA', 'Salvador', 'BA', 'Rua das Palmeiras', '789', '40000000'),
		(4, 'Ana Souza', '1995-12-03', '789.123.456-00', 'Porto Alegre', 'RS', 'Porto Alegre', 'RS', 'Avenida Brasil', '321', '90000000'),
		(5, 'Paulo Lima', '1982-07-28', '234.567.890-00', 'Fortaleza', 'CE', 'Fortaleza', 'CE', 'Rua da Praia', '567', '60000000'),
		(6, 'Fernanda Costa', '1998-01-22', '567.890.123-00', 'Recife', 'PE', 'Recife', 'PE', 'Travessa das Águias', '890', '50000000'),
		(7, 'Rafaela Pereira', '1993-11-17', '345.678.901-00', 'Manaus', 'AM', 'Manaus', 'AM', 'Avenida das Flores', '234', '69000000'),
		(8, 'Gustavo Oliveira', '1989-04-05', '678.901.234-00', 'Belém', 'PA', 'Belém', 'PA', 'Rua dos Pinheiros', '901', '66000000'),
		(9, 'Lucas Almeida', '1980-08-12', '890.123.456-00', 'Goiânia', 'GO', 'Goiânia', 'GO', 'Alameda das Estrelas', '345', '70000000'),
		(10, 'Amanda Santos', '1990-06-30', '012.345.678-00', 'Brasília', 'DF', 'Brasília', 'DF', 'Quadra dos Governadores', '678', '70000000');
 
	GO