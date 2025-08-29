---
layout: default
title: Inicio
---

<div class="posts-feed">
  {% for post in site.posts %}
  <article class="post-card" style="display:flex;gap:1rem;align-items:flex-start;margin-bottom:1.25rem;">
    <a class="thumb" href="{{ post.url | relative_url }}" style="flex:0 0 140px;">
      <img src="{{ post.image | default: '/assets/placeholder.jpg' | relative_url }}" alt="" style="width:140px;height:90px;object-fit:cover;border-radius:8px;">
    </a>
    <div class="body" style="flex:1;">
      <h2 style="margin:0 0 .25rem;"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p style="margin:.25rem 0 .5rem;">{{ post.excerpt | strip_html | truncate: 180 }}</p>
      <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%-d %b %Y" }}</time>
    </div>
  </article>
  {% endfor %}
</div>
