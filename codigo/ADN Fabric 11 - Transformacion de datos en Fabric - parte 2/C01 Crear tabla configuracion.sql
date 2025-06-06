CREATE TABLE [dbo].config_bronce_archivos_parquet
(
   Tabla VARCHAR(255) NOT NULL,
   RutaArchivoParquet VARCHAR(255) NOT NULL
)
GO

INSERT INTO config_bronce_archivos_parquet (Tabla, RutaArchivoParquet) 
VALUES
('c01_bronce.Production_Product', 'https://dataxbidatalake.blob.core.windows.net/fabric/AdventureWorks/Production.Product.parquet'),
('c01_bronce.Production_ProductCategory', 'https://dataxbidatalake.blob.core.windows.net/fabric/AdventureWorks/Production.ProductCategory.parquet'),
('c01_bronce.Production_ProductSubcategory', 'https://dataxbidatalake.blob.core.windows.net/fabric/AdventureWorks/Production.ProductSubcategory.parquet'),
('c01_bronce.Sales_SalesOrderDetail', 'https://dataxbidatalake.blob.core.windows.net/fabric/AdventureWorks/Sales.SalesOrderDetail.parquet'),
('c01_bronce.Sales_SalesOrderHeader', 'https://dataxbidatalake.blob.core.windows.net/fabric/AdventureWorks/Sales.SalesOrderHeader.parquet'),
('c01_bronce.Sales_Territory', 'https://dataxbidatalake.blob.core.windows.net/fabric/AdventureWorks/Sales.Territory.parquet'),
('c01_bronce.Sales_SalesTerritory', 'https://dataxbidatalake.blob.core.windows.net/fabric/AdventureWorks/Sales.SalesTerritory.parquet');
