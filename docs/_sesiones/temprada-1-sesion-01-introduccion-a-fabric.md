---
title: "Sesión 1: Introducción a Microsoft Fabric"
date: 2025-09-25
summary: Introducción a la iniciativa ADN Fabric e introducción a Microsoft Fabric
order: 1
published: true
layout: sesion
---

# ADNF 1

## ¿Qué roles se adoptan al trabajar en entorno Fabric?

Te estarás preguntando, cómo puedes encajar tu en el mundo Fabric, pues
encajar, seguro que encajas, solo que va a depender un poco del rol que
desempeñas.

Microsoft Fabric es un entorno único integrado con servicios para
importar, almacenar, procesar y visualizar datos.

## Hablemos de las experiencias en MS Fabric

<https://app.powerbi.com/home?experience=fabric-developer>

Cada una de las estas experiencias se adapta a roles de usuario
distintos, como ingenieros de datos, analistas, científicos o
profesionales de almacenamiento

Tradicionalmente, la separación de funciones entre el **ingeniero de
datos** y el **analista de datos** significaba que había que mantener
una conversación adicional para garantizar que el ingeniero elaborara
**un modelo semántico perfecto** y de fácil mantenimiento que ayudara
**al analista** a mostrar los datos de forma eficaz y detallada para la
empresa.

Los **analistas**, que transforman los datos antes de crear informes de
Power BI, pueden conectarse a los repositorios en Fabric que permiten
tratar grandes volúmenes de datos sin tener que importar los datos en un
modelo de Power BI.

Los **científicos de datos** pueden integrar técnicas de ciencia de
datos nativas y, a continuación, usar los informes interactivos de Power
BI para proporcionar conclusiones informadas sobre los datos.

![Interfaz de usuario gráfica, Aplicación, Word El contenido generado
por IA puede ser
incorrecto.](media/image1.png){width="5.905555555555556in"
height="2.7805555555555554in"}

experiencias y los componentes integrados en Fabric.

Para ver las experiencias podemos utilizar:

-   la URL de Microsoft Fabric: https://app.fabric.microsoft.com/home

-   Entrar en el servicio de Power BI y cambiar en el botón de Power BI
    a Microsoft Fabric. Con experiencias se consigue agrupar los
    componentes de Fabric. Algunas experiencias tienen varios
    componentes y algunos componentes los podemos ver en varias
    experiencias.

La experiencia Power BI es la que todos conocemos y se utiliza para
crear y consumir modelos semánticos e informes analíticos.

-   La experiencia Databases contiene el almacenamiento SQL Database.

-   Las experiencias Data Factory y Data Engineering contienen los
    motores encargados de realizar las tareas de ingestión,
    transformación y modelado de los datos

-   La experiencia Data Engineering contiene además un tipo de
    almacenamiento de datos: Lakehouse

-   La experiencia Data Warehouse también contiene los motores para el
    procesamiento de los datos y el Almacén como tipo de almacenamiento
    para los datos

-   Real-Time Intelligence contiene tanto el almacenamiento como los
    motores para realizar el procesamiento de los datos en tiempo real y
    permite además crear visualizaciones de los datos obtenidos

-   Data Science contiene los motores para utilizar ML y IA para
    analizar los datos y también permite realizar acciones sobre los
    mismos

-   Industry Solutions contiene plantillas de soluciones de casos reales
    en la industria que podemos explorar y aprovechar

## Componentes de Fabric

> La imagen es orientativa, se mostrarán las opciones en Fabric.
>
> Podemos ver los distintos componentes de Fabric de dos formas

-   Entrando a una experiencia podemos ver los componentes que podemos
    utilizar dentro de esa experiencia. Algunos componentes solo se
    utilizan en una experiencia y otros se pueden utilizar en varias
    experiencias.

-   Desde un área con capacidad Fabric podemos ir a la opción nuevo
    elemento y obtendremos la lista de todos los componentes agrupados
    por funcionalidad. De nuevo un mismo componente puede corresponder a
    más de una funcionalidad

> ![Interfaz de usuario gráfica, Aplicación El contenido generado por IA
> puede ser incorrecto.](media/image2.png){width="5.905555555555556in"
> height="2.9756944444444446in"}
>
> ![Interfaz de usuario gráfica, Aplicación El contenido generado por IA
> puede ser incorrecto.](media/image3.png){width="5.905555555555556in"
> height="2.8854166666666665in"}
>
> Comparativa de agrupaciones de componente por experiencia vs
> funcionalidad

+----------------------------------+-----------------------------------+
| > Experiencias                   | Funcionalidades                   |
+==================================+===================================+
| Power BI                         | Visualizar datos                  |
+----------------------------------+-----------------------------------+
| Databases                        | Obtener datos                     |
+----------------------------------+-----------------------------------+
| Data Factory                     | Almacenar datos                   |
+----------------------------------+-----------------------------------+
| Data Engineering                 | Preparación de datos              |
+----------------------------------+-----------------------------------+
| Data Warehouse                   | Análisis y entrenamiento de datos |
+----------------------------------+-----------------------------------+
| Real-Time Intelligence           | Seguimiento de datos              |
+----------------------------------+-----------------------------------+
| Data Science                     | Desarrollar datos                 |
+----------------------------------+-----------------------------------+
| Industry Solutions               | Otros                             |
+----------------------------------+-----------------------------------+

> Podemos ver los distintos componentes de Fabric de dos formas

-   Entrando a una experiencia podemos ver los componentes que podemos
    utilizar dentro de esa experiencia. Algunos componentes solo se
    utilizan en una experiencia y otros se pueden utilizar en varias
    experiencias.

-   Desde un área con capacidad Fabric podemos ir a la opción nuevo
    elemento y obtendremos la lista de todos los componentes agrupados
    por funcionalidad. De nuevo un mismo componente puede corresponder a
    más de una funcionalidad

## ONELAKE: 

-   Es el componente más importante de Fabric

-   Cada inquilino de Fabric aprovisiona automáticamente OneLake, sin
    recursos adicionales para configurar o administrar.

-   Es un lago de datos para toda la organización. Una copia de datos
    para su uso con varios motores de análisis que simplifica la
    administración y el acceso a los datos.

-   Todas las experiencias de proceso de Microsoft Fabric utilizan
    OneLake

-   Garantiza la detección de datos, el uso compartido y el cumplimiento
    uniforme de la directiva y la configuración de seguridad.

-   facilita la colaboración entre los miembros de los equipos y ahorra
    tiempo al eliminar la necesidad de mover y copiar datos entre los
    distintos sistemas y equipos.

![Logotipo, nombre de la empresa Descripción generada
automáticamente](media/image4.png){width="2.0440069991251093in"
height="2.0479997812773405in"} ![Imagen de la pantalla de un celular con
letras El contenido generado por IA puede ser
incorrecto.](media/image5.png){width="1.746113298337708in"
height="2.0275109361329835in"}

### Almacenamientos:

![Icono El contenido generado por IA puede ser
incorrecto.](media/image6.png){width="2.5211854768153983in"
height="0.625087489063867in"}

En Fabric tenemos diferentes formas de almacenamiento de los datos:
Lakehouse, Almacén, SQL database, Casa de eventos (BD KQL), Modelo
semántico

Una característica muy importante de Fabric es que los datos están
separados de los motores, que son los encargados de realizar el
procesamiento de los datos. Esto permite utilizar varios motores sobre
un almacenamiento de datos y varios almacenamientos con un mismo motor.

### Motores

![Icono El contenido generado por IA puede ser
incorrecto.](media/image7.png){width="2.4795122484689416in"
height="0.5625787401574803in"}

Los motores son los encargados de ingerir, validar, transformar y
modelar los datos desde un amplio conjunto de orígenes de datos

A diferencia de Power BI donde en los flujos de datos Gen 1 los datos y
el motor estaban juntos.

En Fabric, tenemos diferentes motores independientes de los datos:
Flujos de datos Gen2, canalizaciones de datos, cuadernos Spark,
Eventstream, etc.

Frabric nos da la flexibilidad de elegir el motor con el que trabajar,
dependiendo de nuestros conocimientos y habilidades. Un mismo motor se
puede utilizar en distintos almacenamientos

### Componentes Experimentos y modelos de ML

![Icono El contenido generado por IA puede ser
incorrecto.](media/image8.png){width="1.1980839895013122in"
height="0.531324365704287in"}

Ofrecen a los científicos de datos la posibilidad de crear, implementar
y poner en marcha experimentos y modelos de aprendizaje automático desde
Fabric.

### Activator 

![Icono El contenido generado por IA puede ser
incorrecto.](media/image9.png){width="0.5625787401574803in"
height="0.5209055118110236in"}

Dentro de los componentes para el seguimiento de los datos está
Activator, un componente con el que podemos definir reglas que activen
alarmas y acciones que se ejecuten de manera automática si los datos
alcanzan determinados umbrales o al detectar patrones o condiciones
específicas en los datos.

Fabric vs Juego de estragegia

Piensa en un juego de mesa de estrategias, el lago es el tablero y los
componentes son las piezas que podemos utilizar para realizar las tareas
que nos solicitan.

Ejemplo de tareas: Traer datos a un Lakehouse desde una base de datos
SQL. Eliminar datos duplicados de un Lakehouse y almacenarlos en otro.

## ¿Cómo se habilita Microsoft Fabric?

Desde cero:

-   <https://app.fabric.microsoft.com/>

![Interfaz de usuario gráfica, Texto, Aplicación, Correo electrónico El
contenido generado por IA puede ser
incorrecto.](media/image10.png){width="4.3964468503937in"
height="3.8859590988626422in"}

-   Desde Power BI Service:

-   <https://www.microsoft.com/es-es/power-platform/products/power-bi/>

Iniciar sesión

<https://app.powerbi.com/home?experience=power-bi>

![Interfaz de usuario gráfica, Texto, Aplicación, Correo electrónico El
contenido generado por IA puede ser
incorrecto.](media/image11.png){width="3.167108486439195in"
height="2.2086417322834646in"}

Cambia a: <https://app.powerbi.com/home?experience=fabric-developer>

## ¿Qué es la Plataforma Inteligente de Datos?

Es importante ubicar a Fabric dentro de todo el ecosistema de Microsoft.

Power BI es parte de la Power Platform, junto a otras herramientas
enfocadas al usuario de negocio, como, Power Apps o Power Automate.

Por otra parte, Power BI es uno de los componentes de Fabric.

Por lo que podemos decir que Power BI tiene cierta dualidad, lo cuál yo
veo bien, porque entiendo que hay muchos proyectos donde se va a seguir
utilizando Power BI sin Fabric.

Como también habrá muchos proyectos de Fabric que no utilizarán Power
BI.

A su vez, Fabric es parte de algo más grande llamado Plataforma
Inteligente de Datos, que como se ve en la imagen tiene otros
componentes divididos en varias categorías como: Bases de datos,
Inteligencia Artificial, Análisis, donde se incluye Fabric y también
Databricks, y Seguridad, donde se incluye Purview

El objetivo de la Plataforma Inteligente de Datos es la integración de
todos estos componentes

y Fabric ocupa un lugar importante, yo diría que sirve como puerta de
entrada

En Fabric se han integrado componentes que ya existían, con componentes
nuevos

en un modelo de Software como Servicio, para crear una experiencia
parecida a la de Power BI.

<https://www.microsoft.com/es-es/microsoft-cloud/solutions/intelligent-data-Platform>

![Diagrama El contenido generado por IA puede ser
incorrecto.](media/image12.png){width="5.905555555555556in"
height="2.6791666666666667in"}

## Recorrido por las licencias y sugerencias de uso

Bueno, Fabric pinta bien. ¿Cómo lo compro? ¿Qué necesito para comenzar a
usarlo? ¿Cuánto cuesta?

<https://www.microsoft.com/es-es/power-platform/products/power-bi/pricing>

En la imagen pueden ver las opciones que aparecen en estos momentos en
la página de precios de Power BI.

Comenzando por arriba, vemos como en Power BI se mantienen la cuenta
gratuita y las licencias por usuario,

tanto la Pro como PPU. Aprovecho para recordar que subirán de precio.

También se mantiene Power BI Embedded

Por otra parte, ya no están las licencias Premium por capacidad de Power
BI, P1, P2, etc.

Porque en principio ya no es posible comprarlas, aunque, si se respetan
los contratos vigentes.

Sustituyendo a las Premium hay dos licencias por capacidad de Fabric:
Reserva y Pago por uso.

Además, hay una prueba gratuita de Fabric por 60 días, que nos da acceso
a una capacidad de Fabric específica para pruebas.

¿Qué diferencias hay entre la RESERVA y el Pago por Uso?

Con la RESERVA te comprometes a pagar una tarifa durante un año, de una
manera similar a como se hacía con Premium.

Mientras con el Pago por Uso, no tienes ningún compromiso y te cobran
mientras la capacidad esté \"encendida\".

Porque una característica de las capacidades Fabric es que se pueden
parar para ahorrar costes.

Las capacidades Fabric se compran en Azure

y desde el portal de Azure se pueden pausar y reanudar de forma manual,

lo cual también se puede automatizar utilizando la API de Azure.

## ¿Cuánto cuestan las capacidades Fabric?

En esta página se muestra una tabla con los valores.

Para simplificar, he hecho un resumen para dar una idea. Los precios
dependen de la región y del cambio con el USD por lo que recomiendo
revisarlos en el enlace que muestro.

+-------+-------+----------+-------------+--------------+-------------+
| **    | *     | **SKU    | **Precio    | **Precio     | **Precio    |
| SKU** | *CU** | Power    | Mes**       | Mes**        | Hora**      |
|       |       | BI**     |             |              |             |
|       |       |          | **con       | **Pago por   | **Pago por  |
|       |       |          | Reserva**   | uso**        | uso**       |
+=======+=======+==========+=============+==============+=============+
| F2    | 2     |          | €183        | €308         | €0,423      |
+-------+-------+----------+-------------+--------------+-------------+
| F4    | 4     |          | €366        | €616         | €0,845      |
+-------+-------+----------+-------------+--------------+-------------+
| F8    | 8     | EM/A1    | €733        | €1.232       | €1,689      |
+-------+-------+----------+-------------+--------------+-------------+
| F16   | 16    | EM2/A2   | €1.466      | €2.465       | €3,378      |
+-------+-------+----------+-------------+--------------+-------------+
| F32   | 32    | EM3/A3   | €2.932      | €4.930       | €6,755      |
+-------+-------+----------+-------------+--------------+-------------+
| F64   | 64    | P1/A4    | €5.864      | €9.861       | €13,510     |
+-------+-------+----------+-------------+--------------+-------------+
| F128  | 128   | P2/A5    | €11.728     | €19.723      | €27,019     |
+-------+-------+----------+-------------+--------------+-------------+
| F256  | 256   | P3/A6    | €23.457     | €39.447      | €54,037     |
+-------+-------+----------+-------------+--------------+-------------+
| F512  | 512   | P4/A7    | €46.914     | €78.894      | €108,074    |
+-------+-------+----------+-------------+--------------+-------------+
| F1024 | 1024  | P5/A8    | €93.828     | €157.788     | €216,148    |
+-------+-------+----------+-------------+--------------+-------------+
| F2048 | 2048  |          | €187.655    | €315.576     | €432,296    |
+-------+-------+----------+-------------+--------------+-------------+

<https://azure.microsoft.com/es-es/pricing/details/microsoft-fabric/>

Lo primero es que hay varios niveles de capacidad, desde F2 hasta F2048,
que van de menos a más recursos.

Los recursos se miden en CU, Capacity Unit o Unidad de Capacidad y vemos
que coinciden con el número que está al lado de la F. F2 son dos CU, F4
son 4 CU y así.

<https://learn.microsoft.com/es-es/fabric/enterprise/licenses>

Por cierto, la capacidad de prueba de Fabric, corresponde a una F64, con
algunas limitaciones.

En la tercera columna vemos la equivalencia entre las capacidades Fabric
y las licencias por capacidad de Power BI.

Por ejemplo, vemos que los recursos de F8 son equivalentes a los de la
capacidad Embedded A1, o que la F64 es equivalente a una P1.

Y si miramos los precios con reserva, vemos, por ejemplo, que F8 es
similar a A1 y que F64 es similar a P1.

También vemos que los precios de F2 y F4 son bastante razonables y abren
una puerta de entrada para proyectos pequeños.

Los precios de pago por uso son 40% más caros. Y en este caso es
interesante el precio por hora porque la capacidad podemos apagarla.

Por ejemplo, podemos usar Fabric para una ETL donde la capacidad esté
encendida, digamos, 1 hora al día.

Combinando estás opciones lo que tenemos es mayor flexibilidad.

Es posible cambiar el tamaño de la capacidad en cualquier momento.

Tanto en el portal de Azure cómo de manera automática utilizando la API
REST de Fabric.

El almacenamiento se paga aparte, pero es muy barato como se ve en el
pequeño recuadro arriba a la derecha.

  -----------------------------------------------------------------------
  Almacenamiento se paga aparte
  -----------------------------------------------------------------------
  €0,0222 GB/mes

  -----------------------------------------------------------------------

### Flexibilidad

-   La reserva y el pago con uso no son excluyentes, se pueden combinar

-   La capacidad F2 (183 euros / mes) se puede utilizar en proyectos
    pequeños

-   Podemos \"apagar\" la capacidad

-   Podemos cambiar el tamaño de la capacidad

### Capacidad Fabric gratuita para pruebas

-   60 días, que se pueden extender

-   Para aprender

-   Para hacer pruebas de concepto

### En un área de trabajo con capacidad Fabric (F2 - F2048)

-   Crear y compartir componentes de Fabric con una licencia gratuita.

-   Power BI Embedded.

-   Para publicar contenido Power BI se necesita una licencia Pro.

-   Para ver contenido Power BI:

    -   F2 - F32 se necesita licencia Pro

    -   A partir de F64 con licencia gratuita

-   Copilot, a partir de F64 (no puede ser la capacidad Fabric de
    prueba)

## Conclusiones

-   Microsoft Fabric es una gran apuesta por la integración de
    experiencias de almacenamiento, tratamiento y visualización de datos

-   ADN Fabric es una iniciativa de comunidad para aprender Fabric,
    estar a la altura del momento y aprovechar las oportunidades
    laborales y de negocio que están por venir.

## Recursos

-   Experiencias Fabric

    -   <https://app.powerbi.com/home?experience=fabric>

-   Arquitectura Fabric - Microsoft Learn

    -   [https://learn.microsoft.com/es-es/fabric/get-started/media/microsoft-fabric-overview/fabric-architecture.png#lightbox](https://learn.microsoft.com/es-es/fabric/get-started/media/microsoft-fabric-overview/fabric-architecture.png)

-   Capacidad de prueba de Microsoft Fabric

    -   <https://learn.microsoft.com/es-es/fabric/get-started/fabric-trial>

-   Blog oficial

    -   <https://blog.fabric.microsoft.com/en-us/blog>

-   Microsoft Learn Fabric en español

    -   <https://learn.microsoft.com/es-es/fabric/>

-   Curso en LinkedIn Learning en español / inglés

    -   <https://www.linkedin.com/learning/search?entityType=COURSE&keywords=Fabric>

-   Sitios, canales y blogs

    -   ADN Fabric <https://www.linkedin.com/company/adnfabric>

    -   YouTube ADN Fabric: <https://www.youtube.com/@ADNFabric>

    -   Blog dataXbi <https://www.dataxbi.com/blog/>

    -   YouTube dataXbi
        <https://www.youtube.com/channel/UCjlNR33C5E-llrqnprYhEyg>

