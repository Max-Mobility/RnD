---
layout: page
title: OpenPose
project: openpose
---

{% for item in site.collections %}
 {% if item.label == page.project %}
  {% assign project = item.docs %}
 {% endif %}
{% endfor %}

{% if project %}
 {% assign about = project | where: "title", "About" | first %}

 {% if about %}
  <p>{{ about.content }}</p>
 {% else %}
 
# Uh Oh!

You did not properly set up the `About` file for your project! Be sure you followed the directions located [here](README.md)

 {% endif %}


# Contents

 {% if about.toc %}
  {% for content in about.toc %}
   {% for item in project %}
    {% if item.title == content %}
   <p><a href="{{ item.url | relative_url }}">{{ item.title }}</a></p>
    {% endif %}
   {% endfor %}
  {% endfor %}
 {% else %}
  {% for item in project %}
   {% if item.title != "About" %}
   <p><a href="{{ item.url | relative_url }}">{{ item.title }}</a></p>
   {% endif %}
  {% endfor %}
 {% endif %}

{% else %}
# Uh Oh!

You did not properly set up your project! The `project` field in this document's front matter does not match any existing project folder!  Be sure you followed the directions located [here](_documentation/making_a_new_project.md)

{% endif %}
