library(shiny)
library(quantmod)
library(tidyquant)
library(BatchGetSymbols)
library(dplyr)

source('Simulator Server.R', local = TRUE)
source('Simulator UI.R')

shinyApp(ui, server)
