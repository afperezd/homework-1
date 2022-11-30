install.packages(c("tidyverse","dslabs","dplyr","ggplot2","ggrepel"))
library(tidyverse)
library(dslabs)
library(dplyr)
library(ggplot2)
library(ggrepel)
options(digits = 3)
data("brexit_polls")
p <- 0.481    # official proportion voting "Remain"
d <- 2*p-1    # official spread
data(murders)
murders
murders %>% 
  ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()