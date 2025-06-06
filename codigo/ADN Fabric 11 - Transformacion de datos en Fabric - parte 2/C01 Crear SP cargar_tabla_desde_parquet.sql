/*
    Se cargan los datos de un archivo Paquet desde Azure Data Lake.

    Hay que dar acceso a una Identidad Administrada en la cuenta de almacenamiento de Azure
    - Asignar el rol "Lector de datos de Storage Blog"
*/
CREATE PROCEDURE c01_bronce.cargar_tabla_desde_parquet
  @tabla NVARCHAR(MAX),
  @archivo NVARCHAR(MAX)
AS
BEGIN
  DECLARE @sql NVARCHAR(MAX) = '
    DROP TABLE IF EXISTS ' + @tabla + ';
    CREATE TABLE ' + @tabla + '
    AS SELECT * FROM OPENROWSET(
      BULK ''' + @archivo + ''',
      FORMAT = ''PARQUET''
    ) AS datos;';
  EXEC sp_executesql @sql;
END