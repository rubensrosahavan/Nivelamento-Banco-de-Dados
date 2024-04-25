# Atividade 12

### Questão 01
Crie uma query usando JOIN que retorne os 10 produtos mais vendidos

## Resposta
    SELECT TOP 10
		Produto.Codigo,
		Produto.Nome,
		Vendas.CodigoProduto,
		Vendas.ValorProduto,
		Vendas.QtdProduto
	FROM
		Produto JOIN Vendas ON Vendas.CodigoProduto= Produto.Codigo
	ORDER BY
		Vendas.QtdProduto DESC