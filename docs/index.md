---
title: Inicio
layout: default
---
<section class="hero">
  <img src="{{ '/assets/img/banner.png' | relative_url }}" alt="ADN Fabric">
  <p>Elevar el conocimiento para adoptar MS Fabric</p>
  <a class="btn" href="{{ '/sesiones/' | relative_url }}">Ver sesiones</a>
</section>

{% include upcoming.html %}

<section class="section">
  <h2>Sesiones de la primera temporada</h2>
  {% assign published = site.sesiones | where: "published", true | sort: 'order' %}
  <div class="card-grid">
    {% for s in published limit:3 %}
      <article class="card">
        <div class="placeholder">Imagen</div>
        <h3>{{ s.title }}</h3>
        <p>{{ s.summary }}</p>
        <p><a class="btn" href="{{ s.url | relative_url }}">Leer más</a></p>
      </article>
    {% endfor %}
    {% assign count = published | size %}
    {% if count < 3 %}
      {% for i in (count+1)..3 %}
      <article class="card">
        <div class="placeholder">Próximamente</div>
        <h3>Sesión {{ i }}</h3>
        <p>Publicamos una nueva sesión cada semana.</p>
      </article>
      {% endfor %}
    {% endif %}
  </div>
</section>