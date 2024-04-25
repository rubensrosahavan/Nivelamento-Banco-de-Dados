# Atividade 13

### Questão 01
Elabore uma consulta que traga qual cliente comprou mais produtos
Incluir
- Nome do cliente
- Quantidade total de itens das suas compras
- Valor total da compras
A lista deverá ser do primeiro cliente somente

## Resposta
	SELECT TOP 1
		Cliente.Nome,
		Vendas.QtdProduto,
		Vendas.ValorProduto * Vendas.QtdProduto AS ValorTotal
	FROM 
		Cliente JOIN Vendas ON Cliente.Codigo = Vendas.CodigoCliente
	ORDER BY
		ValorTotal DESC
		

### Questão 02
Qual a média de preço das vendas (entre todas as vendas)?
	
		
## Resposta
	SELECT 
		AVG(Vendas.ValorProduto * Vendas.QtdProduto) AS ValorVenda
	FROM
		Vendas

### Questão 03
Qual o valor da maior venda?

## Resposta
	SELECT 
		MAX(Vendas.ValorProduto * Vendas.QtdProduto) AS MaiorVenda
	FROM
		Vendas
