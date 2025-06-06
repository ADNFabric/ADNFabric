TRUNCATE TABLE [c03_oro].Territorios;

INSERT INTO [c03_oro].Territorios (TerritoryID, Region, Grupo)
SELECT 
	CAST([TerritoryID] as INT) TerritoryID,
	[Name] Region,
	[Group] Grupo
FROM [WH_STORE_Medallon].[c02_plata].[Sales_SalesTerritory]