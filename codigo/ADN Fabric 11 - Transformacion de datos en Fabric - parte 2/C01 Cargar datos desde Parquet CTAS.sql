/*
    Se cargan los datos de un archivo Paquet desde en Azure Data Lake.

    Utiliza CTAS (CREATE TABLE AS SELECT) con OPENROWSET.

    Hay que dar acceso a una Identidad Administrada en la cuenta de almacenamiento de Azure
    - Asignar el rol "Lector de datos de Storage Blog"
*/

DROP TABLE IF EXISTS c01_bronce.Production_Product;

CREATE TABLE c01_bronce.Production_Product
AS
SELECT *
FROM OPENROWSET(
  BULK 'https://dataxbidatalake.blob.core.windows.net/fabric/AdventureWorks/Production.Product.parquet'
)
