---
title: Sesión 8 - Exploración de datos en Microsoft Fabric (2da parte)
date: 2025-10-27
published: true
authors: Ana María Bisbé, Diana Aguilera, Nelson López
imageurl: https://img.youtube.com/vi/-si_kem1-xA/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/-si_kem1-xA/maxresdefault.jpg)](https://www.youtube.com/watch?v=-si_kem1-xA)

## Resumen

La sesión se centró en la segunda parte de la exploración de datos en Microsoft Fabric, poniendo el foco en el uso de cuadernos (notebooks) para analizar datos estructurados dentro de un Lakehouse. Se explicó cómo cargar datos desde archivos y tablas hacia dataframes, y cómo estos se convierten en la base para realizar análisis exploratorio de datos. La demostración recorrió distintos enfoques según el motor utilizado en el cuaderno: Python puro, PySpark y Spark SQL, mostrando cómo Fabric permite trabajar de forma flexible con los mismos datos desde diferentes tecnologías.

Uno de los conceptos clave fue el de dataframe, presentado como la estructura fundamental para manipular datos tabulares en filas y columnas. En este contexto se revisaron tecnologías como Pandas, Polars y los dataframes nativos de Spark, destacando sus diferencias y escenarios de uso, especialmente cuando se trabaja con grandes volúmenes de datos distribuidos. También se mostró cómo cargar datos desde archivos Parquet y tablas Delta del Lakehouse, incluyendo detalles importantes sobre rutas de acceso, diferencias entre motores y el uso de librerías como Delta Lake para acceder a tablas desde Python.

A partir de esos dataframes, la sesión mostró distintas técnicas de exploración de datos: conteo de filas y columnas, agrupaciones, análisis temporal, detección de duplicados y revisión de calidad de datos. Se explicó que estas tareas pueden realizarse tanto con Pandas como con Spark, aunque con sintaxis diferente. Además, se destacó el valor de Python para enriquecer el análisis con bibliotecas adicionales, por ejemplo para visualización y análisis exploratorio automatizado (EDA), mostrando una librería capaz de generar perfiles estadísticos y gráficos de forma muy rápida. También se remarcó la importancia de los entornos en Fabric para instalar paquetes que no vienen incluidos por defecto.

En la segunda parte, se introdujo Data Wrangler como una herramienta visual integrada en notebooks para explorar y transformar dataframes de Pandas o Spark de manera más amigable. La propuesta combina una vista tabular de los datos con estadísticas, resúmenes dinámicos, visualizaciones integradas y una biblioteca de operaciones de transformación guiadas. Para los profesionales de datos, esto resulta especialmente relevante porque acelera el análisis exploratorio, reduce la necesidad de escribir código manual para tareas comunes y facilita la comprensión inicial de la calidad, distribución y estructura de los datos dentro del ecosistema de Microsoft Fabric.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/-si_kem1-xA"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252008%2520-%2520Exploracion%2520de%2520datos%2520en%2520Fabric%2520-%2520parte%25202.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2008%20-%20Exploracion%20de%20datos%20en%20Fabric%20-%20parte%202.pdf)


## Código

[🔗 Ver código en GitHub](https://github.com/ADNFabric/ADNFabric/tree/main/codigo/ADN%20Fabric%2008%20-%20Exploracion%20de%20datos%20en%20Fabric%20-%20parte%202)
