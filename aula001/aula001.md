# Aula 001:

## Introdução:
Abordagem de conceitos introdutórios relacionados a bancos de dados relacionais.

## Banco de Dados:
* Coleção de informações estruturadas e que podem ser relacionadas.

## Dados:
* Registros de coisas.

## Informação: 
* É a contextualização dos dados/registros. É um dado que possuí alguma utilidade.

## Sistema Operacional:
* Abstração das interações com o hardware.

## DBA: 
* Administrador do Banco de Dados. Cuida da estrutura das tabelas, consultas, acessos, entre outros.

## AD:
* Administrador de Dados. É uma pessoa que conhece a estrutura de um banco de dados, realiza performance de consultas, porém não opera diretamente com a administração do banco de dados. 

## Objeto:
* Estrutura de dados que armazena ou faz referência a dados.

## Instância X Servidor:
### Instância: 
* Gerencia os processos, memória cpu da máquina. Cada instância pode ter um propósito, e um banco de dados pode ter múltiplas instâncias.
    * Servidor: armazenamento das informações. Parte física. 

[Tipos de dados SQL Server](https://learn.microsoft.com/pt*br/sql/t*sql/data*types/data*types*transact*sql?view=sql*server*ver16)

## Tipos de dados: 
* Como a informação é armazenada em um sistema de computador.

## Tipos de armazenamento de string
* Char: ao definir a quantidade de posições, o banco preenche todas as posições ficam ocupadas no final
* Varchar: ao definir a quantidade de posições do array, o banco adapta o campo somente para o que foi usado

## Charset X Collation
* Charset é um conjunto de caracteres e suas respetivas representações. Existem vários charsets para refletir os caracteres especiais de cada linguagem
* Collation conjunto de regras para a comparação dos caracteres informados e os presentes no Charset do banco.

`Padrão de Collarion Havan: SQL_Latin1_General_CP1_CI_AS`

## Comandos básicos
* DML (Data Manipulation Language)
	* [SELECT](https://learn.microsoft.com/pt-br/sql/t-sql/queries/select-transact-sql?view=sql-server-ver16): recupera linhas do banco de dados e permite a seleção de uma ou várias linhas ou colunas de uma ou várias tabelas
	* [INSERT](https://learn.microsoft.com/pt-br/sql/t-sql/statements/insert-transact-sql?view=sql-server-ver16): adiciona uma ou mais linhas a uma tabela ou exibição
	* [DELETE](https://learn.microsoft.com/pt-br/sql/t-sql/statements/delete-transact-sql?view=sql-server-ver16): remove uma ou mais linhas de uma tabela ou exibição 
	* [UPDATE](https://learn.microsoft.com/pt-br/sql/t-sql/queries/update-transact-sql?view=sql-server-ver16): altera dados existentes em uma tabela ou exibição 
	* [COMMIT](https://learn.microsoft.com/pt-br/sql/t-sql/language-elements/commit-transaction-transact-sql?view=sql-server-ver16): marca o término de uma transação implícita ou explícita bem-sucedida
	* [ROLLBACK](https://learn.microsoft.com/pt-br/sql/t-sql/language-elements/rollback-transaction-transact-sql?view=sql-server-ver16): reverte uma transação explícita ou implícita para o início da transação ou para um ponto de salvamento dentro da transação

* DDL (Data Definition Language)
	* [CREATE](https://learn.microsoft.com/pt-br/sql/t-sql/statements/create-database-transact-sql?view=sql-server-ver16&tabs=sqlpool): cria um novo objeto no banco de dados
	* [DROP](https://learn.microsoft.com/en-us/sql/t-sql/statements/drop-table-transact-sql?view=sql-server-ver16): exclui um objeto existente no banco de dados
	* [ALTER](https://learn.microsoft.com/en-us/sql/t-sql/statements/alter-table-transact-sql?view=sql-server-ver16): modifica a definição de um objeto existente no banco de dados

## Comandos SQL Básicos
    CREATE TABLE ALUNO (
         MATRICULA NUMERIC(10.0) NOT NULL,
         NOME VARCHAR2(100) NOT NULL,
         CPF NUMERIC(14.0) NOT NULL,
         DATA_NASCIMENTO DATE NOT NULL
    );
