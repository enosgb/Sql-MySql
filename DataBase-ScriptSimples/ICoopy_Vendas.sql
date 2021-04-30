Declare @Texto Char(40), @Posicao TinyInt, @Linhas Int

Set @Texto = '0123456789@ABCDEFGHIJKLMNOPQRSTUVWXYZ\_abcdefghijklmnopqrstuvwxyz'

Set @Linhas = Rand()*100

While (@Linhas >=1)
Begin

Set @Posicao=Rand()*40

 

If @Posicao <=125
Begin
Insert Into Vendas 
	(
      ClienteId,
      VendedorId, 
      Quantidade, 
      Valor
    )Values(
  	 	@Linhas,
	 	Concat(SubString(@Texto,
        @Posicao+2,2),
        SubString(@Texto,
        @Posicao-4,4),
        SubString(@Texto,
        @Posicao+2,4)),
	    Rand()*1000,
	    Rand()*100+5
    )
End
Else
Begin
Insert Into Vendas 
	(
      ClienteID,
      VendedorID,
      Quantidade,
      Valor
    )Values(
     @Linhas,
	 Concat(SubString(@Texto,
     @Posicao-10,1),
     SubString(@Texto,@Posicao+4,6),
     SubString(@Texto,
     @Posicao-12,3)),
	Rand()*1000,
	Rand()*100+5
    )  

End

Set @Linhas = @Linhas - 1
End

SELECT * FROM Vendas