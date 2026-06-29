---
season: 3
order: 9
title: ADN Fabric  - Sesión 30
date: 2026-06-04
published: true
authors: Alberto Alonso Marcos
imageurl: https://img.youtube.com/vi/wl5Yc7tIXww/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/wl5Yc7tIXww/maxresdefault.jpg)](https://www.youtube.com/watch?v=wl5Yc7tIXww)

## Resumen

La sesión 30 de ADN Fabric se centró en la integración entre Microsoft Fabric y Snowflake, dentro de una agenda que también incluyó anuncios de comunidad, próximos eventos y varias novedades recientes del ecosistema Fabric. Los presentadores destacaron iniciativas como DAX Factor, Microsoft Build, encuentros de comunidad en Barcelona, el evento Women and Technology, Global Fabric Day y la conferencia FabCon en Barcelona, subrayando la importancia de estos espacios para formación, networking y actualización tecnológica en torno a Fabric, Power BI y analítica de datos.

En cuanto a las novedades de Microsoft Fabric, se comentó la evolución del blog oficial de Fabric como fuente principal para seguir lanzamientos y cambios del producto. Uno de los anuncios más relevantes fue la mejora en los shortcuts o accesos directos con transformación a tablas Delta. Hasta ahora esta funcionalidad permitía convertir archivos CSV y JSON; ahora también admite archivos Excel. Esto resulta especialmente útil para escenarios donde los datos residen en SharePoint, ya que permite crear un acceso directo a carpetas con ficheros Excel y convertir automáticamente su contenido en tablas Delta actualizables, incluso extrayendo información desde varias hojas.

Otro punto importante fue la mejora en la sincronización de metadatos entre las tablas Delta de un Lakehouse y su endpoint SQL de solo lectura. Se explicó que uno de los problemas habituales era el retraso entre la carga de nuevos datos y su disponibilidad para consultas T-SQL. Con la nueva sincronización mejorada, activable desde la configuración del workspace, este proceso pasa a ser mucho más rápido, reduciendo tiempos de espera que antes podían ser muy variables. Para los profesionales de datos, esta mejora impacta directamente en la fiabilidad operativa de pipelines, validaciones y procesos analíticos que dependen del acceso casi inmediato a los datos recién cargados.

También se presentó una novedad relacionada con Spark en Fabric, enfocada en la optimización de sesiones y configuraciones según el tipo de carga de trabajo. Se explicó que las configuraciones por defecto arrancan más rápido, mientras que las personalizadas suelen tardar más en inicializarse. Ahora Fabric incorpora opciones de configuración guiada en el workspace para ajustar Spark según patrones de arquitectura medallion —bronce, plata y oro— y según si la carga está orientada a lectura o escritura. Esto es especialmente relevante para ingenieros de datos, ya que simplifica la optimización del rendimiento sin necesidad de ajustar manualmente parámetros avanzados, alineando mejor los recursos de Spark con los distintos casos de uso dentro de un entorno moderno de datos en Microsoft Fabric.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/wl5Yc7tIXww"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252030%2520-%2520Alberto%2520Alonso%2520Marcos.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2030%20-%20Alberto%20Alonso%20Marcos.pdf)
