
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

#RUN PLAY
function2 <- function()
  #randomly sample from normal distribution to return yardage of run
  yardage <- rnorm(1, mean = 3, sd = )
  i = 0
  n = 10
  while (i<=n){
  if ((yardage > 3) || (yardage < 75)){
    break
  }else{i = i+1}
  }
  if(complete_check ==1){
    d_yrd <- d_yrd + yardage
    t_yrd <- t_yrd + yardage
    t_down <- t_down + 1
    d_cnt <- d_cnt +1
  }else{
    t_down <- t_down + 1
    d_cnt <- d_cnt +1
  }
  #Call function4: First Down Check
  #Call function5: Touchdown Check
   ##END OF FUNCTION2
  
  ##PASS PLAY
function3 <- function(){
  #Randomly sample numbers from log distribution for yardage
  i = 0
  n = 10
  while (i<=n){
  yardage <- rlnorm(1, mean = log(10), sd = 1)
  yardage <- round(yardage)
  print(yardage)
  if ((yardage > 3) && (yardage < 75)){ 
    break
  }else{i = i+1}
  }
  #Given his pass is of length 'yardage,' 
  #what is the probability that he can complete a pass of this length?
  p_comp_fn <- function(yardage){
    m <- .97
    p_comp <- m^(yardage)
    return(p_comp)
  }
  p_comp <- p_comp_fn(yardage)
  complete_check <- rbern(1,prob = p_comp)
  if(complete_check ==1){
   d_yrd <- d_yrd + yardage
   t_yrd <- t_yrd + yardage
   t_down <- t_down + 1
   d_cnt <- d_cnt +1
  }else{
    t_down <- t_down + 1
    d_cnt <- d_cnt +1
  }
  #Call function4: First Down Check
  #Call function5: Touchdown Check
 }##END OF FUNCTION3

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