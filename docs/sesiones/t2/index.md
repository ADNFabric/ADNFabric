---
title: Temporada 2
layout: default
permalink: /sesiones/t2/
image: https://img.youtube.com/vi/do-t9GHgKjE/maxresdefault.jpg
description: Todas las sesiones de la segunda temporada de ADN Fabric - Elevar el conocimiento para adoptar Microsoft Fabric
---

<section class="section">
  <h2>Todas las sesiones de la segunda temporada</h2>
  <div class="card-grid">
    {% assign published = site.sesiones | where: "published", true | where: "season", 2 | sort: 'order' %}
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
