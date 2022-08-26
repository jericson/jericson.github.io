---
layout: page
title: Tags
permalink: /tag/
---
    
<!-- https://longqian.me/2017/02/09/github-jekyll-tag/ -->
    
{% capture temptags %}
  {% for tag in site.tags %}
    {{ tag[1].size | plus: 1000 }}#{{ tag[0] }}#{{ tag[1].size }}
  {% endfor %}
{% endcapture %}

{% assign sortedtemptags = temptags | split:' ' | sort | reverse %}
<ol>
{% for temptag in sortedtemptags %}
  {% assign tagitems = temptag | split: '#' %}
  {% capture tagname %}{{ tagitems[1] }}{% endcapture %}
  <li><a href="/tag/{{ tagname }}"><nobr>{{ tagname }}</nobr></a></li>
{% endfor %}
</ol>
<!--

<div id="tag-cloud">
    {{ site | tag_cloud }}
</div>
-->

<!--  LocalWords:  LocalWords 
 -->
