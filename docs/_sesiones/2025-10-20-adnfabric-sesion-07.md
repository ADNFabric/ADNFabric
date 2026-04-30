---
title: Sesión 7 - Exploración de datos en Microsoft Fabric (1ra parte)
date: 2025-10-20
published: true
authors: Ana María Bisbé, Diana Aguilera, Nelson López
imageurl: https://img.youtube.com/vi/_dK8OINFgX8/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/_dK8OINFgX8/maxresdefault.jpg)](https://www.youtube.com/watch?v=_dK8OINFgX8)

## Resumen

La sesión se centra en la exploración de datos en Microsoft Fabric una vez que estos ya han sido ingeridos. Los ponentes muestran cómo consultar y analizar información desde distintos elementos del entorno: el almacén de datos (Data Warehouse), el Lakehouse y los puntos de conexión SQL de la base de datos y del propio Lakehouse. El foco principal está en el uso de Transact-SQL para explorar tablas, revisar columnas, tipos de datos, número de filas y realizar consultas básicas y analíticas sobre los datos disponibles en un área de trabajo de Fabric.

Entre los conceptos y tecnologías explicados, destaca el papel de los puntos de conexión SQL en Fabric, especialmente para Lakehouse y bases de datos, donde se recalca que el acceso es de solo lectura sobre datos en formato Delta sincronizados con el origen. También se explica que en el almacén sí es posible crear objetos de base de datos, como vistas o funciones, y aplicar seguridad. La sesión muestra cómo lanzar consultas desde la propia interfaz de Fabric, generar consultas nuevas desde el explorador de tablas, insertar tablas en el lienzo SQL y conectarse externamente mediante la cadena de conexión a herramientas como SQL Server Management Studio para consultar los distintos almacenamientos del workspace.

A nivel práctico, se presentan varios ejemplos relevantes para profesionales de datos: exploración del contenido de tablas, obtención de valores distintos de una columna, conteo de valores nulos para análisis de calidad de datos, y consultas que combinan información entre el almacén y el Lakehouse dentro de la misma área de trabajo. También se aborda el uso de accesos directos para consultar tablas ubicadas en otros workspaces, lo que ilustra una capacidad importante de Fabric para trabajar con datos distribuidos sin necesidad de duplicarlos físicamente.

Además, la sesión introduce la construcción visual de consultas como alternativa o complemento al conocimiento de SQL. Esta funcionalidad, disponible desde el almacén o desde los puntos de conexión SQL, permite crear consultas mediante una experiencia similar a Power Query o Dataflows, seleccionando tablas, columnas, filtros y transformaciones desde una interfaz gráfica. Un punto especialmente valioso es que Fabric muestra el SQL generado por detrás, permitiendo revisarlo, copiarlo y editarlo. Para los profesionales de datos, esto resulta útil tanto para acelerar la exploración como para aprender cómo se traducen las operaciones visuales a Transact-SQL y entender dónde se evalúa cada paso dentro del origen de datos.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/_dK8OINFgX8"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252007%2520-%2520Exploracion%2520de%2520datos%2520en%2520Fabric%2520-%2520parte%25201.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2007%20-%20Exploracion%20de%20datos%20en%20Fabric%20-%20parte%201.pdf)
