---
title: Sesión 2 - Integrar elementos en Microsoft Fabric
date: 2025-09-15
published: true
authors: Ana María Bisbé, Diana Aguilera, Nelson López
imageurl: https://img.youtube.com/vi/Y9Glnu-DViM/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/Y9Glnu-DViM/maxresdefault.jpg)](https://www.youtube.com/watch?v=Y9Glnu-DViM)

## Resumen

La sesión se centra en cómo empezar a integrar elementos dentro de Microsoft Fabric, partiendo de una visión práctica de su arquitectura y de los primeros pasos de configuración. Los ponentes explican cómo se organizan los elementos de Fabric en una jerarquía que resulta familiar para quienes ya han trabajado con Power BI: **tenant**, **capacidad**, **áreas de trabajo** y **componentes**. A partir de esa base, muestran cómo crear un área de trabajo, asignarle una capacidad de Fabric y comenzar a incorporar componentes como parte del flujo de trabajo analítico.

Uno de los conceptos más importantes que se explica es la evolución de la arquitectura hacia un modelo más **descentralizado y orientado al negocio**. En este contexto aparece el concepto de **dominio**, una novedad de Microsoft Fabric que permite agrupar lógicamente áreas de trabajo por departamentos, funciones o unidades de negocio, como ventas, marketing o finanzas. Aunque los dominios son opcionales, se destacan como una pieza clave para facilitar la búsqueda de contenidos, mejorar la organización y habilitar una **gobernanza federada**, donde cada dominio puede gestionar sus propios usuarios, permisos y reglas de publicación sin depender exclusivamente de un control centralizado de IT.

A nivel práctico, la sesión muestra la creación de componentes dentro de un área de trabajo de Fabric. En concreto, se crea un **Lakehouse** como elemento de almacenamiento de datos y un **Notebook** como herramienta para cargar o procesar información. También se explica que al crear un Lakehouse se generan automáticamente elementos relacionados, como el **modelo semántico predeterminado** y un **punto de conexión SQL**, lo que evidencia la integración nativa entre almacenamiento, modelado y análisis dentro de la plataforma. Este enfoque refuerza la idea de Fabric como un entorno unificado donde conviven ingeniería de datos, análisis y consumo de información.

Finalmente, se introduce la **arquitectura medallón**, uno de los patrones de diseño de datos más relevantes en Fabric. Se presenta como un enfoque multicapa para tratar los datos como producto y mejorar su calidad a medida que avanzan por el proceso de transformación. La sesión comienza describiendo la **capa bronce**, donde se almacenan los datos en crudo, sin validar y de forma incremental, como base para posteriores validaciones y refinamientos. Para los profesionales de datos, los puntos más relevantes son la importancia de estructurar correctamente los espacios de trabajo, entender la relación entre capacidades y componentes, adoptar modelos de gobernanza escalables mediante dominios y aplicar patrones como medallion architecture para construir soluciones de datos más ordenadas, mantenibles y alineadas con el negocio.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/Y9Glnu-DViM"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252002%2520-%2520Integrar%2520componentes%2520y%2520elementos.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2002%20-%20Integrar%20componentes%20y%20elementos.pdf)
