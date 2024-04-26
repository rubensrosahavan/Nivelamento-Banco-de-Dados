# Atividade 021

### Questão 01
Altere a tabela de clientes para adicionar uma nova coluna com as seguintes definiões:
- Nome: CategoriaCredito
- Só pode armazenar A, B, C, D
- Quando o INSERT não informar, valor padrão = D
- Ao tentar fazer INSERT ou UPDATE, o banco não pode permitir

## Resposta
	ALTER TABLE Cliente
	ADD CategoriaCredito char(1) DEFAULT 'D' NOT NULL
	CONSTRAINT CHK_CategoriaCredito_Cliente
	CHECK (CategoriaCredito BETWEEN 'A' AND 'D')
	GO