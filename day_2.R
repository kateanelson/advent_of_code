## Advent of Code 2022
## Day 2 Puzzle 
## Created 2022-12-02 
## Kate Nelson 

library(tidyverse)



# Day 2.1 -----------------------------------------------------------------


  ## 1 = A = X (beats 3)
  ## 2 = B = Y (beats 1)
  ## 3 = C = Z (beats 2)

  ## need value, outcome, total 

  input <- read_delim("input_day2.txt", col_names = c("elf", "you"))
  
  
  day_2 <-input %>% 
    mutate(across(everything(), ~recode(., A = 1, 
                                        B = 2, 
                                        C = 3, 
                                        X = 1, 
                                        Y = 2, 
                                        Z = 3)),
           outcome = case_when(elf - you ==  0 ~ 3,    #tie 
                               elf - you == -1 ~ 6,    #win 
                               elf - you ==  2 ~ 6,    #win
                               elf - you ==  1 ~ 0,    #loss
                               elf - you == -2 ~ 0),   #loss 
           total = outcome + you)
  
  sum(day_2$total)
  
  

# Day 2.2 -----------------------------------------------------------------

  
    
    day_2_2 <-input %>% 
      rename(outcome = you) %>% 
      mutate(across(everything(), ~recode(., A = 1, 
                                          B = 2, 
                                          C = 3, 
                                          X = 0,        #lose
                                          Y = 3,        #draw
                                          Z = 6)),      #win 
      you = case_when(outcome == 0 ~ elf-1,    #lose
                      outcome == 3 ~ elf,      #draw
                      outcome == 6 ~ elf + 1), #win 
      you = recode(you, `4`=1, `0`=3), #loop around since 1 beats 3 
      total = outcome + you) 
  
  sum(day_2_2$total)
    
    