---
title: Sesión 12 - Transformación de datos con Microsoft Fabric (3ra parte)
date: 2025-11-24
published: true
authors: Ana María Bisbé, Diana Aguilera, Nelson López
imageurl: https://img.youtube.com/vi/y11XEHuPpLg/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/y11XEHuPpLg/maxresdefault.jpg)](https://www.youtube.com/watch?v=y11XEHuPpLg)

## Resumen

La sesión 12 de ADN Fabric cierra la serie dedicada a la transformación de datos en Microsoft Fabric, enfocándose en el uso de Python dentro de cuadernos Spark. La demostración se apoya en una arquitectura medallón con capas bronce, plata y oro, implementada mediante tres Lakehouse separados. Como origen se utilizan tablas de ejemplo de AdventureWorks, previamente ingeridas en formato Parquet en la capa bronce. A partir de ahí, se muestra cómo realizar transformaciones con notebooks para mover y refinar los datos entre capas.

Uno de los conceptos centrales de la sesión es el uso de DataFrames para el procesamiento de datos en Python. Se explica la diferencia entre Pandas y los DataFrames de Spark, destacando que Spark permite procesamiento distribuido y escalable para grandes volúmenes de datos. También se remarca un punto técnico importante para quienes trabajan con documentación: Microsoft Fabric utiliza Spark 3.5, por lo que conviene revisar la compatibilidad frente a materiales recientes basados en Spark 4. Sobre esta base, se repasa el patrón habitual de transformación: leer datos desde archivos o tablas, cargarlos en un DataFrame, aplicar transformaciones y persistir el resultado en tablas, normalmente en formato Delta.

En la capa bronce, la sesión muestra un proceso sencillo de carga desde archivos Parquet hacia tablas Delta usando notebooks. Se explica cómo parametrizar cuadernos para reutilizarlos, cómo leer archivos con `spark.read.parquet` y cómo escribir resultados con `write.format("delta")` en modo sobrescritura. Un aspecto relevante es la normalización de nombres de columnas antes de grabar en Delta, evitando espacios o caracteres no válidos. Además, se presenta el uso de la librería `notebookutils` de Fabric, tanto para recorrer carpetas del Lakehouse (`FS`) como para ejecutar notebooks de forma dinámica, automatizando así la carga de múltiples archivos en tablas.

En la capa plata, se retoman las mismas transformaciones ya vistas en sesiones anteriores con Dataflows y T-SQL, pero ahora implementadas con Python y PySpark. Entre las operaciones destacadas están la validación y limpieza de datos, la asignación de tipos, la selección y eliminación de columnas, el renombrado de campos y la combinación de tablas mediante `join`. También se abordan escenarios típicos de modelado analítico, como la desnormalización de entidades de producto, la integración de datos geográficos y la combinación de cabeceras y detalles de órdenes. Para los profesionales de datos, la sesión resulta especialmente útil porque muestra cómo trasladar patrones clásicos de preparación de datos a un entorno escalable, reutilizable y automatizable dentro de Microsoft Fabric.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/y11XEHuPpLg"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252012%2520-%2520Transformacion%2520de%2520datos%2520en%2520Fabric%2520-%2520parte%25203.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2012%20-%20Transformacion%20de%20datos%20en%20Fabric%20-%20parte%203.pdf)


## Código

[🔗 Ver código en GitHub](https://github.com/ADNFabric/ADNFabric/tree/main/codigo/ADN%20Fabric%2012%20-%20Transformacion%20de%20datos%20en%20Fabric%20-%20parte%203)
