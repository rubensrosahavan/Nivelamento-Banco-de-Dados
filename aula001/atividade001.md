# Atividade 01

## Objetivo: responder questionamentos básicos sobre DataTypes e compreender os conceitos apresentados em sala

### Questão 1:
* Devemos nos preocupar com o tipo de dados a ser utilizado para armazenar dados no banco?

Resposta: 
Sim. O tipo de dados escolhido na definição de uma tabela, por exemplo, reflete diretamente na quantidade de espaço ocupado pelos campos. Para armazenar um número inteiro de 5 dígitos, por exemplo, o recomendado seria armazená-lo em um campo do tipo `int`, pois o mesmo armazenaria este valor como um único byte. Caso fosse armazenado  como uma cadeia de caracteres, o mesmo valor ocuparia 5 x 8 bytes, visto que cada caractere representa um byte em questões de armazenamento. Segue o comparativo na tabela abaixo.

Tipo de Dados | Valor | Espaço Ocupado
int | 12345 | 8 bytes
char | 12345 | 40 bytes

### Questão 2:
* Existem impactos ou mudanças no desempenho do banco ao escolher um tipo de dados específico?

Resposta:
Sim, existe. A forma como a informação é armazenada e entendida pelo banco pode refletir na performance e gerenciamento do banco de dados, tanto positivamente como negativamente. A definição adequada de tipos de dados pode resultar em pesquisas mais eficazes, rápidas, e consumir menos espaço de armazenamento. Do contrário, o mau uso dos tipos de dados pode acarretar em problemas de armazenamento, velocidade de consulta e espaço de armazenamento.

### Questão 3:
* Registre suas considerações sobre o assunto.

Resposta:
Em resumo, a definição dos tipos de dados corretos em um banco de dados é um tema de extrema importante para a manutenção e uso do mesmo. Como vimos anteriormente, a definição correta dos datatypes é uma etapa vital em diversas operações com o banco, como consultas, armazenamento, desenvolvimento de aplicações, entre outros. A capacitação de profissionais qualificados para lidar com este tipo de operação.