---
season: 2
order: 3
title: Sesión 16 - Vistas materializadas del Lakehouse
date: 2025-10-15
published: true
authors: Nelson López
imageurl: https://img.youtube.com/vi/aTUoCNktNII/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/aTUoCNktNII/maxresdefault.jpg)](https://www.youtube.com/watch?v=aTUoCNktNII)

## Resumen

La sesión se centra en las **vistas materializadas del Lakehouse en Microsoft Fabric**, enmarcándolas dentro de la **arquitectura medallón** y su aplicación práctica para preparar datos desde capas **bronze, silver y gold** hasta llegar al **modelo semántico**. Antes de entrar en el tema técnico, los ponentes también presentan el evento **Power BI and Fabric Days Barcelona**, destacando su valor para la comunidad de datos y anunciando un taller práctico propio orientado a ofrecer una visión integral de Fabric.

En la parte de tecnologías y conceptos, se explica qué es una **vista materializada** y en qué se diferencia de una vista tradicional: mientras una vista normal solo guarda la consulta, la materializada almacena físicamente el resultado para acelerar las consultas, funcionando de forma similar a una tabla. En Fabric, estas vistas materializadas del Lakehouse se crean usando **Spark SQL** dentro de un **cuaderno (notebook)**, no con **Transact-SQL** como en un Warehouse tradicional. Además, se remarca un requisito importante: el **Lakehouse debe soportar esquemas** para poder trabajar con esta funcionalidad.

Uno de los puntos más relevantes es cómo Fabric gestiona la **materialización y actualización automática** de estas vistas. Los ponentes explican que, una vez definidas, se puede establecer una **programación** con un intervalo mínimo de un minuto para revisar cambios y refrescar los datos. Fabric construye internamente un **linaje o grafo de dependencias** entre tablas y vistas, lo que le permite ejecutar las actualizaciones en el orden correcto, por ejemplo, refrescando primero las vistas de silver que dependen de bronze y después las de gold que dependen de silver. Esto aporta eficiencia y automatización al procesamiento de datos en el Lakehouse.

También se menciona la integración con capacidades de **calidad de datos**, mediante el uso de **constraints** para validar información, aunque esta parte no se desarrolla en detalle en la demo. Para los profesionales de datos, la sesión resulta especialmente útil porque muestra cómo Fabric combina almacenamiento en **Lakehouse**, transformación con **Spark SQL**, automatización mediante **programación y linaje**, y una aproximación moderna a la arquitectura medallón. Además, el taller anunciado amplía esta visión con otros componentes clave de Fabric, como **Dataflows Gen2, canalizaciones, vistas SQL, conexión con Power BI, agentes de datos con IA y notebooks para machine learning**, reforzando la idea de Fabric como plataforma unificada para analítica, ingeniería de datos e inteligencia artificial.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/aTUoCNktNII"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252016%2520-%2520Vistas%2520materializadas%2520Lakehouse%2520.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2016%20-%20Vistas%20materializadas%20Lakehouse%20.pdf)


## Código

[🔗 Ver código en GitHub](https://github.com/ADNFabric/ADNFabric/tree/main/codigo/ADN%20Fabric%2016%20-%20Vistas%20materializadas%20Lakehouse)
