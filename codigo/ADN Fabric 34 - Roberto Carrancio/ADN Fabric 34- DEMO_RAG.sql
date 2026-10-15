-- Solo recupera info relevante
EXEC dbo.usp_00_BuscarRAGSencillo 
    @Pregunta = N'¿Cómo se almacenan los datos en SQL Server?', 
    @TopN = 5;

-- Construye una respuesta con la info relevante
DECLARE @R1 NVARCHAR(MAX);
EXEC dbo.usp_01_BuscarRAG
    @Pregunta  = N'¿Cómo se guardan fisicamente los datos en SQL Server?',
    @Respuesta = @R1 OUTPUT;

-- Construye una respuesta con la info relevante y añade informacion extra
DECLARE @R2 NVARCHAR(MAX);
EXEC dbo.usp_02_BuscarRAGExtendido
    @Pregunta  = N'¿Cómo se guardan fisicamente los datos en SQL Server?',
    @Respuesta = @R2 OUTPUT;

-- Esta pregunta no puede responderse
DECLARE @R3 NVARCHAR(MAX);
EXEC dbo.usp_02_BuscarRAGExtendido
    @Pregunta  = N'¿Cómo se hace la sincronización de SQL Server 2025 a Fabric con Event Stream?',
    @Respuesta = @R3 OUTPUT;

-- Lo anterior + LOG de tiempos
DECLARE @R4 NVARCHAR(MAX);
EXEC dbo.usp_03_BuscarRAGLog
    @Pregunta  = N'¿Qué beneficios aportan los índices?',
    @Respuesta = @R4 OUTPUT;

-- Ver log
SELECT 
    l.Id, l.Usuario, l.Pregunta, l.Respuesta,
    l.FechaHoraInicio, l.DuracionRecuperaMs, l.DuracionGPTMs, l.DuracionTotalMs,
    d.Posicion, i.Titulo, d.Similitud
FROM dbo.RAGLog l
JOIN dbo.RAGLogDetalle d ON d.IdLog = l.Id
JOIN dbo.BaseConocimiento   i ON i.Id    = d.IdSeccion
ORDER BY l.FechaHoraInicio DESC;

-- Añade log de tokens
DECLARE @R5 NVARCHAR(MAX);
EXEC dbo.usp_04_BuscarRAGLog_tokens
    @Pregunta  = N'¿Qué son las CTE?',
    @Respuesta = @R5 OUTPUT;

-- Ver log con tokens
SELECT
    l.Id,
    l.Usuario,
    l.Pregunta,
    l.Respuesta,
    l.FechaHoraInicio,
    l.DuracionRecuperaMs,
    l.DuracionGPTMs,
    l.DuracionTotalMs,
    d.Posicion,
    i.Titulo,
    d.Similitud,
    l.TokensEmbedding,
    l.TokensGPTEntrada,
    l.TokensGPTSalida,
    CAST(l.TokensEmbedding  * pe.PrecioPorMillon / 1000000.0 AS DECIMAL(10,6)) AS CosteEmbedding,
    CAST(l.TokensGPTEntrada * pi.PrecioPorMillon / 1000000.0 AS DECIMAL(10,6)) AS CosteGPTEntrada,
    CAST(l.TokensGPTSalida  * po.PrecioPorMillon / 1000000.0 AS DECIMAL(10,6)) AS CosteGPTSalida,
    CAST((  l.TokensEmbedding  * pe.PrecioPorMillon / 1000000.0
          + l.TokensGPTEntrada * pi.PrecioPorMillon / 1000000.0
          + l.TokensGPTSalida  * po.PrecioPorMillon / 1000000.0
        ) AS DECIMAL(10,6))                                                     AS CosteTotalEUR
FROM dbo.RAGLog l
JOIN dbo.RAGLogDetalle d ON d.IdLog = l.Id
JOIN dbo.BaseConocimiento   i ON i.Id    = d.IdSeccion
JOIN dbo.ModeloPrecio pe ON pe.Modelo = N'text-embedding-ada-002' AND pe.TipoToken = N'embedding' AND pe.VigenciaHasta IS NULL
JOIN dbo.ModeloPrecio pi ON pi.Modelo = N'gpt-4o-2024-1120'       AND pi.TipoToken = N'input'     AND pi.VigenciaHasta IS NULL
JOIN dbo.ModeloPrecio po ON po.Modelo = N'gpt-4o-2024-1120'       AND po.TipoToken = N'output'    AND po.VigenciaHasta IS NULL
ORDER BY l.FechaHoraInicio DESC, d.Posicion;

-- Busqueda híbrida
DECLARE @R6 NVARCHAR(MAX);
EXEC dbo.usp_05_BuscarRAGHibrido
    @Pregunta  = N'¿Qué es fábric SQL Database?',
    @Respuesta = @R6 OUTPUT;

-- Ver log híbrido con tokens
-- Ver log híbrido con tokens, tiempos y coste
SELECT
    l.Id,
    l.Usuario,
    l.Pregunta,
    l.Respuesta,
    l.FechaHoraInicio,
    l.DuracionRecuperaMs,
    l.DuracionGPTMs,
    l.DuracionTotalMs,
    d.Posicion,
    i.Titulo,
    d.Similitud,
    l.TokensEmbedding,
    l.TokensGPTEntrada,
    l.TokensGPTSalida,
    CAST(l.TokensEmbedding  * pe.PrecioPorMillon / 1000000.0 AS DECIMAL(10,6)) AS CosteEmbedding,
    CAST(l.TokensGPTEntrada * pi.PrecioPorMillon / 1000000.0 AS DECIMAL(10,6)) AS CosteGPTEntrada,
    CAST(l.TokensGPTSalida  * po.PrecioPorMillon / 1000000.0 AS DECIMAL(10,6)) AS CosteGPTSalida,
    CAST((
          l.TokensEmbedding  * pe.PrecioPorMillon / 1000000.0
        + l.TokensGPTEntrada * pi.PrecioPorMillon / 1000000.0
        + l.TokensGPTSalida  * po.PrecioPorMillon / 1000000.0
    ) AS DECIMAL(10,6)) AS CosteTotalEUR
FROM dbo.RAGLogHibrido l
JOIN dbo.RAGLogHibridoDetalle d ON d.IdLog = l.Id
JOIN dbo.BaseConocimiento i      ON i.Id    = d.IdSeccion
JOIN dbo.ModeloPrecio pe ON pe.Modelo = N'text-embedding-ada-002' AND pe.TipoToken = N'embedding' AND pe.VigenciaHasta IS NULL
JOIN dbo.ModeloPrecio pi ON pi.Modelo = N'gpt-4o-2024-1120'       AND pi.TipoToken = N'input'     AND pi.VigenciaHasta IS NULL
JOIN dbo.ModeloPrecio po ON po.Modelo = N'gpt-4o-2024-1120'       AND po.TipoToken = N'output'    AND po.VigenciaHasta IS NULL
ORDER BY l.FechaHoraInicio DESC, d.Posicion;