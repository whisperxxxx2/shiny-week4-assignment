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

