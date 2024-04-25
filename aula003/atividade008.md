# Atividade 008

### Questão 01

Adicione uma nova tabela 'Cidade', contendo os campos Código e Nome, e insira 10 nomes de cidades na tabela criada

## Resposta
    CREATE TABLE Cidade(
         Codigo tinyint      NOT NULL  PRIMARY KEY AUTO INCREMENT
        ,Nome   varchar(256) NOT NULL
    );
    GO

	INSERT INTO Cidade 
	VALUES (1, 'Brusque'),
		   (2, 'Blumenau'),
		   (3, 'Guabiruba'),
		   (4, 'Gaspar'),
		   (5, 'Ilhota'),
		   (8, 'Timbó'),
		   (9, 'Tijucas'),
		   (10, 'Florianópolis');
	GO