---
title: "Developing Data Products Week4 assignment"
output: slidy_presentation
date: '2022-10-01'
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Links
In this task, my shiny application link is:
https://whisperxxxx2.shinyapps.io/myShinyapplication/

a link of server.R and ui.R code on github:
https://github.com/whisperxxxx2/shiny-week4-assignment

## Target Data
```{r}
head(WorldPhones)
```


## ui.R

```{r, eval=FALSE}

library(datasets)
library(shiny)

shinyUI(fluidPage(
  titlePanel("Telephones by region"),
  sidebarLayout(      
    sidebarPanel(
      selectInput("region", "Region:", 
                  choices=colnames(WorldPhones))
    ),
    mainPanel(
      plotOutput("Plot1")  
    )
    
  )
))

```

## serve.R

```{r, message=FALSE}
library(datasets)
library(shiny)

shinyServer(function(input, output) {

  output$Plot1 <- renderPlot({

    barplot(WorldPhones[,input$region]/1000, 
            main=input$region,
            ylab="Number of Telephones(million)",
            xlab="Year")
    })

})

```

