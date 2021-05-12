library(shiny)

display_portfolio_summary <- function(input) {
  
  str <- h2(paste("Portfolio Summary"))
  yearsLookBack <- 5/365 # For speed of download, this function does not require previous price data. It only requires previous closing price to find market values.
  MV1 <- MV2 <- MV3 <- MV4 <- MV5 <- MV6 <- MV7 <- MV8 <- MV9 <- MV10 <- 0
  
  if (input$units1 != "") { 
    data1 <- BatchGetSymbols(paste(input$ticker1, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data1 <- data1$price.adjusted
    MV1 <- as.numeric(input$units1)*data1[length(data1)]
    str1 <- paste("You hold ", input$units1, " shares of ", input$ticker1,". At $", format(round(data1[length(data1)],2),nsmall=2), "/share, this amounts to a market value of $", format(round(MV1,2),nsmall=2),".<br/>", sep ="") 
  }
  else { 
    str1 <- " " 
    MV1  <- 0
  }
  
  if (input$units2 != "") { 
    data2 <- BatchGetSymbols(paste(input$ticker2, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data2 <- data2$price.adjusted
    MV2 <- as.numeric(input$units2)*data2[length(data2)]
    str2 <- paste("You hold ", input$units2, " shares of ", input$ticker2,". At $", format(round(data2[length(data2)],2),nsmall=2), "/share, this amounts to a market value of $", format(round(MV2,2),nsmall=2),".<br/>", sep ="") 
  }
  else { 
    str2 <- " " 
    MV2 <- 0
  }
  
  if (input$units3 != "") { 
    data3 <- BatchGetSymbols(paste(input$ticker3, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data3 <- data3$price.adjusted
    MV3 <- as.numeric(input$units3)*data3[length(data3)]
    str3 <- paste("You hold ", input$units3, " shares of ", input$ticker3,". At $", format(round(data3[length(data3)],2),nsmall=2), "/share, this amounts to a market value of $", format(round(MV3,2),nsmall=2),".<br/>", sep ="") 
  }
  else { 
    str3 <- " " 
    MV3  <- 0
  }
  
  if (input$units4 != "") { 
    data4 <- BatchGetSymbols(paste(input$ticker4, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data4 <- data4$price.adjusted
    MV4 <- as.numeric(input$units4)*data4[length(data4)]
    str4 <- paste("You hold ", input$units4, " shares of ", input$ticker4,". At $", format(round(data4[length(data4)],2),nsmall=2), "/share, this amounts to a market value of $", format(round(MV4,2),nsmall=2),".<br/>", sep ="") 
  }
  else { 
    str4 <- " " 
    MV4  <- 0
  }
  
  if (input$units5 != "") { 
    data5 <- BatchGetSymbols(paste(input$ticker5, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data5 <- data5$price.adjusted
    MV5 <- as.numeric(input$units5)*data5[length(data5)]
    str5 <- paste("You hold ", input$units5, " shares of ", input$ticker5,". At $", format(round(data5[length(data5)],2),nsmall=2), "/share, this amounts to a market value of $", format(round(MV5,2),nsmall=2),".<br/>", sep ="") 
  }
  else { 
    str5 <- " " 
    MV5  <- 0
  }
  
  if (input$units6 != "") { 
    data6 <- BatchGetSymbols(paste(input$ticker6, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data6 <- data6$price.adjusted
    MV6 <- as.numeric(input$units6)*data6[length(data6)]
    str6 <- paste("You hold ", input$units6, " shares of ", input$ticker6,". At $", format(round(data6[length(data6)],2),nsmall=2), "/share, this amounts to a market value of $", format(round(MV6,2),nsmall=2),".<br/>", sep ="") 
  }
  else { 
    str6 <- " " 
    MV6  <- 0
  }
  
  if (input$units7 != "") { 
    data7 <- BatchGetSymbols(paste(input$ticker7, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data7 <- data7$price.adjusted
    MV7 <- as.numeric(input$units7)*data7[length(data7)]
    str7 <- paste("You hold ", input$units7, " shares of ", input$ticker7,". At $", format(round(data7[length(data7)],2),nsmall=2), "/share, this amounts to a market value of $", format(round(MV7,2),nsmall=2),".<br/>", sep ="") 
  }
  else { 
    str7 <- " " 
    MV7  <- 0
  }
  
  if (input$units8 != "") { 
    data8 <- BatchGetSymbols(paste(input$ticker8, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data8 <- data8$price.adjusted
    MV8 <- as.numeric(input$units8)*data8[length(data8)]
    str8 <- paste("You hold ", input$units8, " shares of ", input$ticker8,". At $", format(round(data8[length(data8)],2),nsmall=2), "/share, this amounts to a market value of $", format(round(MV8,2),nsmall=2),".<br/>", sep ="") 
  }
  else { 
    str8 <- " " 
    MV8  <- 0
  }
  
  if (input$units9 != "") { 
    data9 <- BatchGetSymbols(paste(input$ticker9, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data9 <- data9$price.adjusted
    MV9 <- as.numeric(input$units9)*data9[length(data9)]
    str9 <- paste("You hold ", input$units9, " shares of ", input$ticker9,". At $", format(round(data9[length(data9)],2),nsmall=2), "/share, this amounts to a market value of $", format(round(MV9,2),nsmall=2),".<br/>", sep ="") 
  }
  else { 
    str9 <- " " 
    MV9  <- 0
  }
  
  if (input$units10 != "") { 
    data10 <- BatchGetSymbols(paste(input$ticker10, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data10 <- data10$price.adjusted
    MV10 <- as.numeric(input$units10)*data10[length(data10)]
    str10 <- paste("You hold ", input$units10, " shares of ", input$ticker10,". At $", format(round(data10[length(data10)],2),nsmall=2), "/share, this amounts to a market value of $", format(round(MV10,2),nsmall=2),".<br/>", sep ="") 
  }
  else { 
    str10 <- " " 
    MV10  <- 0
  }

  HTML(paste(str, str1, str2, str3, str4, str5, str6, str7, str8, str9, sep="\n"))
}

display_portfolio_pie <- function(input) {
  
  yearsLookBack <- 5/365 # For speed of download, this function does not require previous price data. It only requires previous closing price to find market weights
  MV1 <- MV2 <- MV3 <- MV4 <- MV5 <- MV6 <- MV7 <- MV8 <- MV9 <- MV10 <- 0
  
  if (input$units1 != "") { 
    data1 <- BatchGetSymbols(paste(input$ticker1, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data1 <- data1$price.adjusted
    MV1 <- as.numeric(input$units1)*data1[length(data1)]
  }
  else { 
    str1 <- " " 
    MV1  <- 0
  }
  
  if (input$units2 != "") { 
    data2 <- BatchGetSymbols(paste(input$ticker2, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data2 <- data2$price.adjusted
    MV2 <- as.numeric(input$units2)*data2[length(data2)]
  }
  else { 
    str2 <- " " 
    MV2 <- 0
  }
  
  if (input$units3 != "") { 
    data3 <- BatchGetSymbols(paste(input$ticker3, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data3 <- data3$price.adjusted
    MV3 <- as.numeric(input$units3)*data3[length(data3)]
  }
  else { 
    str3 <- " " 
    MV3  <- 0
  }
  
  if (input$units4 != "") { 
    data4 <- BatchGetSymbols(paste(input$ticker4, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data4 <- data4$price.adjusted
    MV4 <- as.numeric(input$units4)*data4[length(data4)]
  }
  else { 
    str4 <- " " 
    MV4  <- 0
  }
  
  if (input$units5 != "") { 
    data5 <- BatchGetSymbols(paste(input$ticker5, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data5 <- data5$price.adjusted
    MV5 <- as.numeric(input$units5)*data5[length(data5)]
  }
  else { 
    str5 <- " " 
    MV5  <- 0
  }
  
  if (input$units6 != "") { 
    data6 <- BatchGetSymbols(paste(input$ticker6, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data6 <- data6$price.adjusted
    MV6 <- as.numeric(input$units6)*data6[length(data6)]
  }
  else { 
    str6 <- " " 
    MV6  <- 0
  }
  
  if (input$units7 != "") { 
    data7 <- BatchGetSymbols(paste(input$ticker7, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data7 <- data7$price.adjusted
    MV7 <- as.numeric(input$units7)*data7[length(data7)]
  }
  else { 
    str7 <- " " 
    MV7  <- 0
  }
  
  if (input$units8 != "") { 
    data8 <- BatchGetSymbols(paste(input$ticker8, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data8 <- data8$price.adjusted
    MV8 <- as.numeric(input$units8)*data8[length(data8)]
  }
  else { 
    str8 <- " " 
    MV8  <- 0
  }
  
  if (input$units9 != "") { 
    data9 <- BatchGetSymbols(paste(input$ticker9, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data9 <- data9$price.adjusted
    MV9 <- as.numeric(input$units9)*data9[length(data9)]
  }
  else { 
    str9 <- " " 
    MV9  <- 0
  }
  
  if (input$units10 != "") { 
    data10 <- BatchGetSymbols(paste(input$ticker10, ".AX", sep=""), first.date = Sys.Date()-365*yearsLookBack, last.date = Sys.Date())$df.tickers
    data10 <- data10$price.adjusted
    MV10 <- as.numeric(input$units10)*data10[length(data10)]
  }
  else { 
    str10 <- " " 
    MV10  <- 0
  }
  
  W1 <- W2 <- W3 <- W4 <- W5 <- W6 <- W7 <- W8 <- W9 <- W10 <- 0
  
  if (MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10 > 0) {
    W1 <- 100*MV1/(MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10)
    W2 <- 100*MV2/(MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10)
    W3 <- 100*MV3/(MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10)
    W4 <- 100*MV4/(MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10)
    W5 <- 100*MV5/(MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10)
    W6 <- 100*MV6/(MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10)
    W7 <- 100*MV7/(MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10)
    W8 <- 100*MV8/(MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10)
    W9 <- 100*MV9/(MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10)
    W10 <- 100*MV10/(MV1+MV2+MV3+MV4+MV5+MV6+MV7+MV8+MV9+MV10)
    pie(x = c(W1, W2, W3, W4, W5, W6, W7, W8, W9, W10),
        labels = c(paste(input$ticker1, " (", format(round(W1,2),nsmall=2), "%)", sep=""),
                   paste(input$ticker2, " (", format(round(W2,2),nsmall=2), "%)", sep=""),
                   paste(input$ticker3, " (", format(round(W3,2),nsmall=2), "%)", sep=""),
                   paste(input$ticker4, " (", format(round(W4,2),nsmall=2), "%)", sep=""),
                   paste(input$ticker5, " (", format(round(W5,2),nsmall=2), "%)", sep=""),
                   paste(input$ticker6, " (", format(round(W6,2),nsmall=2), "%)", sep=""),
                   paste(input$ticker7, " (", format(round(W7,2),nsmall=2), "%)", sep=""),
                   paste(input$ticker8, " (", format(round(W8,2),nsmall=2), "%)", sep=""),
                   paste(input$ticker9, " (", format(round(W9,2),nsmall=2), "%)", sep=""),
                   paste(input$ticker10, " (", format(round(W10,2),nsmall=2), "%)", sep=""))
        )
  } else {
    pie(x = 1, labels = c("No holdings"))
  }
  
}