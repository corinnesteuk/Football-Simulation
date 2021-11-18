library(Rlab)

#FIRST DOWN CHECK
#After each play, we need to increment the down they are on, check to see if they have reached a first down, 
#and see if they have surpassed 4th down without completing 10 yards
touchdown_check <- function(tot_yrd){
  if (tot_yrd >= 75){
    return(TRUE)
  }}
firstdown_check <- function(d_yrd, d_cnt){
  if(d_yrd >= 10){
    d_cnt <- 1
    d_yrd <- 0
    down_info <- c(d_cnt, d_yrd)
    return(down_info)
  }else{
    down_info <- c(d_cnt, d_yrd)
    return(down_info)
  }
}
fourthdown_check <- function(d_cnt){
  if (d_cnt > 4){
    return(FALSE)
  }
}

#RUN PLAY
run_play <- function(){
  #randomly sample from normal distribution to return yardage of run
  yardage <- round(rnorm(1, mean = 3, sd = 3))
  d_yrd <- d_yrd + yardage
  tot_yrd <- tot_yrd + yardage
  tot_down <- tot_down + 1
  d_cnt <- d_cnt +1
  
  #checking if we have reached a touchdown, first down, or ran out of plays
  touchdown_check(tot_yrd)
  d_cnt <- firstdown_check(d_yrd, d_cnt)[1]
  d_yrd <- firstdown_check(d_yrd, d_cnt)[2]
  fourthdown_check(d_cnt)
}
   ##END OF FUNCTION RUN PLAY
  
  ##PASS PLAY
pass_play <- function(){
  #Randomly sample numbers from log distribution for yardage
  yardage <- 0
  while ((yardage < 3) | (yardage > 75)){
  yardage <- rlnorm(1, mean = log(10), sd = 1)
  yardage <- round(yardage)
  }
  #Given his pass is of length 'yardage,' 
  #what is the probability that he can complete a pass of this length?
  p_comp_fn <- function(yardage){
    m <- .97
    p_comp <- m^(yardage)
    return(p_comp)
  }
  p_comp <- p_comp_fn(yardage)
  complete_check <- rbern(1, prob = p_comp)
  complete_check
  if(complete_check ==1){
   d_yrd <- d_yrd + yardage
   tot_yrd <- tot_yrd + yardage
   tot_down <- tot_down + 1
   d_cnt <- d_cnt +1
  }else{
    tot_down <- tot_down + 1
    d_cnt <- d_cnt +1
  }
  #checking if we have reached a touchdown, first down, or ran out of plays
  touchdown_check(tot_yrd)
  d_cnt <- firstdown_check(d_yrd, d_cnt)[1]
  d_yrd <- firstdown_check(d_yrd, d_cnt)[2]
  fourthdown_check(d_cnt)
}
 ##END OF FUNCTION PASS PLAY



##Beginning of Play Simulation
# Instantiating Downs & Counts
d_yrd <- 0
tot_yrd <- 0
tot_down <- 0
d_cnt <- 1

#Create loop of n simulations
#Choose either pass or run play
nsim <- 10000
j <- 0
while (j<= nsim){
  decision <- rbern(1, .567)
 if (decision ==1L){
   play_result <- run_play()
   
 }else{
   play_result <- pass_play()
 }
 # if (play_result == TRUE){
 #   break
 # }else if (play_result ==FALSE){
 #   break
 #}else{j =j+1}
  j = j+1
}
  
# should we run this until play_result == TRUE meaning we've reached a touchdown and then see what j we
# are on (that would also be a count of the number of plays)
