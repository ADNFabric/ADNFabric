---
title: ADN Fabric
layout: default
---
<section class="hero">
  <h1>Elevar el conocimiento para adoptar Microsoft Fabric</h1>
  <a class="btn" href="{{ '/sobre-la-iniciativa/' | relative_url }}">Sobre la iniciativa</a>
</section>

{% include upcoming.html %}

<section class="section">
  <h2>Sesiones de la primera temporada</h2>
  {% assign published = site.sesiones | where: "published", true | sort: 'date' | reverse %}
  <div class="card-grid">
    {% for s in published limit:3 %}
      <article class="card">
        <img src="{{ s.imageurl | relative_url }}">
        <h3>{{ s.title }}</h3>
        <p><a class="btn" href="{{ s.url | relative_url }}">Leer más</a></p>
      </article>
    {% endfor %}
  {% assign published = published | compact %}
    {% assign count = published | size %}
    <!-- Debug: count={{ count }} -->
    {% if count < 3 %}
      {% assign start = count | plus: 1 %}
      {% for i in (start..3) %}
      <article class="card">
        <div class="placeholder">Próximamente</div>
        <h3>Sesión {{ i }}</h3>
        <p>Publicamos una nueva sesión cada semana.</p>
      </article>
      {% endfor %}
    {% endif %}
  </div>
  <div style="margin-top:18px;text-align:right">
    <a class="btn" href="{{ '/listado-sesiones/' | relative_url }}">Ver todas las sesiones</a>
  </div>
</section>