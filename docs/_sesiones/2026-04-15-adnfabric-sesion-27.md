---
season: 3
order: 6
title: Sesión 27 - Orquestación de refrescos por metadatos
date: 2026-04-15
published: true
authors: Bernat Agulló
imageurl: https://img.youtube.com/vi/nikBqV-nvTU/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/nikBqV-nvTU/maxresdefault.jpg)](https://www.youtube.com/watch?v=nikBqV-nvTU)

## Resumen

La sesión se centra en la **orquestación de refrescos por metadatos** en entornos de datos, tomando como punto de partida problemas muy habituales en la operación diaria: procesos ETL que no terminan a tiempo, modelos semánticos que se refrescan cuando los datos aún no están listos y múltiples cargas ejecutándose en paralelo que compiten por recursos. El ponente plantea que programar refrescos a una hora fija no siempre garantiza datos correctos ni disponibilidad óptima, y propone una aproximación más robusta basada en controlar dependencias y estados mediante metadatos para decidir cuándo debe ejecutarse cada refresco.

Además del tema principal, se comentan varias **novedades relevantes del ecosistema Microsoft Fabric y Power BI**. Una de las más destacadas es la evolución de los **Dataflow Gen1**, cuyo desarrollo deja de avanzar, lo que implica que las organizaciones con capacidades Premium o Fabric deberían empezar a planificar su migración hacia **Dataflow Gen2**. También se presenta una mejora importante en la administración de Fabric: la **recuperación de elementos eliminados** en áreas de trabajo, con una papelera de reciclaje configurable por administradores y periodos de retención de entre 7 y 90 días, algo especialmente útil para gobernanza y recuperación ante errores operativos.

En cuanto a conceptos y tecnologías, la sesión toca elementos clave de **Microsoft Fabric**, **Power BI**, **modelos semánticos**, **workspaces**, integración con **Git** y **Azure DevOps**, así como la administración del tenant desde el portal de administración. Aunque la demostración parte de una experiencia real en producción más que de un ejemplo teórico, el foco está en cómo diseñar procesos de refresco más inteligentes, desacoplados de horarios rígidos y alineados con la finalización efectiva de las cargas de datos. Esta idea es especialmente valiosa en arquitecturas modernas donde conviven pipelines, modelos analíticos y distintas capas de procesamiento.

Para los profesionales de datos, los puntos más relevantes son claros: primero, la necesidad de pasar de una programación estática a una **orquestación basada en dependencias y metadatos**; segundo, la importancia de revisar activos heredados como **Dataflow Gen1** y preparar su transición; y tercero, aprovechar las nuevas capacidades de Fabric para mejorar resiliencia operativa, control y recuperación. En conjunto, la sesión refuerza una idea fundamental para equipos de BI, analítica e ingeniería de datos: en entornos empresariales, la calidad y puntualidad del dato dependen tanto del modelado como de una buena estrategia de orquestación.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/nikBqV-nvTU"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252027%2520-%2520Bernat%2520Agullo%2520-%2520Orquestando%2520Refrescos%2520de%2520Fabric%2520con%2520metadatos.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2027%20-%20Bernat%20Agullo%20-%20Orquestando%20Refrescos%20de%20Fabric%20con%20metadatos.pdf)
