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


	
    SELECT TOP 1 @ProdutoId = @Ct, @Quantidade = Quantidade FROM Produto
    SELECT TOP 1 @ProdutoId = @Ct, @ValorUnitario = ValorUnitario FROM Produto
    
    
	
    UPDATE  Produto  
	SET Quantidade = Quantidade - 1
	WHERE Id=@Ct;
    
   

	UPDATE Produto
	SET Total = Quantidade*ValorUnitario
    WHERE Id=@Ct;
    SET @Ct = @Ct + 1
END
	

SELECT * FROM Produto

