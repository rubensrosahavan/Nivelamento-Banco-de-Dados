# Atividade 06

## Objetivo, exercitar os conceitos aprendidos em sala de aula

### Questão 01:
Verifique se a tabela clientes possuí chave primária. Caso não possua, elabore o comando que adiciona esta chave à tabela.

## Resposta
	USE Havan
    GO
	
	ALTER TABLE Cliente
	ADD CONSTRAINT PK_Codigo_Cliente PRIMARY KEY (Codigo);
	GO