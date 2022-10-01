#### REDBACK SALAMANDER ABUNDANCE FIGURES (BIOL548T)
#### DATE CREATED: 25 SEPTEMBER 2022
#### BY: SARAH RAVOTH

######################### ENABLE GROUNDHOG ######################### 
library(groundhog)
groundhog.library(pkg = c("tidyverse", "ggplot2"), date="2022-09-14")




######################### LOAD IN DATA ######################### 
# record the url to download data from my github repo
url_sal.t <-"https://raw.githubusercontent.com/CIEE-Living-Data-Project/Ravoth_BIOL548T_project/main/data/tidied_BrucePNP_RedBackedSal_2018_abun.csv"

# read data into r 
sal.t <-read_csv(url_sal.t)


######################### MAKE THE FIGURE ######################### 

sal.fig <- sal.t %>%
  filter(count!="NA", Soil.Temperature...C.!="N/A") %>%   # filtered out NAs
  ggplot(aes(x=as.numeric(Soil.Temperature...C.), y=count, col=Morph)) +  # changed the class for soil temperature from character to numeric (or else doesn't plot properly)--this was plotted on the x axis, abundance plotted on y axis, and points coloured by redback salamander morph
  geom_point(position = "jitter") +  # jitter points so it gives a better image of underlying data
  geom_smooth(method="lm") + # fit lines to data & specify fitting method (lm = linear model)
  theme_classic() + # change plotting theme
  labs(x="Soil temperature (ºC)", y="Abundance") +  # change axis labels
  scale_color_manual(values=c("#7A7A7A", "#CB0000")) # change colours to match morph


######################### SAVE THE FIGURE ######################### 
# saving figure to the outputs folder
# will change this to a relative file path!
setwd("/Users/sarahravoth/Desktop/biol548T//Ravoth_BIOL548T_project/outputs")

png(paste0("SoilTemp_RedBackedSalMorph_AbundanceFig_",Sys.Date(),".png" )) # set document to write plots to
sal.fig
dev.off()
    

# the end! :)

