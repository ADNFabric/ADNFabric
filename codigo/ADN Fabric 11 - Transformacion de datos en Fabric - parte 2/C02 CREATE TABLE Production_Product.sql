DROP TABLE IF EXISTS c02_plata.Production_Product;

CREATE TABLE c02_plata.Production_Product
AS
SELECT 
    p.[ProductID],
    p.[Name],
    p.[ProductNumber],
    p.[MakeFlag],
    p.[FinishedGoodsFlag],
    p.[Color],
    p.[SafetyStockLevel],
    p.[ReorderPoint],
    p.[StandardCost],
    p.[ListPrice],
    p.[Size],
    p.[SizeUnitMeasureCode],
    p.[WeightUnitMeasureCode],
    p.[Weight],
    p.[DaysToManufacture],
    p.[ProductLine],
    p.[Class],
    p.[Style],
    p.[ProductSubcategoryID],
    p.[ProductModelID],
    p.[SellStartDate],
    p.[SellEndDate],
    p.[DiscontinuedDate],
    p.[ModifiedDate],
    s.Name as Subcategory, 
    c.Name as Category
FROM [LH_STORE_Bronce].[dbo].[Production_Product] p
    LEFT JOIN [LH_STORE_Bronce].[dbo].[Production_ProductSubcategory] s ON s.ProductSubcategoryID = p.ProductSubcategoryID
    LEFT JOIN [LH_STORE_Bronce].[dbo].[Production_ProductCategory] c ON c.ProductCategoryID = s.ProductCategoryID