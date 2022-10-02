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

