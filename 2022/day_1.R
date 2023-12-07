## Advent of Code 2022
## Day 1 Puzzle 
## Created 2022-12-02 
## Kate Nelson 

library(tidyverse)


# Day 1.1 -----------------------------------------------------------------

  input <- read_delim("input_day1.txt", delim = "/t", 
                       skip_empty_rows = FALSE, 
                       col_names = "calories") 
  
  day_1 <- input %>% 
    
    # create grouping column - counts NAs 
    mutate(elf_id = cumsum(is.na(calories))) %>%  
    
    # sums total calories carried by each elf 
    group_by(elf_id) %>% 
    summarise(total_calories = sum(calories, na.rm = T)) 
    
    # returns calories carried by elf carrying the most calories 
    max(day1_1$total_calories)
  
  

# Day 1.2 -----------------------------------------------------------------

  ## Sum of top 3 elves 
   day_1 %>% 
      arrange(desc(total_calories)) %>% 
      slice(1:3) %>% 
      colSums()
    
    
    
    
    