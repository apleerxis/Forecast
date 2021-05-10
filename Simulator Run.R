library(shiny)

source('Simulator Server.R', local = TRUE)
source('Simulator UI.R')

shinyApp(ui, server)
