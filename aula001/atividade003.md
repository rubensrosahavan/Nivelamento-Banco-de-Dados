# Atividade 03

## Objetivo: exercitar os comando básicos do SQL Server

### Questão 01:
Crie uma tabela para armazenar clientes, contendo os seguintes dados:
* Código de cadastro
* Nome completo do cliente
* Data de nascimento
* CPF
* Cidade e estado de nascimento
* Cidade e estado que reside
* Endereço (rua, complemento, número, cep)

## Resposta:
    USE Havan
    GO

    DROP TABLE IF EXISTS Cliente
    GO


    CREATE TABLE Cliente (
        Codigo             tinyint      NOT NULL
      , Nome               varchar(256) NOT NULL
      , DataNascimento     date         NOT NULL
      , Cpf                varchar(14)  NOT NULL
      , CidadeNascimento   varchar(256) NOT NULL
      , EstadoNascimento   char(2)      NOT NULL
      , CidadeResidencia   varchar(256) NOT NULL
      , EstadoResidencia   char(2)      NOT NULL
      , EndLogradouro      varchar(256) NOT NULL
      , EndNumero          smallint     NOT NULL
      , Cep                int          NOT NULL 
    );
    GO