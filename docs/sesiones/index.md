---
title: Todas las Sesiones
layout: default
permalink: /sesiones/
description: Explora todas las sesiones de ADN Fabric organizadas por temporadas
---

<section class="section">
  <h2>Sesiones por Temporada</h2>
  <div class="card-grid">
    <article class="card">
      <img src="/assets/img/sesiones/t1s01-introduccion-a-fabric/media/portada.png" alt="Temporada 1">
      <h3>Temporada 1</h3>
      <p>Las primeras 13 sesiones de ADN Fabric cubriendo los fundamentos de Microsoft Fabric: introducción, ingesta, exploración, transformación y orquestación de datos.</p>
      <p><a class="btn" href="{{ '/sesiones/t1/' | relative_url }}">Ver todas las sesiones</a></p>
    </article>
    
    <article class="card">
      <img src="https://img.youtube.com/vi/do-t9GHgKjE/sddefault.jpg" alt="Temporada 2">
      <h3>Temporada 2</h3>
      <p>Sesiones 14 a 21 profundizando en características avanzadas de Fabric, novedades de la plataforma y casos de uso especializados con invitados expertos.</p>
      <p><a class="btn" href="{{ '/sesiones/t2/' | relative_url }}">Ver todas las sesiones</a></p>
    </article>
    
    <article class="card">
      <img src="https://img.youtube.com/vi/RKpBDQ6oHOE/maxresdefault.jpg" alt="Temporada 3">
      <h3>Temporada 3</h3>
      <p>Sesiones 22 a 31 explorando temas avanzados de Data Engineering, Real-Time Intelligence, AI y las últimas novedades de Microsoft Fabric.</p>
      <p><a class="btn" href="{{ '/sesiones/t3/' | relative_url }}">Ver todas las sesiones</a></p>
    </article>
  </div>
</section>

<section class="section" style="margin-top: 3rem;">
  <h2>Últimas Sesiones Publicadas</h2>
  {% assign published = site.sesiones | where: "published", true | sort: 'date' | reverse %}
  <div class="card-grid">
    {% for s in published limit:6 %}
      <article class="card">
        <img src="{{ s.imageurl | relative_url }}">
        <h3>{{ s.title }}</h3>
        <p>{{ s.summary }}</p>
        <p><a class="btn" href="{{ s.url | relative_url }}">Leer más</a></p>
      </article>
    {% endfor %}
  </div>
</section>
