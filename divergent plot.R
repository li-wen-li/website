bike_ <- read.csv('~/Shiny_App/Data_Visualization/day.csv')
bike_ <- bike_[-1] ## first column is just index number
bike_$dteday <- as.Date(bike_$dteday, format = '%Y-%m-%d')
bike_[,c(2:8)] <- lapply(bike_[,c(2:8)], factor)
bike_$dteday <- week(bike_$dteday)

bike_plot <- bike_ %>% group_by(season) %>%  summarise(
  clear = sum(weathersit==1),
  cloudy = sum(weathersit==2),
  light_drop = sum(weathersit==3),
  heacy_drop = sum(weathersit==4)
)

bike_plot[1] <- c('Spring','Summer','Fall','Winter')
bike_plot$season <- as.factor(bike_plot$season)
bike_plot[,2:5] <- lapply(bike_plot[,2:5], as.numeric)