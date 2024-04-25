# Atividade 007

### Questão 01

Aplique de forma que a tabela de clientes não permita inserir uma nova linha caso o CPF já exista.

## Resposta
    ALTER TABLE Cliente
    ADD CONSTRAINT uk_cpf UNIQUE (Cpf);

### Questão 02

A data de nascimento não deverá ser nula, e o banco de dados deverá informar o valor padrão como '1900-01-01'

## Resposta
    ALTER TABLE Cliente
    ADD CONSTRAINT Df_DataNascimento DEFAULT '1900-01-01' FOR DataNascimento;