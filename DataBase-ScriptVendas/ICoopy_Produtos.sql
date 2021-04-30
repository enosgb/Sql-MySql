DECLARE @Ct INT;
DECLARE @Max INT;
DECLARE @ProdutoId INT;
DECLARE @Quantidade INT;
DECLARE @Total INT;
DECLARE @ValorUnitario INT;


SET @Ct = 1;
SET @Max = 100;

WHILE @Ct < @Max
BEGIN

	
    SET @Quantidade =  CEILING(RAND() * POWER(10, 1)); -- 1 -10
    SELECT TOP 1 @ProdutoId = Id, @ValorUnitario = Quantidade FROM Produto
	SET @ValorUnitario = CEILING(RAND() * POWER(10, 5));
    set @Total = @Quantidade * @ValorUnitario;
    
    INSERT INTO Produto
    (
        Quantidade,
        Descricao,
        Total,
      	ValorUnitario
    ) VALUES (
		@Quantidade,
		CAST(NEWID() AS VARCHAR(40)),
   		@Total,
        @ValorUnitario
    )
    SET @Ct = @Ct + 1
END

SELECT * FROM Produto


