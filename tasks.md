---
layout: page
title: Tasks
permalink: /tasks/
---

{% for task in site.data.drupal.sites.ability.tasks %}

## {{ task.title[0].value }}

{{ task.body[0].value }}

{% endfor %}
