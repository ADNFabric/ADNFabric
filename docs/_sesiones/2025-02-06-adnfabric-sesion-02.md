---
title: Sesión 2 - Integrar elementos en Microsoft Fabric
date: 2025-02-06
published: true
authors: Ana María Bisbé, Diana Aguilera, Nelson López
imageurl: https://img.youtube.com/vi/Y9Glnu-DViM/maxresdefault.jpg
---

[![Portada del video](https://img.youtube.com/vi/Y9Glnu-DViM/maxresdefault.jpg)](https://www.youtube.com/watch?v=Y9Glnu-DViM)

## Resumen

La sesión se centra en cómo empezar a integrar elementos en Microsoft Fabric, explicando la estructura básica de la plataforma y cómo organizar el trabajo con datos desde una perspectiva práctica. Los ponentes presentan Fabric como una evolución natural para quienes ya conocen Power BI, ya que comparte conceptos como el tenant, las capacidades y las áreas de trabajo, pero añade nuevos componentes y una organización más descentralizada. También se enmarca la iniciativa como una guía introductoria para ayudar a profesionales de datos a dar sus primeros pasos en la adopción de Fabric.

Uno de los temas principales es la arquitectura jerárquica de Microsoft Fabric. Se explica que en el nivel superior está el tenant, asociado a Microsoft Entra ID, y que existe un único OneLake por tenant. Por debajo se encuentran las capacidades, que agrupan los recursos de cómputo disponibles, y después las áreas de trabajo, donde residen los componentes de Fabric. Entre esos componentes se mencionan elementos ya conocidos como modelos semánticos, informes y paneles de Power BI, junto con otros propios de Fabric como Lakehouse, almacenes de datos, canalizaciones y notebooks. Un punto importante es que la capacidad de Fabric determina la potencia disponible y puede asignarse a las áreas de trabajo según las necesidades del proyecto.

La sesión también introduce el concepto de dominio como una de las novedades relevantes de Fabric. Los dominios permiten agrupar lógicamente áreas de trabajo por departamentos, áreas funcionales o unidades de negocio, como ventas, marketing o finanzas, y habilitan una gobernanza federada en lugar de un control totalmente centralizado por IT. Además, se menciona la posibilidad de crear subdominios para refinar aún más la organización, por ejemplo por regiones geográficas o proyectos. Aunque los dominios son opcionales y no se usan en la demostración, se destacan como una pieza clave para mejorar la búsqueda de contenido, la administración y la gobernanza de datos a escala organizativa.

En la parte práctica se muestra cómo crear un área de trabajo en Fabric, asignarle una capacidad —incluida la capacidad de prueba de Fabric— y generar componentes dentro de ella. Como ejemplo, se crea un Lakehouse y posteriormente un Notebook para cargar y trabajar con datos. También se resalta que al crear un Lakehouse aparecen automáticamente elementos relacionados, como el modelo semántico predeterminado y un punto de conexión SQL, lo que evidencia la integración nativa entre almacenamiento, análisis y consumo de datos. Esto resulta especialmente relevante para profesionales de datos porque simplifica la construcción de soluciones analíticas unificadas dentro de un mismo entorno.

Finalmente, se introduce la arquitectura medallón como enfoque recomendado para estructurar los datos en Fabric. Se describe como un modelo multicapa orientado a tratar los datos como producto, mejorando su calidad a medida que avanzan por distintas fases de transformación. En concreto, se menciona la capa bronce como la zona donde se almacenan los datos en crudo, sin validar y de manera incremental. Para los profesionales de datos, este enfoque es especialmente valioso porque aporta una base clara para diseñar pipelines, organizar transformaciones y mantener una gestión más ordenada, escalable y gobernable del ciclo de vida de los datos dentro de Microsoft Fabric.

## Video

<iframe
  width="100%"
  height="480"
  src="https://www.youtube.com/embed/Y9Glnu-DViM"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

## Diapositivas

<iframe
  src="https://docs.google.com/viewer?url=https%3A//raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%2520Fabric%252002%2520-%2520Integrar%2520componentes%2520y%2520elementos.pdf&embedded=true"
  width="100%"
  height="600"
  frameborder="0">
</iframe>

[📥 Descargar diapositivas (PDF)](https://raw.githubusercontent.com/ADNFabric/ADNFabric/main/diapositivas/ADN%20Fabric%2002%20-%20Integrar%20componentes%20y%20elementos.pdf)
