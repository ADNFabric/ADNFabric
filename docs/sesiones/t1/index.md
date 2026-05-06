---
title: Sesiones
layout: default
permalink: /sesiones/t1/
image: /assets/img/sesiones/t1s01-introduccion-a-fabric/media/portada.png
description: Todas las sesiones de la primera temporada de ADN Fabric - Elevar el conocimiento para adoptar Microsoft Fabric
---

<section class="section">
  <h2>Todas las sesiones de la primera temporada</h2>
  <div class="card-grid">
    {% assign published = site.sesiones | where: "published", true | sort: 'order' %}
    {% for s in published %}
      <article class="card">
        <img src="{{ s.imageurl | relative_url }}">
        <h3>{{ s.title }}</h3>
        <p>{{ s.summary }}</p>
        <p><a class="btn" href="{{ s.url | relative_url }}">Leer más</a></p>
      </article>
    {% endfor %}
  </div>
</section>
