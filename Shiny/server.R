# server.R
library(shiny)


shinyServer(function(input, output,session){
  
  data <- reactive({
    
  })
  
  output$plot <- renderPlot({
    graphdata <- data()
  }, 
  height = 900, 
  width = 1000)
  
  
})