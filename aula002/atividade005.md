# Atividade 05

## Objetivo, exercitar os conceitos aprendidos em sala de aula

### Questão 01:
Elabore uma query para consultar os dados inseridos na tabela anterior usando a cláusula SELECT. Defina uma condição e responsa, quais outras consultas você pode elaborar para esta tabela.

## Resposta:
    USE Havan
	GO
	
	SELECT 
		Codigo,
		Nome,
		DataNascimento,
		CidadeNascimento + ' - ' + EstadoNascimento AS Local_Nascimento,
		EndLogradouro + ', N° ' + CAST(EndNumero AS VARCHAR) + ', ' + CAST(Cep AS VARCHAR) + ' - ' + CidadeResidencia + ' - ' + EstadoResidencia AS Endereco
	FROM
		dbo.Cliente
	WHERE
		Codigo > 5
	ORDER BY 
		Codigo ASC
	GO
	
	/*
		A exemplo de outras consultas possíveis, podemos realizar uma consulta que filtra os
		clientes por uma data de nascimento específica usando o GETDATE(YEAR) da coluna
		DataNascimento, ou então uma que usa SUBSTRING() para juntar os endereços, como
		foi pensado acima.
	*/
	
### Questão 02:
Como deve-se escrevar a Query para que a mesma retorne os dados em ordem contrária?

## Resposta:
    USE Havan
	GO
	
	SELECT 
		Codigo,
		Nome,
		DataNascimento,
		CidadeNascimento + ' - ' + EstadoNascimento AS Local_Nascimento,
		EndLogradouro + ', N° ' + CAST(EndNumero AS VARCHAR) + ', ' + CAST(Cep AS VARCHAR) + ' - ' + CidadeResidencia + ' - ' + EstadoResidencia AS Endereco
	FROM
		dbo.Cliente
	WHERE
		Codigo > 5
	ORDER BY 
		Codigo DESC
	GO
	
	/*
		Devemos utilizar ORDER BY coluna DESC para mostrar os valores em ordem decrescente
	*/

### Questão 03:
Como faz para obter o número de linhas cadastrados na tabela cliente?

## Resposta:
    USE Havan
	GO
	
	SELECT COUNT(*) FROM Cliente
	
### Questão 03
Caso a coluna for um código, porém precisa-se transcrever este código em uma situação? O que fazer para alterar o resultado sem mudar o dados no banco?

## Resposta:
Podemos utilizar o CASE (ou o COALESCE) para mapear o valor númerico para um valor em texto. Podemos usar SELECT para retornar uma tabela temporária, e assim não mudar as informações no banco
    SELECT 
    codigo,
	
    CASE 
        WHEN codigo = 1 THEN 'Ativo'
        WHEN codigo = 2 THEN 'Inativo'
        ELSE 'Não reconhecido'
    END AS descricao
    FROM nome_da_tabela;
