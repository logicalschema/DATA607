#https://shiny.rstudio.com/gallery/superzip-example.html

library(leaflet)
library(leaflet.extras) #for demo heat map
library(ggplot2)
library(dplyr)
library(lubridate)
library(tidyr)



# variables
Boro <- c('Bronx', 'Brooklyn', 'Manhattan', 'Queens', 'Staten Island')
Year <- c(1977:2020)



# Reading the Legally_Operating_Businesses.csv file
data <- read.csv("data.csv", 
                 sep = ",", 
                 header = TRUE)


data$License.Creation.Date <- as.Date(data$License.Creation.Date, "%Y-%m-%d")
data$License.Expiration.Date <- as.Date(data$License.Expiration.Date, "%Y-%m-%d")