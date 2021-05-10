
# Define UI for app that draws a histogram ----
ui <- fluidPage(
  
  # App title ----
  titlePanel("Welcome to the Portfolio Simulator"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input: Slider for the number of bins ----
      sliderInput(inputId = "bins",
                  label = "Number of bins to display on the histogram:",
                  min = 1,
                  max = 50,
                  value = 30),
      
      textInput(inputId = "ticker1",
                label = "Enter your first stock's ticker on the ASX",
                value="",
                width=NULL,
                placeholder=NULL),
      
      textInput(inputId = "ticker2",
                label = "Enter your second stock's ticker on the ASX",
                value="",
                width=NULL,
                placeholder=NULL),
      
      textInput(inputId = "ticker3",
                label = "Enter your third stock's ticker on the ASX",
                value="",
                width=NULL,
                placeholder=NULL),
      
      textInput(inputId = "ticker4",
                label = "Enter your first stock's ticker on the ASX",
                value="",
                width=NULL,
                placeholder=NULL),
      
      textInput(inputId = "ticker5",
                label = "Enter your second stock's ticker on the ASX",
                value="",
                width=NULL,
                placeholder=NULL),
      
      textInput(inputId = "ticker6",
                label = "Enter your third stock's ticker on the ASX",
                value="",
                width=NULL,
                placeholder=NULL),
      
      textInput(inputId = "ticker7",
                label = "Enter your first stock's ticker on the ASX",
                value="",
                width=NULL,
                placeholder=NULL),
      
      textInput(inputId = "ticker8",
                label = "Enter your second stock's ticker on the ASX",
                value="",
                width=NULL,
                placeholder=NULL),
      
      textInput(inputId = "ticker9",
                label = "Enter your third stock's ticker on the ASX",
                value="",
                width=NULL,
                placeholder=NULL),
      
      textInput(inputId = "ticker10",
                label = "Enter your third stock's ticker on the ASX",
                value="",
                width=NULL,
                placeholder=NULL)
                 
      
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      # Output: Histogram ----
      plotOutput(outputId = "distPlot"),
      textOutput(outputId = "textOutput")
      
    )
  )
)

