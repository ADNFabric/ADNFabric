---
title: Sesión 9 - Exploración de datos con Microsoft Fabric (3ra parte)
date: 2025-11-03
published: true
authors: Ana María Bisbé, Diana Aguilera, Nelson López
imageurl: https://img.youtube.com/vi/DzXJLFLooaU/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/DzXJLFLooaU/maxresdefault.jpg)](https://www.youtube.com/watch?v=DzXJLFLooaU)

## Resumen

La sesión se centró en cerrar el bloque de exploración de datos en Microsoft Fabric, con foco específico en los eventos en tiempo real almacenados en bases de datos KQL. Los ponentes mostraron cómo Fabric permite explorar este tipo de datos tanto de forma visual como mediante consultas en código, destacando que esta combinación facilita el trabajo a perfiles técnicos y también a usuarios menos orientados al desarrollo. La idea principal fue enseñar cómo analizar rápidamente series de eventos, detectar patrones y preparar el terreno para análisis posteriores o para la construcción de informes.

Uno de los temas principales fue la exploración visual dentro de una base de datos KQL. Desde una tabla concreta, Fabric ofrece la opción de “exploración visual”, con una vista preliminar de los datos y múltiples tipos de gráficos, como líneas, barras y columnas, incluyendo variantes apiladas y 100% apiladas. Se explicó que, al tratarse de datos temporales o de streaming, los gráficos de líneas resultan especialmente útiles para representar eventos a lo largo del tiempo. También se mostró cómo el panel lateral permite perfilar columnas, ver distribuciones, máximos, mínimos y concentración de valores, lo que acelera mucho el entendimiento inicial de los datos.

La sesión profundizó además en las capacidades interactivas de filtrado y agregación. Los usuarios pueden seleccionar rangos directamente sobre un gráfico para aplicar filtros, y Fabric traduce esa interacción a código KQL, haciendo visible la lógica aplicada. También se revisaron filtros por texto, números y valores nulos, con operadores habituales como igualdad, mayor/menor y combinaciones AND/OR. Otro punto relevante fue la posibilidad de agregar datos desde la propia experiencia exploratoria, usando funciones como mínimo, máximo, promedio, mediana o conteo, así como agrupar por columnas, seleccionar solo ciertos campos o resaltar categorías por color para identificar segmentos dentro de una serie temporal.

En la segunda parte, se introdujo el uso de KQL como lenguaje de consulta para explorar datos de forma programática. Se explicó la estructura básica de una consulta KQL como una secuencia de pasos encadenados mediante barras verticales, donde cada instrucción toma como entrada el resultado anterior: comenzar desde una tabla, filtrar, ordenar, limitar filas y finalmente agregar. Esta lógica tipo “embudo” es especialmente importante para profesionales de datos porque permite reducir grandes volúmenes de información de manera progresiva y eficiente, algo clave en escenarios de analítica en tiempo real.

Para los profesionales de datos, los puntos más relevantes fueron la integración entre exploración visual y código, la facilidad para perfilar datos en tiempo real dentro de Fabric y la potencia de KQL para transformar, filtrar y resumir información rápidamente. También quedó claro que la exploración visual no sustituye a Power BI, sino que actúa como una fase previa de análisis y comprensión del dato. En conjunto, la sesión mostró cómo Microsoft Fabric ofrece un entorno muy práctico para investigar datos de eventos, validar hipótesis y acelerar el trabajo analítico antes de pasar a fases más formales de modelado, reporting o monitorización.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/DzXJLFLooaU"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252009%2520-%2520Exploracion%2520de%2520datos%2520en%2520Fabric%2520-%2520parte%25203.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2009%20-%20Exploracion%20de%20datos%20en%20Fabric%20-%20parte%203.pdf)


## Código

[🔗 Ver código en GitHub](https://github.com/ADNFabric/ADNFabric/tree/main/codigo/ADN%20Fabric%2009%20-%20Exploracion%20de%20datos%20en%20Fabric%20-%20parte%203)
