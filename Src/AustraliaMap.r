# load packages and data
library(ggplot2)
load("GitHub\\R.CodeSnippets\\Data\\ozdata.rda")

# map showing all states in different colours
qplot(long, lat, data = ozdata, geom = "polygon", fill = state, main = "States of Australia") + coord_equal()

# map showing coastline only
qplot(long, lat, data = subset(ozdata, border == "coast"), geom = "path", fill = state, main = "Coastline of Australia") + coord_equal()
      
# western australia only
qplot(long, lat, data = subset(ozdata, state == "WA"), geom = "polygon", fill = I("blue"), main = "WA only") + coord_equal()