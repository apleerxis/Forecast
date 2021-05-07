### S&P 500 Simulations
### Based on data since 2010

## 0. Read in data

setwd("C:/Users/aperisanidis/OneDrive - Deloitte (O365D)/Desktop/All/Education/Stonks")

SnP500 <- read.csv("S&P500.csv")
SnP500 <- SnP500[SnP500$Close != "null", ]

SnP500_close <- as.numeric(SnP500$Close)

## 1. Create vector of daily returns (as a percentage)

returns <- c()
for (i in 2:length(SnP500_close)) {
  returns[i] <- 100*(SnP500_close[i]-SnP500_close[i-1])/SnP500_close[i-1]
}
returns <- returns[2:length(returns)]

# Assess daily returns distributions
par(mfrow=c(1,2))
hist(returns, breaks = 500, xlim = c(-10, 10))
qqnorm(returns);qqline(returns) # Can see normal assumption is bad

# Generate sample statistics
mean(returns)
median(returns)
sd(returns)

## 2. Simulate prices in 3 months (~260/4 = 65 trading days) from now
##    Using the Normal Assumption
##    i.e. Return[i] ~ Normal(mu, sd)

sims <- 50000
trading_days <- floor(250/4)
mu <- mean(returns)
sd <- sd(returns)
price_today <- SnP500_close[length(SnP500_close)]
price_in_3m <- c() # Will be simulated

for (i in 1:sims) {
  
  price <- price_today
  
  for (j in 1:trading_days) {
    return <- rnorm(n=1, mean=mu, sd=sd)
    price <- (1+return/100)*price
  }
  
  price_in_3m[i] <- price
  
}

# Assess/estimate distribution of prices and returns in one year
quarterly_return <- 100*(price_in_3m - price_today)/price_today
par(mfrow = c(1,2))
plot(density(quarterly_return), main="Density of SnP500 3m returns", xlab="Return (%)"); abline(v=0, col=2)
plot(density(price_in_3m), main="Density of SnP500 in 3m", xlab="SnP500 in 3m"); abline(v=price_today, col=2)

# Assess/estimate probability of certain events
sum(price_in_3m >= 4500)/length(price_in_3m) # P(SnP500 >= 4500) in 3m
sum(quarterly_return >= 10)/length(quarterly_return) # P(Quarterly return > 10%)

## 3. Use binomial trees to price options
#     Note risk neutral valuation

u <- exp(sd/100)
d <- 1/u

sims <- 50000
trading_days <- floor(250/4)
price_today <- SnP500_close[length(SnP500_close)]


r <- 1 # Annual (note - this is as a percentage)
risk_neutral_probability_up <- (exp(r/(100*365))-d)/(u-d)
risk_neutral_price_in_3m <- c()

for (i in 1:sims) {
  
  risk_neutral_price <- price_today
  
  for (j in 1:trading_days) { 
    rand <- runif(n=1, min = 0, max = 1)
    
    if (rand < risk_neutral_probability_up) {
      risk_neutral_price <- risk_neutral_price*u
    } else {
      risk_neutral_price <- risk_neutral_price*d
    }
  }
  
  risk_neutral_price_in_3m[i] <- risk_neutral_price
  
}

exercise_price <- 3800

call_option_value <- c()

i <- 1
for (price in risk_neutral_price_in_3m) {
  
  call_option_value[i] <- max(price - exercise_price, 0)
  
  i <- i + 1
}

mean(call_option_value)/(1+r/(100*4))

###########
# STOP LOSS

current_price <- 100
stop_loss     <- 95
trading_days  <- 250

daily_return_mu   <- 0.03 # As a percentage
daily_returns_sd  <- 1    # As a percentage

price <- c()
stopped_price <- c()

for (i in 1:100000) {
  
  current_price <- 100
  stopped <- 0
  
  for (j in 1:trading_days) {
    
    days_ret <- rnorm(n=1,daily_return_mu, daily_returns_sd)
    current_price <- (1+days_ret/100)*current_price
    
    if (current_price <= stop_loss && stopped == 0) {
      stopped_price[i] <- current_price
      stopped <- 1
    }
    
  }
  
  price[i] <- current_price
  if (stopped == 0) {
    stopped_price[i] <- current_price
  }
  
  
}

returns <- 100*(price - 100)/100
stopped_returns <- 100*(stopped_price - 100)/100

par(mfrow = c(2,1))
hist(returns, freq=FALSE, breaks = 50, main = "Annual returns without a stop loss", xlim=c(-40, 40), ylim=c(0,0.03)); abline(v=mean(returns))
hist(stopped_returns, freq=FALSE, breaks = 50, main = "Annual returns with stop loss, assuming no reinvestment", xlim=c(-40,40), ylim=c(0,0.03)); abline(v=mean(stopped_returns))
