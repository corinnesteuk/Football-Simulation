library(Rlab)
##Beginning of Play Simulation
# Instantiating Downs & Counts
state <- list()
state$down <- 1 
state$downyards <- 0 
state$totyards <- 0 
state$totdowns <- 0 

#Create loop of n simulations
#Choose either pass or run play

play <- function(){
  decision <- rbern(1, .567)
 if (decision ==1L){
   yardage <- round(rnorm(1, mean = 3, sd = 3))
   return(yardage)
 }else{
   yardage <- 0
   while ((yardage < 3) | (yardage > 75)){
     yardage <- rlnorm(1, mean = log(10), sd = 1)
     yardage <- round(yardage)
   }
   #Given his pass is of length 'yardage,' 
   #what is the probability that he can complete a pass of this length?
   p_comp <- .97^(yardage)
   complete_check <- rbern(1, prob = p_comp)
   if(complete_check ==1){
     return(yardage)
   }else{
     yardage <- 0 
     return (yardage)
   }
 }
}

drive <-function(){
state$down <- 1 
state$downyards <- 0 
state$totyards <- 0 
state$totdowns <- 0 
#while total yards is less than 75 and down is less than 5
while ((state$totyards < 75) & (state$down <= 4)){
yards <- play()

state$down <- state$down +1 
state$downyards <-  state$downyards + yards
state$totyards <- state$totyards + yards
state$totdowns <-  state$totdowns + 1

if (state$totyards >= 75 ){
  break
}else if(state$downyards >= 10){
  state$down <- 1
  state$downyards <- 0
}else if(state$down > 4){
  break
}

}
return(state)}
results <- replicate(1000, drive())
