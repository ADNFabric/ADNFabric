TRUNCATE TABLE c03_oro.Ordenes;

INSERT INTO c03_oro.Ordenes (SalesOrderID, OrderQty, ProductID, UnitPrice, UnitPriceDiscount, OrderDate, DueDate, ShipDate, TerritoryID) 
SELECT 
	CAST([SalesOrderID] as INT) SalesOrderID,
	CAST([OrderQty] AS INT) OrderQty,
	CAST([ProductID] as INT) ProductID,
	CAST([UnitPrice] as DECIMAL(10, 2)) UnitPrice,
	CAST([UnitPriceDiscount] as DECIMAL(10, 2)) UnitPriceDiscount,
	CAST([OrderDate] as DATE) OrderDate,
	CAST([DueDate] as DATE) DueDate,
	CAST([ShipDate] as DATE) ShipDate,
	CAST([TerritoryID] AS INT) TerritoryID
FROM [WH_STORE_Medallon].[c02_plata].[Sales_SalesOrderDetail]