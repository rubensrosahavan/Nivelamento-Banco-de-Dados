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
