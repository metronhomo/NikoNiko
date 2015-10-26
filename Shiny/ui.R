library(shiny)
library(shinythemes)

shinyUI(navbarPage("",theme = shinytheme("flatly"),
                   tabPanel("Gráficas",
                            sidebarLayout(
                              sidebarPanel(
                                menu(),
                                width = 2
                              ),    
                              mainPanel(
                                tabsetPanel(
                                  tabPanel("Graf",
                                           column(5,plotOutput("plot",height=100,width=1300)),align="center")
                                )
                              )
                            )
                   )
                   
))