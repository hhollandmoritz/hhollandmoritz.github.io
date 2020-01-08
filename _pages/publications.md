---
layout: page
permalink: /publications/
link_name: publications
title: selected publications
description: To see the most current list of publications, check out my <a href="https://scholar.google.com/citations?user=zETn5qAAAAAJ&hl=en" target="_blank">Google Scholar</a> page.
  For PDFs of papers published during my dissertation, see the Fierer Lab <a href="http://fiererlab.org/publications/" target="_blank">publications page</a>. 
years: [2019, 2018, 2017, 2014, 2013]
---
<h3  class="pubyear">In the Pipeline</h3>
{% bibliography -f prpr %}

<h3  class="pubyear">Published</h3>
{% for y in page.years %}
  <h3 class="year">{{y}}</h3>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}
