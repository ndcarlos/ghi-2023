# Exploratory Data Analysis

library(ggplot2)
library(dplyr)
library(patchwork)

head(dat)

eda_subset <- c("BRA", "GRC", "JPN", "KOR", "MAR", "PRT", "THA", "TZA", "USA", "VNM")

eda_df <- dat %>%
  filter(country_code %in% eda_subset) %>%
  arrange(life_expect, descending = TRUE)

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

plot3 <- ggplot(eda_df, aes(x = year, y = neonatal_mortality, color = country_code)) +
  geom_line(size = 0.75) +
  labs(
    title = "Neonatal Over Time",
    x = "Year",
    y = "Neonatal Mortality"
  ) +
  theme_minimal()

plot4 <- ggplot(eda_df, aes(x = year, y = under_5_mortality, color = country_code)) +
  geom_line(size = 0.75) +
  labs(
    title = "Under 5 Mortality Over Time",
    x = "Year",
    y = "Under 5 Mortality"
  ) +
  theme_minimal()

plot5 <- ggplot(eda_df, aes(x = year, y = prev_hiv, color = country_code)) +
  geom_line(size = 0.75) +
  labs(
    title = "Previous HIV Over Time",
    x = "Year",
    y = "Previous HIV"
  ) +
  theme_minimal()

# Combine plots side by side
plot1 + plot2 + plot3 + plot4 + plot5
