# Exploratory Data Analysis

library(ggplot2)
library(ggmap)
library(config)
library(googleway)


# Retrieve api key from secure config file
api_key <- config::get('gmaps')$api_key

# Register api key
register_google(key = api_key)

map_data <- get_googlemap(center = c(lon = 0, lat = 0), zoom = 2, maptype = "roadmap")


ggmap(map_data)



