Create Table Vendas
	(Codigo int IDENTITY(1,1)
	NOT NULL Primary Key,
	ClienteId int NOT NULL,
	VendedorId varchar(10) NOT NULL,
	Quantidade smallint NOT NULL,
	Valor numeric(18, 2) NOT NULL)
   
	
	