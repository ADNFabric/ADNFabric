TRUNCATE TABLE c03_oro.Productos;

INSERT INTO [c03_oro].[Productos] (ProductID, Name, Color, ListPrice, Subcategory, Category)
SELECT 
	[ProductID],
	[Name],
	[Color],
	CAST([ListPrice] AS decimal(10,2)) ListPrice,
	[Subcategory],
	[Category]
FROM [WH_STORE_Medallon].[c02_plata].[Production_Product]
