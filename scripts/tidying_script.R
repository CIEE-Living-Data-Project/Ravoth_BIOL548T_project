#### TIDYING REDBACK SALAMANDER ABUNDANCE FIGURES (BIOL548T)
#### DATE CREATED: 16 SEPTEMBER 2022
#### BY: SARAH RAVOTH

######################### ENABLE GROUNDHOG ######################### 
library(groundhog)
groundhog.library(pkg = c("tidyverse"), date="2022-09-14")


######################### LOAD IN DATA ######################### 
# record the url to download data from my repo
url_sal <-"https://raw.githubusercontent.com/CIEE-Living-Data-Project/Ravoth_BIOL548T_project/main/data/BrucePNP_RedBackedSal_2018_abun.csv"

# read data into r 
sal <-read_csv(url_sal, 
               locale=locale(encoding="latin1")) # the second row is french column names with accent characters, so need this line to read in the accents, or can't run/get error 

# take a look at data
head(sal)
str(sal)
summary(sal)


######################### TIDY DATA ######################### 
# tidying whole dataset would be a project itself, so i'll just tidy what's necessary for the figure
sal.t <- sal %>% 
  slice(-1) %>%  # removing first row (the french colnames)
  rename(Redback=`Redback form of Eastern Redback Salamander Count`,       # renaming redback morph abundance column (so shorter)
         Leadback=`Leadback form of Eastern Redback Salamander Count`) %>%  # renaming leadback morph abundance column (so shorter)
  pivot_longer(cols=c(Redback, Leadback), names_to="Morph", values_to="count") %>%  # converting table from wide to long format (now, for each survey, there's a column that species morph and count for each morph)
  as.data.frame() %>%  # previously step converted to a tibble--this is converting back to a dataframe format
  mutate(count=as.numeric(count)) # change count class from character to numeric (important to properly plot it later)


######################### SAVE TIDIED DATA ######################### 
# again, will make this a relative file path for final submission
setwd("/Users/sarahravoth/Desktop/biol548T//Ravoth_BIOL548T_project/data") 
write.csv(sal.t, file="tidied_BrucePNP_RedBackedSal_2018_abun.csv")

  