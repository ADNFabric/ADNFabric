---
title: Sesión 11 - Transformación de datos con Microsoft Fabric (2da parte)
date: 2025-11-17
published: true
authors: Ana María Bisbé, Diana Aguilera, Nelson López
imageurl: https://img.youtube.com/vi/yVpwWnlsO6U/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/yVpwWnlsO6U/maxresdefault.jpg)](https://www.youtube.com/watch?v=yVpwWnlsO6U)

## Resumen

La sesión se centra en la segunda parte de la transformación de datos en Microsoft Fabric, esta vez usando **T-SQL** en lugar de flujos de datos. El objetivo principal es mostrar cómo implementar una **arquitectura medallón** con capas **Bronze, Silver y Gold**, reutilizando un enfoque muy familiar para equipos que ya trabajan con **SQL Server** y desean migrar o adaptar sus soluciones a Fabric. Para ello, los ponentes plantean un escenario basado en **AdventureWorks** y explican cómo combinar un **Lakehouse** para la capa Bronze con un **Data Warehouse** para las capas Silver y Gold, diferenciando estas capas mediante **esquemas SQL**.

Uno de los conceptos más importantes que se explica es cómo usar el **Warehouse de Microsoft Fabric** como pieza central de transformación con T-SQL. La capa Bronze se mantiene preferentemente en un **Lakehouse**, por la flexibilidad de trabajar con archivos, mientras que Silver y Gold se construyen dentro de un mismo Warehouse usando esquemas como `C01_Bronce`, `C02_Plata` y `C03_Oro`. También se muestra una segunda variante en la que incluso Bronze puede residir en el Warehouse, siempre que la ingesta se haga directamente hacia tablas. Para acceder a los datos del Lakehouse desde SQL, se utiliza el **SQL endpoint** del propio Lakehouse, lo que permite consultar tablas de Bronze y transformarlas con sentencias T-SQL.

En la parte técnica, se presentan mecanismos de ingesta y carga con T-SQL como **`OPENROWSET`**, **`CREATE TABLE AS SELECT (CTAS)`** y **`COPY INTO`**. `OPENROWSET` permite consultar archivos Parquet almacenados en **Azure Data Lake**, mientras que `CTAS` facilita crear e insertar datos en una tabla en una sola operación. Por su parte, `COPY INTO` se plantea como alternativa cuando la tabla ya existe previamente y el esquema está definido de antemano. También se menciona la importancia de la **seguridad y el acceso a Azure Data Lake**, así como el uso de **procedimientos almacenados** y su orquestación mediante **Data Pipelines**, que en Fabric cumplen un papel equivalente a los jobs de SQL Server.

Para la capa Silver, la sesión destaca transformaciones típicas de preparación de datos: **limpieza, control de calidad, ajuste de tipos de datos, eliminación de columnas innecesarias, combinación de tablas y desnormalización**. Se muestran ejemplos concretos como la unificación de tablas de productos con categorías y subcategorías, la simplificación de tablas de territorio, y la combinación de cabecera y detalle en datos de ventas. Estos pasos son especialmente relevantes para profesionales de datos porque demuestran cómo trasladar prácticas clásicas de modelado y transformación SQL al ecosistema de Fabric, aprovechando tanto la flexibilidad del Lakehouse como la potencia analítica y de gobierno del Warehouse.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/yVpwWnlsO6U"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252011%2520-%2520Transformacion%2520de%2520datos%2520en%2520Fabric%2520-%2520parte%25202.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2011%20-%20Transformacion%20de%20datos%20en%20Fabric%20-%20parte%202.pdf)


## Código

[🔗 Ver código en GitHub](https://github.com/ADNFabric/ADNFabric/tree/main/codigo/ADN%20Fabric%2011%20-%20Transformacion%20de%20datos%20en%20Fabric%20-%20parte%202)
