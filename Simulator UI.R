
# Define UI for app that draws a histogram ----
ui <- fluidPage(
  
  # App title ----
  h1(titlePanel("Welcome to the Portfolio Simulator!")),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input details for modelling assumptions for both the index returns and stock returns
      
      # Modelling assumptions
      h2(textOutput(outputId = "Model_Details")),
      
      withMathJax(),
      
      radioButtons(inputId = "Index_Model",
                  label = "Choose the model to generate the index returns",
                  selected = NULL,
                  choices = c("Random walk based on historical estimates of daily means and variances: $$ R_{m} \\sim N( \\mu, \\sigma^{2}) $$", 
                              "Time series model (not specified yet - need to research further)")),
      
      withMathJax(),
      
      radioButtons(inputId = "Stock_Model",
                  label = "Choose the model to generate the individual stock returns",
                  selected = NULL,
                  choices = c("Univariate regression on index returns. So for stock 'i': $$ R_{i} = a_{i} + b_{i} R_{m} + error $$", 
                              "Multivariate regression on index returns (e.g. Fama and French Model). So for stock 'i': $$ R_{i} = a_{i} + b_{i} R_{m} + \\Sigma_{j} c_{ij} factor{j} + error $$")),
      
      
      # Simulation details

      numericInput(inputId = "Num_Sims",
                  label = "Choose the number of simulations you want to perform, between 1,000 and 1,000,000",
                  value = 10000,
                  min = 1000,
                  max = 1000000),

      numericInput(inputId = "Num_Days",
                   label = "Enter the number of trading days you wish to simulate between 1 and 1,000 days (note: ~20 per month, ~250 per year)",
                   value = 250,
                   min = 1,
                   max = 1000),


      # Input details including stock tickers and the number of units
      h2(textOutput(outputId = "space")),
      h2(textOutput(outputId = "Stock_Details")),

      textInput(inputId = "ticker1",
                label = "Enter your first stock's ticker on the ASX"),
      textInput(inputId = "units1",
                label = "Enter the amount of units held"),

      textInput(inputId = "ticker2",
                label = "Enter your second stock's ticker on the ASX"),
      textInput(inputId = "units2",
                label = "Enter the amount of units held"),

      textInput(inputId = "ticker3",
                label = "Enter your third stock's ticker on the ASX"),
      textInput(inputId = "units3",
                label = "Enter the amount of units held"),

      textInput(inputId = "ticker4",
                label = "Enter your fourth stock's ticker on the ASX"),
      textInput(inputId = "units4",
                label = "Enter the amount of units held"),
      
      textInput(inputId = "ticker5",
                label = "Enter your fifth stock's ticker on the ASX"),
      textInput(inputId = "units5",
                label = "Enter the amount of units held"),
      
      textInput(inputId = "ticker6",
                label = "Enter your sixth stock's ticker on the ASX"),
      textInput(inputId = "units6",
                label = "Enter the amount of units held"),
      
      textInput(inputId = "ticker7",
                label = "Enter your seventh stock's ticker on the ASX"),
      textInput(inputId = "units7",
                label = "Enter the amount of units held"),
      
      textInput(inputId = "ticker8",
                label = "Enter your eighth stock's ticker on the ASX"),
      textInput(inputId = "units8",
                label = "Enter the amount of units held"),
      
      textInput(inputId = "ticker9",
                label = "Enter your ninth stock's ticker on the ASX"),
      textInput(inputId = "units9",
                label = "Enter the amount of units held"),
      
      textInput(inputId = "ticker10",
                label = "Enter your tenth stock's ticker on the ASX"),
      textInput(inputId = "units10",
                label = "Enter the amount of units held")
      
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
        htmlOutput(outputId = "summary"),
        plotOutput(outputId = "summary_pie")
      
    )
  )
)

