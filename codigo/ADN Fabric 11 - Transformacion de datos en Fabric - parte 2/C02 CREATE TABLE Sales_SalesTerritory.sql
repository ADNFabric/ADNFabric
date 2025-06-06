DROP TABLE IF EXISTS c02_plata.Sales_SalesTerritory;

CREATE TABLE c02_plata.Sales_SalesTerritory
AS
SELECT 
	[TerritoryID],
	[Name],
	[CountryRegionCode],
	[Group],
	[ModifiedDate]
FROM [LH_STORE_Bronce].[dbo].[Sales_SalesTerritory]