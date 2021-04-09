---
title: Vaccine Popularity in US
author: Linear Fragility
date: '2021-04-05'
slug: []
categories:
  - Data World
tags:
  - Google Trend
  - R
  - Data Visualization
thumbnail: "images/covid-19.jpg"
---

# How people react to Covid-19 Vaccine?

##### People hold various views on whether they should receive the Covid-19 vaccine, today lets find out how people from different states react to this vaccination, with the help from Google Trend.

```r
library(gtrendsR)
library(tidyverse)
library(usmap)
```

```r
vaccine_us <- gtrends("vaccine",geo = "US", time = "today 12-m") ##hits data about vaccine from last 12 month

vaccine_by_state <- vaccine_us$interest_by_region

vaccine_by_dma <- vaccine_us$interest_by_dma ## description of DMA, see link https://www.groundtruth.com/glossary_term/what-are-designated-market-areas/

vaccine_by_state$fips <- cdlTools::fips(vaccine_by_state$location)

plot_usmap(data = vaccine_by_state, values = "hits",  color = "#69b3a2", labels=TRUE) + 
  scale_fill_continuous( low = "white", high = "#69b3a2", 
                         name = "Popularity", label = scales::comma
  ) + 
  theme(legend.position = "right") + 
  theme(panel.background = element_rect(colour = "white")) + 
  labs(title = "Popularity of Vaccine in US", subtitle = "Measured by Google Hits", caption = "Source: @Linear Fragility")

```
![vaccine map](/figures/vaccine_map.jpg)


##### Now lets find out how people react to vaccine over time since April 2020.

```r
vaccine_by_time <- vaccine_us$interest_over_time

time_plot <- ggplot(data = vaccine_by_time ,aes(x=date, y=hits)) +
    geom_area(fill="#69b3a2", alpha=0.5) +
    geom_line(color="#69b3a2") +
    labs(title = "Popularity of Vaccine in US over time", subtitle = "Measured by Google Hits", caption = "Source: @Linear Fragility")

time_plot
```
![vaccine map](/figures/vaccine_over_time.png)
