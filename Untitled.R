
b <- data.frame(sample(-15:15, 10, replace=TRUE), c(1:10))
colnames(b) <- c('Value','Year')

ggplot(b, aes(x = Year, y = Value, fill = Value > 0)) + geom_bar(stat = "identity")

#####
library(likert)
library(dplyr)
library(lubridate)
library(likert)
library(HH)
bike_ <- read.csv('~/个人网站/Shiny_App/data_plots/Data/bike_by_day.csv')

bike_ <- bike_[-1] ## first column is just index number
bike_$dteday <- as.Date(bike_$dteday, format = '%Y-%m-%d')
bike_[,c(2:8)] <- lapply(bike_[,c(2:8)], factor)
bike_$dteday <- week(bike_$dteday)
str(bike_)

bike_plot <- bike_ %>% select(season, weathersit) %>% group_by(season) %>%  summarise(
  clear = sum(weathersit==1),
  cloudy = sum(weathersit==2),
  light_drop = sum(weathersit==3),
  heacy_drop = sum(weathersit==4)
)

bike_plot[1] <- c('Spring','Summer','Fall','Winter')
bike_plot$season <- as.factor(bike_plot$season)
bike_plot[,2:5] <- lapply(bike_plot[,2:5], as.numeric)
#bike_plot <- bike_plot[, 1:4]

likert(season ~ .,
          bike_plot,
          #positive.order = TRUE,
          as.percent = TRUE,
          main = "Weather Situation in Washington D.C.",
          xlab = 'Percentage'
           )

####


bike_1 <- bike_data[1:730, ]
bike_1$dteday <- week(bike_1$dteday) ##week() function from lubridate, to get week number

by_sea <- bike_1 %>% group_by(yr) %>% summarise(
  year_2011 = sum(as.numeric(weathersit) == 2),
  year_2012 = sum(as.numeric(weathersit) == 2)
  )
str(bike_1)


student <- factor(rep(c(1, 2), c(15,15)), levels = c(1, 2),
                    labels = c("boy", "girl"))
movie_rating <- sample(0:10, 15, replace=TRUE)

# Data 
dat <- apply(Titanic, c(1, 4), sum)
dat
str(dat)
spineplot(dat)
