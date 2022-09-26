#### REDBACK SALAMANDER ABUNDANCE FIGURES (BIOL548T)
#### DATE CREATED: 25 SEPTEMBER 2022
#### BY: SARAH RAVOTH

######################### ENABLE GROUNDHOG ######################### 
library(groundhog)
groundhog.library(pkg = c("tidyverse", "ggplot2"), date="2022-09-14")




######################### LOAD IN DATA ######################### 

### changed to tidied data!!!!!1

# note: tried to make a relative file path but it wasn't working--i will figure this out for final submission
getwd() # check
setwd("/Users/sarahravoth/Desktop/biol548T//Ravoth_BIOL548T_project/data") # reset

sal <-  read.csv("BrucePNP_RedBackedSal_2018_abun.csv",  # read in data 
                 fileEncoding = "Latin1") # the second line is french column name with accent characters, so need this to read in the accents, or can't run/error 


######################### MAKE THE FIGURE ######################### 










