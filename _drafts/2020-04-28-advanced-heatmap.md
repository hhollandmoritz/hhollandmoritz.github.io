---
layout: post
title: "Quick Code: Advanced Heatmaps with ggplot"
date: 2020-05-04
tags: quick-code R
description: 
---
I often want to categorize my heatmaps by multiple taxonomic groups in R. After much head-bashing, I've come to this solution. 

First you'll want to set up your data frame for plotting. The dataframe should have row names that correspond to taxonomy strings and each column should be a sample or average over a group of samples. 


```R

# Libraries
library(plyr)
library(tidyverse)
library(ggplot2)
library(viridis) # for pretty viridis coloring

### Get data ready for plotting

# ### Plot heatmap
# 
heatmap <- ggplot(data = tax_sum_fam_species_ord_melt,
                         aes(x = Family , y = `GatherVariable`, 
                         fill = `Relative Abundance`)) + 
  geom_tile(height = 1) + 
  geom_text(aes(label = `Relative Abundance`), 
  		    color = "white", size = rel(4.5)) +
  facet_grid(~ Phylum, scales = "free", space = "free", drop = TRUE) +
  scale_x_discrete(expand = c(0,0)) +
  scale_y_discrete(expand = c(0,0), drop = TRUE) +
  theme(strip.placement = "outside",
        strip.background = element_rect(size = 0.5, color = "white"),
        panel.border = element_blank(),
        panel.spacing = unit(0, "snpc"),
        axis.text.x = element_text(angle = 45, 
        hjust = 1, size = rel(1.5)),
        axis.text.y = element_text(angle = 0, hjust = 0, face = "italic", size = rel(1.5)),
        strip.text.x = element_text(hjust = 0.5, size = rel(0.8), margin = margin(c(18,0,18,0))),
        axis.title = element_blank(),
        legend.position = "none") +
  scale_fill_viridis(na.value = "white") + # optional viridis colors
  ggtitle("Taxonomy Heatmap by GatherVariable")
```

