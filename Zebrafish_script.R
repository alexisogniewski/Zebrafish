## Loading in packages
library(tidyverse)
library(ggplot2)
library(readxl)

## Loading in data
zebra <- read_excel("Zebrafish.xlsx", na = c("NA",""))

#visualizing the data
ggplot(zebra, aes(x = prefer, fill = prefer))+
  geom_bar(stat = "count")+
  scale_fill_manual(values = c("deepskyblue", "firebrick"))+
  labs(title = "Preference of Female Zebrafish",
       x = "Prefered Agressive Male",
       y = "Number of Fish")+
  theme(legend.position = "none")

#statistical test time bb
