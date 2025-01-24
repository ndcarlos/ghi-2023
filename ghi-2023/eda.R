# Exploratory Data Analysis

library(ggplot2)
library(dplyr)
library(patchwork)

head(dat)

eda_subset <- c("BRA", "GRC", "JPN", "KOR", "MAR", "PRT", "THA", "TZA", "USA", "VNM")

eda_df <- dat %>%
  filter(country_code %in% eda_subset) %>%
  sort(life_expect)

plot1 <- ggplot(eda_df, aes(x = year, y = life_expect, color = country_code)) +
  geom_line(size = 0.75) +
  labs(
    title = "Life Expectancy Over Time",
    x = "Year",
    y = "Life Expectancy"
  ) +
  theme_minimal()

plot2 <- ggplot(eda_df, aes(x = year, y = infant_mortality, color = country_code)) +
  geom_line(size = 0.75) +
  labs(
    title = "Infant Mortality Over Time",
    x = "Year",
    y = "Infant Mortality"
  ) +
  theme_minimal()

# Combine plots side by side
plot1 + plot2
