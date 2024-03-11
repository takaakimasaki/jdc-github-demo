#set up
install.packages("pacman")
pacman::p_load(dplyr, tidyverse, WDI, ggplot2, ggthemes, here)

#task 1: loading WDI data on refugees and save it as csv
WDI::WDIsearch('refugee*')
dat = WDI::WDI(indicator=c('SM.POP.REFG'), start=1960, end=2021)
dat %>% write_csv(here::here("","data","refugee_stats.csv"))

#test