CREATE TABLE Produto
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Quantidade INT NOT NULL,
    Descricao VARCHAR(1000),
    ValorUnitario INT NOT NULL,
  	Total INT NOT NULL
)

	

