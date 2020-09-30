---
title: "Rmarkdown to jekyll example"
author: "Hannah Holland-Moritz, et al."
date: "May 13, 2020"
description: A test post of rmarkdown in jekyll
layout: post
tags: R
knit: (function(inputFile, encoding) {
  rmarkdown::render(inputFile, encoding = encoding, output_dir = "../../_posts", output_format = jekyll_document()) })
---



## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


{% highlight Make linenos %}
target:dependency
	rule
{% endhighlight %}

{% highlight r linenos %}
summary(cars)
########################
# Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong text
{% endhighlight %}

{% highlight r linenos %}
summary(cars)
{% endhighlight %}



{% highlight text %}
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
{% endhighlight %}



{% highlight r linenos %}
# more code
test <- rnorm(5)
mean(test)
{% endhighlight %}



{% highlight text %}
## [1] -0.6517061
{% endhighlight %}



{% highlight r linenos %}
if(mean(test) > 1) {
  print("hello")
}
{% endhighlight %}

## Including Plots

You can also embed plots, for example:

![plot of chunk pressure]({{ site.url }}/images/rmarkdown-to-jekyll-example-pressure-1.png)

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
