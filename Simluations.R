# 
# 
# ##Run Mean = 3
# run mean = 3
# pass mean = log(10)
# p_comp base = .97
# prob_td = 0.3546
# avrg_plays = 4.3492
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
  p_comp_base = rep(c(rep(c(.97, .9, .95), 3)), 3))

emp.data
