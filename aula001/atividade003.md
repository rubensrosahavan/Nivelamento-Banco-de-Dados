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

Resposta:
    CREATE TABLE CLIENTE (
        COD_CADASTRO      INT             NOT NULL,
        NOME_CLIENTE      VARCHAR(255)    NOT NULL,
        DT_NASCIMENTO     DATE            NOT NULL,
        CPF               VARCHAR(14)     NOT NULL,
        CDD_NASCIMENTO    VARCHAR(255)    NOT NULL,
        EST_NASCIMENTO    CHAR(2)         NOT NULL,
        CDD_RESIDENCIA    VARCHAR(255)    NOT NULL,
        EST_RESIDENCIA    CHAR(2)         NOT NULL,
        RUA               VARCHAR(255)    NOT NULL,
        COMPLEMENTO       VARCHAR(255)    NOT NULL,
        NUMERO            SMALLINT        NOT NULL,
        CEP               INT             NOT NULL,    
    );