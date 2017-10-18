#### Bee R Project ####

# reading in data and saving to object
morph_flight_buzz_freq <- read.csv("data/morph_flight_buzz_freq.csv")

# overview of object
str(morph_flight_buzz_freq)

## data parsing using dplyr

#install packages
install.packages("dplyr")
install.packages("DBI")
install.packages("lazyeval")
install.packages("ggplot")
install.packages("ggplot2")

#load libraries
library(dplyr)
library(DBI)
library(lazyeval)
library(ggplot)
library(ggplot2)

# selecting preferred columns with dplyr, assigning an object
select(morph_flight_buzz_freq, Species, TongueLength, WingLength, IntertegularDistance)
morph <- select(morph_flight_buzz_freq, Species, TongueLength, WingLength, IntertegularDistance, FlightBuzzFrequency)

# Figure 1. Comparing wing length amoung species
ggplot(data=morph, 
       aes(x=Species, y=WingLength)) +
  geom_boxplot(color="tomato") +
  labs(title = "Species Vs. Wing Length") 
  x="Species" 
  y="Wing Length" +
theme_bw()
  # save plot to file
  ggsave("figures/Figure1.pdf")
  

# Figure 2. Comparing buzz frequency between castes
ggplot(data = morph_flight_buzz_freq,
       aes(x = Caste, y =FlightBuzzFrequency)) + 
  geom_point(alpha=0.1, color="blue") +
  labs(title = "Caste Vs Buzz Frequency") 
       x="Caste" 
       y="Buzz Frequency (Hz)" +
  theme_bw()
       # save plot to file
       ggsave("figures/Figure2.pdf")

# Figure 3.Buzz Frequency amongst species
       
ggplot(data=morph, 
       aes(x=Species, y=FlightBuzzFrequency)) +
  geom_boxplot(color="purple") +
  labs(title = "Species Vs. Buzz Frequency",
  x="Species",
  y="Buzz Frequency(Hz)") +
theme_bw()
     # save plot to file
     ggsave("figures/Figure3.pdf")
      
# ANOVA: does buzz frequency vary by species?
Species_BuzzFreq_test <-aov(FlightBuzzFrequency ~ Species, data=morph_flight_buzz_freq)

summary(Species_BuzzFreq_test) #summary of ANOVA test


#creating citations of packages
citation("dplyr")
citation("DBI")
citation("lazyeval")
citation("ggplot") #ggplot not found?
citation("ggplot2")

