---
layout: page
#title: Tags
permalink: /tag/
---
    

    
<!-- https://longqian.me/2017/02/09/github-jekyll-tag/ -->
    
{% capture temptags %}
  {% for tag in site.tags %}
    {{ tag[1].size | plus: 1000 }}#{{ tag[0] }}#{{ tag[1].size }}
  {% endfor %}
{% endcapture %}

{% assign sortedtemptags = temptags | split:' ' | sort | reverse %}
{% for temptag in sortedtemptags %}
  {% assign tagitems = temptag | split: '#' %}
  {% capture tagname %}{{ tagitems[1] }}{% endcapture %}
  1. [{{ tagname }}](/tag/{{ tagname }}) {{ tagitems[2] }}
{% endfor %}

<img src="/images/tags.jpg" alt="Sandal covered in tags." />

<!--

<div id="tag-cloud">
    {{ site | tag_cloud }}
</div>
-->

<!--  LocalWords:  LocalWords 
 -->
