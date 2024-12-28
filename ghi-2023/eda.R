# Exploratory Data Analysis

library(ggplot2)
library(config)
library(maps)
library(rworldmap)
library(sf)

world_map_sf <- st_as_sf(world_map)

ghi_23 <- dat[dat$year == 2023, ]

world_map_sf <- merge(world_map_sf, ghi_23, by.x = 'ISO3', by.y = 'country_code')

# need to fix this plot
# issues with colorfill
ggplot(data = world_map_sf) +
  geom_sf(aes(fill = 'life_expect')) +
  scale_fill_viridis_d(option = 'plasma', na.value = 'grey90') +
  theme_minimal() +
  labs(title = 'Map of 2023 Life Expectancies by Countries',  fill = 'Life Expectancy')




