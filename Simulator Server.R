library(shiny)
source("Simulator Functions.R")

# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
  output$Model_Details <- renderText({
    paste("Modelling Assumptions and Simulation Details")
  })
  
  output$Simulation_Details <- renderText({
    paste("Simulation details")
  })
  
  output$Stock_Details <- renderText({
    paste("Stock Details")
  })
  
  output$space <- renderText({ paste(" ")})
  
  output$summary <- renderUI({
    
    display_portfolio_summary(input)
    
  })
  
  output$summary_pie <- renderPlot({
    
    display_portfolio_pie(input)
    
  })
  
  
  
}
