---
title: Sesión 13 - Orquestación con Microsoft Fabric
date: 2025-12-01
published: true
authors: Ana María Bisbé, Diana Aguilera, Nelson López
imageurl: https://img.youtube.com/vi/tf8y0Al-Khw/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/tf8y0Al-Khw/maxresdefault.jpg)](https://www.youtube.com/watch?v=tf8y0Al-Khw)

## Resumen

La sesión se centra en la **orquestación en Microsoft Fabric** como mecanismo para coordinar procesos de ingesta, transformación y publicación de datos dentro de una arquitectura medallón. Los ponentes explican tres enfoques principales: **Data Pipelines**, **cuadernos Spark (notebooks)** y la mención de **Apache Airflow** como alternativa de orquestación. El objetivo es mostrar cómo encadenar tareas de extremo a extremo para mover datos desde la capa **bronce** hasta **plata** y **oro**, ejecutando todo como un único proceso gobernado, programable y monitorizable.

En la parte dedicada a **Data Pipelines**, se muestra cómo una canalización puede actuar no solo como herramienta de ingesta, sino como orquestador completo del flujo de datos. El ejemplo combina distintas actividades dentro de una misma pipeline: un **flujo de datos** para llevar información al nivel bronce, un **procedimiento almacenado de SQL Server** para transformaciones hacia plata y un **notebook** para completar el paso a oro. Se destaca la posibilidad de definir dependencias por éxito o error, reutilizar objetos, ver el historial de ejecución, clonar canalizaciones y programar su ejecución, lo que resulta especialmente útil para escenarios productivos y de operación continua.

Otro bloque importante aborda la **orquestación con notebooks Spark** desde un cuaderno padre. Aquí se introduce el concepto de **DAG (Directed Acyclic Graph)**, fundamental para modelar dependencias entre tareas: cada nodo representa una acción o notebook, y las aristas indican el orden de ejecución sin ciclos. A partir de este patrón, se explica cómo ejecutar varios notebooks de forma secuencial o en paralelo utilizando la biblioteca **Notebook Utils** —antes conocida como **MSSparkUtils**— y su función **`runMultiple`**, lo que permite construir flujos complejos de procesamiento dentro del entorno de ingeniería de datos de Fabric.

Para los profesionales de datos, la sesión aporta varios puntos prácticos de gran valor. Primero, refuerza la idea de que en Fabric la orquestación puede combinar tecnologías heterogéneas —SQL, Spark, flujos de datos— dentro de una misma solución. Segundo, subraya la importancia de preparar bien cada componente antes de integrarlo en la orquestación, ya que la pipeline debe consumir procesos ya definidos y probados. Tercero, se ofrecen recomendaciones de rendimiento para notebooks, como habilitar la **alta simultaneidad en la configuración de Spark del workspace** y compartir sesión entre cuadernos usando el mismo nombre de sesión, lo que reduce tiempos de arranque y mejora la ejecución concurrente.

En conjunto, la sesión presenta a Microsoft Fabric como una plataforma capaz de unificar la **automatización de procesos de datos**, la **observabilidad de ejecuciones** y la **coordinación entre capas de una arquitectura moderna**. Para equipos de analítica, ingeniería de datos y BI, esto significa poder diseñar procesos más mantenibles, escalables y alineados con entornos empresariales, aprovechando tanto herramientas visuales como capacidades programáticas dentro de un mismo ecosistema.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/tf8y0Al-Khw"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252013%2520-%2520Orquestacion%2520con%2520Fabric.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2013%20-%20Orquestacion%20con%20Fabric.pdf)


## Código

[🔗 Ver código en GitHub](https://github.com/ADNFabric/ADNFabric/tree/main/codigo/ADN%20Fabric%2013%20-%20Orquestacion%20con%20Fabric)
