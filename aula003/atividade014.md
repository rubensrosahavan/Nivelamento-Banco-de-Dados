# Atividade 14

### Questão 01
Apresentar quantas vendas ocorreram do produto, e caso não tiver nenhuma venda, informar 'Nenhuma Venda Registrada'

## Resposta
	SELECT
		Produto.Codigo,
		Produto.Nome,
		ISNULL(CONVERT(VARCHAR, Vendas.QtdProduto), 'Nenhuma Venda Registrada') AS QtdVendas
	FROM
		Produto LEFT JOIN Vendas ON Produto.Codigo = Vendas.CodigoProduto
	GROUP BY
		Codigo, Produto.Nome, Vendas.QtdProduto
	ORDER BY
		Produto.Nome ASC
		
### Questão 02
Ao invés de mostrar a string, mostre como 0

## Resposta
	SELECT
		Produto.Codigo,
		Produto.Nome,
		ISNULL(Vendas.QtdProduto, 0) AS QtdVendas
	FROM
		Produto LEFT JOIN Vendas ON Produto.Codigo = Vendas.CodigoProduto
	GROUP BY
		Codigo, Produto.Nome, Vendas.QtdProduto
	ORDER BY
		Produto.Nome ASC