DROP TABLE IF EXISTS c02_plata.Sales_SalesOrderDetail;

CREATE TABLE c02_plata.Sales_SalesOrderDetail
AS

SELECT 
	d.[SalesOrderID],
	d.[SalesOrderDetailID],
	d.[CarrierTrackingNumber],
	d.[OrderQty],
	d.[ProductID],
	d.[SpecialOfferID],
	d.[UnitPrice],
	d.[UnitPriceDiscount],
	d.[LineTotal],
	d.[ModifiedDate],
	h.[OrderDate],
	h.[DueDate],
	h.[ShipDate],
	h.[TerritoryID]
FROM [LH_STORE_Bronce].[dbo].[Sales_SalesOrderDetail] d 
		LEFT JOIN [LH_STORE_Bronce].[dbo].[Sales_SalesOrderHeader] h ON h.SalesOrderID = d.SalesOrderID 