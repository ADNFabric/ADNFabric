---
season: 2
order: 5
title: Sesión 18 - Direct Lake
date: 2025-11-12
published: true
authors: Diana Aguilera
imageurl: https://img.youtube.com/vi/NAYdwB8LE6g/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/NAYdwB8LE6g/maxresdefault.jpg)](https://www.youtube.com/watch?v=NAYdwB8LE6g)

## Resumen

La sesión 18 de ADN Fabric estuvo centrada en **Direct Lake**, uno de los modos de almacenamiento más relevantes dentro de Microsoft Fabric para modelos semánticos de Power BI. Además de repasar próximos eventos de la comunidad —como Women for Technical Talks, Data Saturday Madrid, Fabric Data Days y la conferencia europea de Fabric en Barcelona—, el núcleo de la sesión fue explicar qué es Direct Lake, por qué supone una evolución frente a los modos tradicionales y cómo encaja en la arquitectura de Fabric. La presentación se orientó tanto a la comprensión conceptual como a la aplicación práctica.

Uno de los temas principales fue la **comparación entre los tres modos de almacenamiento**: **Import**, **DirectQuery** y **Direct Lake**. Se explicó que el modo Import carga los datos en memoria mediante **VertiPaq**, ofreciendo un rendimiento muy alto, pero con el inconveniente de duplicar los datos y requerir actualizaciones para reflejar cambios recientes. En cambio, DirectQuery no almacena los datos en el modelo, sino que consulta el origen en tiempo real, evitando duplicación pero con limitaciones de rendimiento y funcionalidad. Direct Lake se presentó como un enfoque híbrido que combina lo mejor de ambos: la velocidad de consulta cercana a Import y la frescura de datos y no duplicación propias de DirectQuery.

La sesión profundizó en cómo funciona Direct Lake dentro de **Microsoft Fabric**, especialmente sobre orígenes como **Lakehouse, Warehouse, bases de datos SQL y KQL**, y en su relación con **OneLake** y las **tablas Delta**. Se destacó que Direct Lake no carga los datos completos en el modelo semántico, sino que utiliza metadatos y accede directamente a los datos almacenados en Fabric, aprovechando la similitud entre el formato de las tablas Delta y VertiPaq. También se explicó el papel del **enmarcado en memoria** y la **transcodificación**, que permiten responder consultas de forma muy eficiente reutilizando datos ya accedidos y transformando mínimamente el formato cuando es necesario.

Otro punto clave fue la distinción entre **Direct Lake sobre SQL** y **Direct Lake sobre OneLake**. En la variante SQL, si una consulta no puede resolverse directamente sobre las tablas, el motor puede recurrir a **DirectQuery** como mecanismo de respaldo, algo útil por ejemplo en el caso de **vistas SQL**. En cambio, en Direct Lake sobre OneLake no existe ese fallback: si la consulta no puede resolverse, falla. Sin embargo, esta segunda opción se destacó como la más prometedora, ya que permite trabajar con **múltiples orígenes de datos**, incluso desde distintos Lakehouse o Warehouse y desde diferentes áreas de trabajo, lo que aporta mucha más flexibilidad para escenarios analíticos complejos.

Para los profesionales de datos, los puntos más relevantes fueron que Direct Lake apunta a convertirse en un modo de almacenamiento estratégico dentro de Fabric, especialmente para escenarios con **gran volumen de datos**, modelos semánticos modernos y necesidades de **baja latencia**. También resultan importantes las implicaciones de **seguridad y permisos**, ya que en OneLake los accesos dependen de cada origen, mientras que en SQL se gestionan a través del punto de conexión SQL. Finalmente, se remarcó la evolución de la herramienta, incluyendo la posibilidad de crear ciertos modelos no solo desde el servicio de Fabric, sino también desde **Power BI Desktop**, lo que refuerza la integración entre las experiencias de desarrollo y consumo analítico en el ecosistema Microsoft Fabric.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/NAYdwB8LE6g"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252018%2520-%2520Direct%2520Lake.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2018%20-%20Direct%20Lake.pdf)


## Código

[🔗 Ver código en GitHub](https://github.com/ADNFabric/ADNFabric/tree/main/codigo/ADN%20Fabric%2018%20-%20Direct%20Lake)
