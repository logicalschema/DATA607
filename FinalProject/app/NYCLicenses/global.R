#https://shiny.rstudio.com/gallery/superzip-example.html

library(leaflet)
library(leaflet.extras) #for demo heat map
library(ggplot2)
library(dplyr)
library(lubridate)
library(tidyr)



# Borough, Latitude, Longitude
# Bronx, 40.837222, -73.886111
# Brooklyn, 40.624722, -73.952222
# Manhattan, 40.783333, -73.966667
# Queens, 40.75, -73.866667
# Staten Island, 40.628714, -74.095322


# variables
Boro <- c('Bronx', 'Brooklyn', 'Manhattan', 'Queens', 'Staten Island')
Year <- c(1998:2020)
Latitude <- c(40.837222, 40.624722, 40.783333, 40.75, 40.628714)
Longitude <- c(-73.886111, -73.952222, -73.966667, -73.866667, -74.095322)

# Boro, Latitude, Longitude
boroughData <- c(Boro, Latitude, Longitude)



# Reading the Legally_Operating_Businesses.csv file
data <- read.csv("data.csv", 
                 sep = ",", 
                 header = TRUE)


data$License.Creation.Date <- as.Date(data$License.Creation.Date, "%Y-%m-%d")
data$License.Expiration.Date <- as.Date(data$License.Expiration.Date, "%Y-%m-%d")


data <- data[ as.numeric(format(data$License.Creation.Date, "%Y")) >= 1998 , c("Industry","License.Creation.Date", "License.Expiration.Date", "Address.Borough")]

#year, Address.Borough, n
tallyData <- data %>% 
  mutate(year = as.numeric(format(License.Creation.Date, '%Y'))) %>% 
  group_by(year, Address.Borough) %>% 
  drop_na(Address.Borough) %>%
  tally()



