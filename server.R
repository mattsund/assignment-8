library(dplyr)
library(plotly)
shinyServer(function(input, output) {
  
  # Renders a scatterplot representing the two axes that the user decides
  # to choose.
      output$graph <- renderPlotly({
        p <- plot_ly(data, 
                     x = eval(parse(text = input$xaxis)), 
                     y = eval(parse(text = input$yaxis)), 
                     mode = 'markers', 
                     type = "scatter",
                     color = Species
                     ) %>%
          layout(
            xaxis = list(title = input$xaxis),
            yaxis = list(title = input$yaxis)
          )
      })
    
  })