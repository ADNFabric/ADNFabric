TRUNCATE TABLE [c03_oro].Calendario;

-- Declarar fechas
DECLARE @StartDate DATE = '2012-01-01';
DECLARE @EndDate DATE = '2014-12-31';

-- Bucle de inserción
WHILE @StartDate <= @EndDate
    BEGIN
        INSERT INTO c03_oro.Calendario (Fecha, Año, Trimestre, Num_Mes, Mes, Día)
        SELECT
            @StartDate,
            YEAR(@StartDate),
            DATEPART(QUARTER, @StartDate),
            MONTH(@StartDate),
            DATENAME(MONTH, @StartDate),
            DAY(@StartDate)
        SET @StartDate = DATEADD(DAY, 1, @StartDate);
    END
