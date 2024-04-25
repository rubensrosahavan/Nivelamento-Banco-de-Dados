# Atividade 009

### Questão 001
Crie uma tabela 'Estado' que contenha o Codigo, Nome e Sigla. Preencha com 10 linhas


## Resposta
	Use Havan
	GO

	CREATE TABLE Estado(
		 Codigo tinyint      INT PRIMARY KEY NOT NULL
	   , Nome   varchar(256) NOT NULL
	   , Sigla  char(2)      NOT NULL
	);
	GO

	INSERT INTO Estado
	   VALUES (1 ,'Santa Catarina','SC'),
			  (2 ,'São Paulo','SP'),
			  (3 ,'Rio de Janeiro','RJ'),
			  (4 ,'Rio Grande do Sul','RS'),
			  (5 ,'Tocantins','TO'),
			  (6 ,'Parná','PR'),
			  (7 ,'Amazonas','AM'),
			  (8 ,'Rondônia','RO'),
			  (9 ,'Mato Grosso','MT'),
			  (10,'Mato Grosso do Sul','MS');
	GO