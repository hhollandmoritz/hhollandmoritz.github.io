---
layout: page
permalink: /publications/
link_name: publications
title: selected publications
# Because descriptions don't handle links quite right, to color links with theme, make sure to surround
# description text with <article></article> flags.
description: <article>To see the most current list of publications, check out my <a href="https://scholar.google.com/citations?user=zETn5qAAAAAJ&hl=en" target="_blank">Google Scholar</a> page.
  For PDFs of papers published during my dissertation, see the Fierer Lab <a href="http://fiererlab.org/publications/" target="_blank">publications page</a>. If a pdf is not available on this page feel free to <a href="mailto:hhollandmoritz@gmail.com" target="_blank">contact me</a> for a copy. </article> 
pryears: [2020, 2019, 2018, 2014]
npryears: [2014, 2013]
---

<h3  class="pubyear">In the pipeline</h3>
{% bibliography -f prpr %}

<h3  class="pubyear">Publications</h3>
<h4  class="pubyear"><i>Peer reviewed</i></h4>
{% for y in page.pryears %}
  <h4 class="year">{{y}}</h4>
  {% bibliography -f pr_papers -q @*[year={{y}}]* %}
{% endfor %}

<h4  class="pubyear"><i>Not peer reviewed</i></h4>
{% for y in page.npryears %}
  <h4 class="year">{{y}}</h4>
  {% bibliography -f npr_papers -q @*[year={{y}}]* %}
{% endfor %}
