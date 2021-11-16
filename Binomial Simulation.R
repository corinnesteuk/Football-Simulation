#FIRST DOWN CHECK
#After each play, we need to increment the down they are on, check to see if they have reached a first down, 
#and see if they have surpassed 4th down without completing 10 yards
function4 <- function()
  if (tot_yrd >= 75){
    return(TRUE)
  }else if(d_yrd >= 10){
    d_cnt <-1
  }
  if (d_cnt ==4){
    return(FALSE)
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
    tot_yrd <- tot_yrd + yardage
    tot_down <- tot_down + 1
    d_cnt <- d_cnt +1
  }else{
    tot_down <- tot_down + 1
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
  if ((yardage > 3) & (yardage < 75)){ 
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
   tot_yrd <- tot_yrd + yardage
   tot_down <- tot_down + 1
   d_cnt <- d_cnt +1
  }else{
    tot_down <- tot_down + 1
    d_cnt <- d_cnt +1
  }
  #Call function4: First Down Check
  #Call function5: Touchdown Check
 }##END OF FUNCTION3



##Beginning of Play Simulation
# Instantiating Downs & Counts
d_yrd <- 0
t_yrd <- 0
t_down <- 1
d_cnt <- 1

#Create loop of n simulations
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