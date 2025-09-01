---
title: Sesiones
layout: default
permalink: /listado-sesiones/
---

<section class="section">
  <h2>Todas las sesiones de la primera temporada</h2>
  <div class="card-grid">
    {% assign published = site.sesiones | where: "published", true | sort: 'order' %}
    {% for s in published %}
      <article class="card">
        <div class="placeholder">Imagen</div>
        <h3>{{ s.title }}</h3>
        <p>{{ s.summary }}</p>
        <p><a class="btn" href="{{ s.url | relative_url }}">Leer más</a></p>
      </article>
    {% endfor %}
  </div>
  <p style="margin-top:16px;color:var(--muted)">Cada semana publicamos una nueva sesión de la primera temporada. ¡Vuelve pronto para descubrir más!</p>
</section>
