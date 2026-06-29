---
title: Temporada 3
layout: default
permalink: /sesiones/t3/
image: https://img.youtube.com/vi/RKpBDQ6oHOE/maxresdefault.jpg
description: Todas las sesiones de la tercera temporada de ADN Fabric - Elevar el conocimiento para adoptar Microsoft Fabric
---

<section class="section">
  <h2>Todas las sesiones de la tercera temporada</h2>
  <div class="card-grid">
    {% assign published = site.sesiones | where: "published", true | where: "season", 3 | sort: 'order' %}
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
