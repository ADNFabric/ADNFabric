---
season: 2
order: 2
title: Sesión 15 -  Llevando Fabric y Power BI al siguiente nivel con particionado.
date: 2025-10-01
published: true
authors: Miguel Egea
imageurl: https://img.youtube.com/vi/hMBDJEFvV4w/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/hMBDJEFvV4w/maxresdefault.jpg)](https://www.youtube.com/watch?v=hMBDJEFvV4w)

## Resumen

La sesión se centró en cómo llevar Microsoft Fabric y Power BI “al siguiente nivel” mediante el particionado, combinando una parte introductoria sobre comunidad y eventos con una parte técnica de alto valor práctico. Al inicio se destacó la relevancia de la Microsoft Fabric Community Conference Europe 2026 en Barcelona como punto de encuentro entre comunidad, expertos y equipos de Microsoft, subrayando su utilidad para profesionales de datos que quieran conocer novedades, resolver dudas directamente con producto y conectar con referentes de habla hispana. También se anunció una próxima sesión de ADN Fabric sobre vistas materializadas en Lakehouse.

El núcleo técnico de la sesión lo aportó Miguel, invitado especial, a partir de un caso real de analítica de precios en el sector hotelero con volúmenes masivos de datos. Explicó un proyecto con decenas de miles de millones de filas —56.000 millones, con previsión de crecer a 75.000 u 80.000 millones— en el que se capturan datos desde una API, se almacenan inicialmente en formato JSON y después se transforman a Delta/Parquet dentro de una arquitectura medallón. El modelo analítico se construyó como una estrella pura y pequeña en dimensiones, orientada a comparar fotografías históricas de precios y analizar su evolución temporal, algo que con arquitecturas anteriores resultaba muy costoso o directamente inviable.

Entre los conceptos y tecnologías de Microsoft Fabric que se explican, destacan Lakehouse, Direct Lake, modelos semánticos de Power BI, Spark, Delta Parquet y la arquitectura medallón. Miguel comparó este enfoque con intentos previos en Synapse usando serverless, pool dedicado y modelos híbridos entre import y DirectQuery, que ofrecían una experiencia deficiente por los tiempos de respuesta. En cambio, con Fabric y Direct Lake se consiguió que un modelo que no cabría completamente en memoria en modo import pudiera responder en pocos segundos gracias al comportamiento basado en “temperatura” y caché, cargando solo lo necesario para cada consulta. También se mencionó el uso de cargas incrementales con append y la importancia de que el almacenamiento en Parquet se mantenga eficiente a gran escala.

Para los profesionales de datos, uno de los mensajes más relevantes es que Fabric permite abordar escenarios de altísima volumetría sin necesidad de recurrir a arquitecturas excesivamente complejas ni a capacidades desproporcionadas. El ejemplo mostrado funcionaba sobre una capacidad F64 —e incluso durante un tiempo en capacidades menores—, lo que demuestra que un buen modelado, junto con Direct Lake y una estrategia adecuada de particionado, puede ofrecer rendimiento aceptable incluso con volúmenes enormes. Además, se remarcó el valor de diseñar modelos en estrella simples y optimizados, ya que la estructura del modelo sigue siendo clave aunque la plataforma facilite el acceso al dato.

Finalmente, la sesión introdujo el particionado como concepto transversal, recordando que no es algo nuevo y que ya existía desde hace décadas en motores relacionales para mejorar el rendimiento de consulta. La idea que se anticipa es que, aunque en Power BI y Fabric muchas veces el particionado queda oculto detrás de funcionalidades más amigables, sigue siendo una pieza esencial para escalar modelos, acelerar consultas y hacer viables cargas y análisis sobre históricos masivos. Para cualquier profesional de datos que trabaje con Fabric, el aprendizaje principal es entender que el rendimiento no depende solo de la capacidad contratada, sino de cómo se organizan físicamente los datos, cómo se modelan y qué modo de acceso se elige.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/hMBDJEFvV4w"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252015%2520%2520-%2520Miguel%2520Egea.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2015%20%20-%20Miguel%20Egea.pdf)


## Código

[🔗 Ver código en GitHub](https://github.com/ADNFabric/ADNFabric/tree/main/codigo/ADN%20Fabric%2015%20-%20Miguel%20Egea)
