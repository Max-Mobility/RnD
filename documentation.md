---
layout: page
title: Documentation Guide
collection: documentation
---

{% for item in site.collections %}
 {% if item.label == page.collection %}
  {% assign collection = item.docs %}
 {% endif %}
{% endfor %}

{% if collection %}
 {% assign about = collection | where: "title", "About" | first %}

 {% if about %}
  <p>{{ about.content }}</p>
 {% else %}
 
# Uh Oh!

You did not properly set up the `About` file for your collection! Be sure you followed the directions located [here](README.md)

 {% endif %}

# Contents

b+
 {% if about.toc %}
  {% for content in about.toc %}
   {% for item in collection %}
    {% if item.title == content %}
    {% comment %}
   <p><a href="{{ item.url | prepend: site.baseurl }}">{{ item.title }}</a></p>
   {% endcomment %}
   [{{item.title}}]({{item.url | prepend: site.baseurl}})
    {% endif %}
   {% endfor %}
  {% endfor %}
 {% else %}
  {% for item in collection %}
   {% if item.title != "About" %}
   <p><a href="{{ item.url | prepend: site.url }}">{{ item.title }}</a></p>
   {% endif %}
  {% endfor %}
 {% endif %}

{% else %}

# Uh Oh!

You did not properly set up your collection! The `title` field in this document's front matter does not match any existing collection folder!  Be sure you followed the directions located [here](README.md)

{% endif %}