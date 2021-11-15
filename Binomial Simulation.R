
binom.cdf <- function(x, n, p){
  Fx <0
  for (i in 0:x){
    Fx <- Fx + choose(n, i)*p^i*(1-p)^(n-1)
  }
return (Fx)
}

cdf.sim <-function(F, ...){
  X <-0
  U <- runif(1)
  while(F(X, ...)<U){
    X <- X+1
  }
  return(X)
}

##Beginning of Play Simulation
#Choose either pass or run play
function1 <- function(){
  binom.sim <- function(n, p){
    X <- 0 
    px <- (1-p)^n
    Fx <- px
    U <- runif(1)
    while (Fx < U){
      X <- X +1
      px <- px*p/(1-p)*(n-X+1)/X
      Fx <- Fx +px 
    }
    return(X)
  }
 if (binom.sim(1, .567) ==1){
   #Go to Function2 --> Run Play
   
 }else{
   #Go to Function3 --> Pass Play
 }

}