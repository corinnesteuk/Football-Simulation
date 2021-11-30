<<<<<<< HEAD
library(ggplot2)
=======
# 
>>>>>>> 42606495db929a8ff2c65f3c1f021e52b015f0f4
# 
# ##Run Mean = 3
# run mean = 3
# pass mean = log(10)
# p_comp base = .97
# prob_td = 0.3546
<<<<<<< HEAD
# avrg_plays = 4.3492 
=======
# avrg_plays = 4.3492
>>>>>>> 42606495db929a8ff2c65f3c1f021e52b015f0f4
# 
# run mean = 3
# pass mean = log(10)
# p_comp base = .9
# prob_td =  0.0401
# avrg_plays = 0.6493
# 
# run mean = 3
# pass mean = log(10)
# p_comp base = .95
# prob_td = 0.1859
# avrg_plays = 2.5527
# 
# run mean = 3
# pass mean = log(5)
# p_comp base = .97
# prob_td = 0.3272
# avrg_plays = 4.6803
# 
# run mean = 3
# pass mean = log(5)
# p_comp base = .9
# prob_td =  0.0537
# avrg_plays = 0.957
# 
# run mean = 3
# pass mean = log(5)
# p_comp base = .95
# prob_td = 0.2019
# avrg_plays = 3.1313
# 
# run mean = 3
# pass mean = log(15)
# p_comp base = .97
# prob_td = 0.364
# avrg_plays = 4.175
# 
# run mean = 3
# pass mean = log(15)
# p_comp base = .9
# prob_td =  0.0319
# avrg_plays = 0.4989
# 
# run mean = 3
# pass mean = log(15)
# p_comp base = .95
# prob_td = 0.1729
# avrg_plays = 2.1708
# 
# 
# 
# 
# #Run Mean = 2
# run mean = 2
# pass mean = log(10)
# p_comp base = .97
# prob_td = 0.2063
# avrg_plays = 2.3883
# 
# run mean = 2
# pass mean = log(10)
# p_comp base = .9
# prob_td =  0.012
# avrg_plays =  0.1956
# 
# run mean = 2
# pass mean = log(10)
# p_comp base = .95
# prob_td = 0.0896
# avrg_plays = 1.1444
# 
# run mean = 2
# pass mean = log(5)
# p_comp base = .97
# prob_td = 0.1665
# avrg_plays = 2.3441
# 
# run mean = 2
# pass mean = log(5)
# p_comp base = .9
# prob_td =  0.0126
# avrg_plays =  0.2194
# 
# run mean = 2
# pass mean = log(5)
# p_comp base = .95
# prob_td = 0.0793
# avrg_plays = 1.1926
# 
# run mean = 2
# pass mean = log(15)
# p_comp base = .97
# prob_td = 0.2248
# avrg_plays = 2.3141
# 
# run mean = 2
# pass mean = log(15)
# p_comp base = .9
# prob_td =  0.0073
# avrg_plays =  0.1038
# 
# run mean = 2
# pass mean = log(15)
# p_comp base = .95
# prob_td = 0.0884
# avrg_plays = 1.0319
# 
# #Run Mean = 4
# run mean = 4
# pass mean = log(10)
# p_comp base = .97
# prob_td = 0.5421
# avrg_plays = 6.6754
# 
# run mean = 4
# pass mean = log(10)
# p_comp base = .9
# prob_td = 0.1233
# avrg_plays = 0.1233
# 
# run mean = 4
# pass mean = log(10)
# p_comp base = .95
# prob_td = 0.3485
# avrg_plays = 4.8535
# 
# run mean = 4
# pass mean = log(5)
# p_comp base = .97
# prob_td = 0.5568
# avrg_plays = 7.8982
# 
# run mean = 4
# pass mean = log(5)
# p_comp base = .9
# prob_td =  0.1603
# avrg_plays =  2.733
# 
# run mean = 4
# pass mean = log(5)
# p_comp base = .95
# prob_td = 0.3862
# avrg_plays = 5.8579
# 
# run mean = 4
# pass mean = log(15)
# p_comp base = .97
# prob_td = 0.5201
# avrg_plays = 5.8742
# 
# run mean = 4
# pass mean = log(15)
# p_comp base = .9
# prob_td =  0.0908
# avrg_plays =  1.4416
# 
# run mean = 4
# pass mean = log(15)
# p_comp base = .95
# prob_td = 0.3161
# avrg_plays = 4.0751

emp.data <- data.frame(
  sim_id = c (1:27),
  run_mean = c(3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4),
  pass_mean = c(replicate(3, c('log(10)', 'log(10)', 'log(10)', 'log(5)', 'log(5)', 'log(5)', 'log(15)', 'log(15)', 'log(15)'))),
<<<<<<< HEAD
  p_comp_base = rep(c(rep(c(.97, .9, .95), 3)), 3),
  prob_td = c(0.3546, 0.0401, 0.18459, 0.3272, 0.0537, 0.2019, 0.364, 0.0319, 0.1729, 0.2063, 0.012, 0.0896, 0.1665, 0.0126, 0.0793, 0.2248, 0.0073, 0.0884, 0.5421, 0.1233, 0.3485, 0.5568, 0.1603, 0.3862, 0.5201, 0.0908, 0.3161),
  avrg_plays = c(4.3492, 0.6493, 2.5527, 4.6803, 0.957, 3.1313, 4.175, 0.4989, 2.1708, 2.3883, 0.1956, 1.1444, 2.3441, 0.2194, 1.1926, 2.3141, 0.1038, 1.0319, 6.6756, 0.1233, 4.8535, 7.8982, 2.733, 5.8579, 5.8742, 1.4446, 4.0751))
emp.data

##Y axis is prob_td
#X axis is run mean
# color = pass mean
# shape = p_comp_base


ggplot(data = emp.data, aes(x = run_mean, y = prob_td, colour = pass_mean)) + geom_point(aes(shape = factor(p_comp_base)))+ggtitle("Touchdown Probability Simulations") + 
  ylab("Touchown Probability") +
  xlab("Run Mean") +
  scale_fill_discrete(name = "Pass Mean")


ggplot(data = emp.data, aes(x = run_mean, y = avrg_plays, colour = pass_mean)) + 
  geom_point(aes(shape = factor(p_comp_base)))+ggtitle("Average Play Count (Given TD) Simulations") + 
  ylab("Average Play Count")+
  xlab("Run Mean") 

                                                                     
=======
  p_comp_base = rep(c(rep(c(.97, .9, .95), 3)), 3))

emp.data
>>>>>>> 42606495db929a8ff2c65f3c1f021e52b015f0f4
