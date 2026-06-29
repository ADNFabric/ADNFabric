---
season: 2
order: 8
title: Sesión 21 - Fabric Beers Navidad
date: 2025-12-18
published: true
authors: Ana María Bisbé, Diana Aguilera, Nelson López
imageurl: https://img.youtube.com/vi/lq_KGQ1vz4I/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/lq_KGQ1vz4I/maxresdefault.jpg)](https://www.youtube.com/watch?v=lq_KGQ1vz4I)

## Resumen

La sesión tuvo un tono especial de cierre de año y sirvió también como repaso de la evolución de ADN Fabric durante sus dos temporadas. Los ponentes recordaron que en la primera parte del año se abordaron los fundamentos de Microsoft Fabric: la arquitectura medallón, los componentes de almacenamiento, la ingesta, la transformación y la orquestación. En esta sesión se centraron sobre todo en las novedades más recientes de la segunda temporada, destacando cómo Fabric ha ido madurando rápidamente y cómo muchos cambios afectan directamente a la forma de diseñar soluciones de datos en entornos reales.

Entre los temas principales, se explicó la evolución de los modelos semánticos por defecto en Lakehouse y Warehouse, que dejaron de crearse automáticamente y se desacoplaron de estos artefactos. También se revisó la llegada a disponibilidad general de SQL Database y Cosmos DB dentro de Fabric, dos servicios orientados a cargas transaccionales más que analíticas, pero ya integrados en la plataforma y consultables incluso con T-SQL. Este punto es especialmente relevante porque amplía el alcance de Fabric más allá del análisis y lo acerca a escenarios operacionales e híbridos, algo importante para arquitectos y profesionales que buscan unificar plataformas.

Otro bloque importante fue el de la ingesta y movimiento de datos. Se destacó el protagonismo creciente de los trabajos de copia frente a enfoques anteriores como Dataflows o ciertas actividades clásicas de canalización. La idea clave es que las canalizaciones quedan cada vez más enfocadas a la orquestación, mientras que Copy Job se consolida como el mecanismo recomendado para mover datos, con nuevas capacidades, más formatos soportados y uso ya válido para producción. También se comentó la relevancia de los accesos directos y, en particular, de las transformaciones de acceso directo, que permiten trabajar sobre datos que permanecen en el origen mientras Fabric genera tablas Delta derivadas. Se mencionó además el acceso directo a SharePoint como una mejora muy útil para evitar dependencias innecesarias de flujos de datos.

La sesión también profundizó en capacidades avanzadas para modelado y rendimiento. Se repasó la intervención de Miguel Egea sobre particionado de modelos semánticos, TMDL, Python e IA generativa para automatizar tareas complejas en Power BI y Fabric, incluyendo referencias al MCP de Power BI y a herramientas compartidas en GitHub. Además, se trataron las vistas materializadas en Lakehouse, construidas con Spark SQL, como una opción potente para implementar transformaciones declarativas y soportar arquitecturas tipo medallón con gestión automática de dependencias. Para los profesionales de datos, los puntos más valiosos fueron la automatización del modelado, la mejora del rendimiento mediante particionado y materialización, y la necesidad de seguir de cerca un ecosistema que cambia muy rápido y que ya ofrece capacidades cada vez más sólidas para producción.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/lq_KGQ1vz4I"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252021%2520-%2520Fabric%2520Beers%2520Navidad.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2021%20-%20Fabric%20Beers%20Navidad.pdf)
