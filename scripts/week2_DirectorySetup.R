### set up 
### date created: 16 sept 2022
### purpose: to set up files, folders, etc. in the R directory for the BIOL548T project 

# enable groundhog library
# there are no packages used so far in this script, so commented out
# groundhog.library(c(""), date = "2022-09-14")

#check 
getwd() # check
setwd("/Users/sarahravoth/Desktop/biol548T/Ravoth_BIOL548T_project")

# code below copied from tutorial3_data_download file (15 sept 2022)
dir.create("data/") # make data wd
dir.create("scripts/")

# new code (16 sept 2022)
dir.create("outputs/")
dir.create("tutorials/")
