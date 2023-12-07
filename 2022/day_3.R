## Advent of Code 2022
## Day 3 Puzzle 
## Created 2022-12-03
## Kate Nelson 

library(tidyverse)


# Day 3.1 -----------------------------------------------------------------


#split strings in half
#find the item type that appears twice
#give it a value based on the alphabet, add 26 if it is a capital 

input <- read_tsv("input_day3.txt", col_names = "rucksack") 

alphabet<- letters[1:26]

day_3 <- input %>% 
  mutate(first_half = substring(rucksack, 0, nchar(rucksack)/2),
    second_half = substring(rucksack, nchar(rucksack)/2 + 1, nchar(rucksack)))

map2



