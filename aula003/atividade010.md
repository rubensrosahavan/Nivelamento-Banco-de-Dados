# Atividade 010

### Questão 01
Crie as FK para as colunas de Cidade e Estado de Residência e Moradia

## Resposta
    --Adiciona FK e referencia as colunas CidadeNascimento
	ALTER TABLE [dbo].[Cliente] 
	  ADD CONSTRAINT [FK_Cliente_CodCidadeNascimento_Cidade_Codigo] FOREIGN KEY([CodCidadeNascimento]) REFERENCES [dbo].[Cidade] ([Codigo])
	GO

	--Adiciona FK e referencia as colunas EstadoNascimento
	ALTER TABLE [dbo].[Cliente] 
	  ADD CONSTRAINT [FK_Cliente_CodEstadoNascimento_Estado_Codigo] FOREIGN KEY([CodEstadoNascimento]) REFERENCES [dbo].[Estado] ([Codigo])
	GO

	--Adiciona FK e referencia as colunas CidadeResidencia
	ALTER TABLE [dbo].[Cliente] 
	  ADD CONSTRAINT [FK_Cliente_CodCidadeResidencia_Cidade_Codigo] FOREIGN KEY([CodCidadeResidencia]) REFERENCES [dbo].[Cidade] ([Codigo])
	GO

	--Adiciona FK e referencia as colunas EstadoResidencia
	ALTER TABLE [dbo].[Cliente] 
	  ADD CONSTRAINT [FK_Cliente_CodEstadoResidencia_Estado_Codigo] FOREIGN KEY([CodEstadoResidencia]) REFERENCES [dbo].[Estado] ([Codigo])
	GO