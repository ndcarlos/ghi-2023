# Exploratory Data Analysis

library(ggplot2)
library(config)
library(dplyr)

dat <- read.csv('/Users/home/Documents/Projects/R/ghi-2023/ghi-2023/data/world_health_data.csv')

summary(dat)


eda_subset<- c('BRA', 'GRC', 'JPN', 'KOR', 'MAR',  'PRT', 'THA', 'TZA', 'USA', 'VNM')

dat_eda <- dat %>%
  filter(country_code %in% eda_subset)

head(dat_eda)
  



