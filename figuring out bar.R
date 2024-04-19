library(tidyverse)
library(ggplot2)
library(readxl)

##reading the test data
zebrafishy <- read_excel("zebrafish_test (1).xlsx")

##creating a bar graph
ggplot(zebrafishy,aes(x = prefer_agressive))+
  geom_bar(stat = "count")+
  labs(title = "Preference of Female Zebrafish", 
       x = "Preferred Agressive Male", 
       y = "Number of Fish")
