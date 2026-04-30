---
title: Sesión 10 - Transformación de datos con Microsoft Fabric (1ra parte)
date: 2025-11-10
published: true
authors: Ana María Bisbé, Diana Aguilera, Nelson López
imageurl: https://img.youtube.com/vi/wnz_yOC4Z_w/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/wnz_yOC4Z_w/maxresdefault.jpg)](https://www.youtube.com/watch?v=wnz_yOC4Z_w)

## Resumen

La sesión inaugura una nueva serie centrada en la **transformación de datos en Microsoft Fabric**, después de haber cubierto previamente la ingesta y la exploración. En esta primera parte, el foco está en los **Dataflows Gen2**, presentados como la versión de flujos de datos propia de Fabric. Para estructurar la demostración, los ponentes plantean una implementación de la **arquitectura medallón** con capas **Bronze, Silver y Gold**, utilizando un **Lakehouse distinto para cada capa** y manteniendo el mismo caso práctico en futuras sesiones para poder comparar herramientas y enfoques de transformación.

El escenario parte de datos de **AdventureWorks** que ya fueron cargados previamente a un Lakehouse en formato **Parquet**, dentro de la zona de archivos. A partir de esos archivos, en esta sesión se desarrolla principalmente la capa **Bronze**, cuyo objetivo no es transformar la información sino **convertir los archivos en tablas dentro del mismo Lakehouse**, preservando los datos originales. Esta decisión se justifica porque trabajar desde tablas facilita y hace más eficientes las transformaciones posteriores en las capas Silver y Gold. También se muestra cómo organizar el trabajo en un área de trabajo de Fabric con varios Lakehouses y varios Dataflows preparados para cada etapa.

Uno de los conceptos más relevantes explicados es el uso práctico de **Dataflows Gen2** y sus diferencias frente a los flujos de datos tradicionales o al uso de **Power Query en Power BI**. Se destaca que en Gen2 **cada consulta puede tener un destino diferente**, lo que aporta mayor flexibilidad en los procesos de carga. Además, se explica la opción de **almacenamiento provisional (staging)**, que en Fabric no equivale a la clásica “habilitar carga”, sino que permite que los datos pasen por un almacenamiento intermedio antes de continuar con las transformaciones. También se muestra el uso de un **destino de datos predeterminado**, útil cuando varias consultas deben cargarse en el mismo Lakehouse, simplificando la configuración y el mantenimiento.

Desde el punto de vista técnico, la sesión resalta buenas prácticas de diseño para profesionales de datos. En la capa Bronze se utiliza una **consulta maestra** para listar los archivos y funciones reutilizables para leer Parquet y convertirlos en tablas, reduciendo código repetido y facilitando el mantenimiento. También se profundiza en la configuración del destino de las tablas, especialmente en las opciones de **esquema dinámico** y **esquema fijo**. El esquema dinámico, adecuado para Bronze, recrea la tabla según cambien los archivos de origen; en cambio, para la capa Gold se recomienda mayor control con esquema fijo, ya que borrar y recrear tablas podría afectar modelos semánticos, medidas de Power BI e informes dependientes.

Para los profesionales de datos, los puntos más valiosos de la sesión son la comprensión de cómo **operacionalizar una arquitectura medallón en Fabric**, cómo aprovechar **Lakehouse + Dataflows Gen2** como base de transformación y cómo tomar decisiones de diseño según la criticidad de cada capa. La sesión deja claro que Bronze debe priorizar fidelidad al origen y flexibilidad, mientras que en Gold debe primar la estabilidad del esquema y la protección de los activos analíticos. En conjunto, se presenta un enfoque muy práctico para construir pipelines mantenibles y comparables dentro del ecosistema de Microsoft Fabric.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/wnz_yOC4Z_w"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

&nbsp;

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252010%2520-%2520Transformacion%2520de%2520datos%2520en%2520Fabric%2520-%2520parte%25201.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2010%20-%20Transformacion%20de%20datos%20en%20Fabric%20-%20parte%201.pdf)


## Código

[🔗 Ver código en GitHub](https://github.com/ADNFabric/ADNFabric/tree/main/codigo/ADN%20Fabric%2010%20-%20Transformacion%20de%20datos%20en%20Fabric%20-%20parte%201)
