/*
    Se cargan los datos de un archivo Paquet desde en Azure Data Lake.

    Utiliza COPY INTO por lo que hay que crear la tabla con antelación.

    Hay que dar acceso a una Identidad Administrada en la cuenta de almacenamiento de Azure
    - Asignar el rol "Lector de datos de Storage Blog"
*/


CREATE TABLE [c01_bronce].[Production_Product]
(
	[ProductID] [int] NULL,
	[Name] [varchar](max) NULL,
	[ProductNumber] [varchar](max) NULL,
	[MakeFlag] [bit] NULL,
	[FinishedGoodsFlag] [bit] NULL,
	[Color] [varchar](max) NULL,
	[SafetyStockLevel] [smallint] NULL,
	[ReorderPoint] [smallint] NULL,
	[StandardCost] [numeric](19,4) NULL,
	[ListPrice] [numeric](19,4) NULL,
	[Size] [varchar](max) NULL,
	[SizeUnitMeasureCode] [varchar](max) NULL,
	[WeightUnitMeasureCode] [varchar](max) NULL,
	[Weight] [numeric](8,2) NULL,
	[DaysToManufacture] [int] NULL,
	[ProductLine] [varchar](max) NULL,
	[Class] [varchar](max) NULL,
	[Style] [varchar](max) NULL,
	[ProductSubcategoryID] [int] NULL,
	[ProductModelID] [int] NULL,
	[SellStartDate] [datetime2](6) NULL,
	[SellEndDate] [datetime2](6) NULL,
	[DiscontinuedDate] [datetime2](6) NULL,
	[rowguid] [varchar](max) NULL,
	[ModifiedDate] [datetime2](6) NULL
)
GO

COPY INTO [c01_bronce].[Production_Product]
FROM 'https://dataxbidatalake.blob.core.windows.net/fabric/AdventureWorks/Production.Product.parquet'
WITH (
    FILE_TYPE = 'PARQUET'
);
