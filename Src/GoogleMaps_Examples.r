library(ggplot2)
library(ggmap)

# Satalite view
mapImageData1 <- get_map(location = c(lon = 144.992468, lat = -37.838371),
                         color = "color",
                         source = "google",
                         maptype = "satellite",
                         zoom = 17)

ggmap(mapImageData1,
      extent = "device",
      ylab = "Latitude",
      xlab = "Longitude")


# Terrain map
mapImageData2 <- get_map(location = c(lon = 144.992468, lat = -37.838371),
                         color = "color",
                         source = "google",
                         maptype = "terrain",
                         zoom = 16)

ggmap(mapImageData2,
      extent = "device",
      ylab = "Latitude",
      xlab = "Longitude")

# Road map 
mapImageData3 <- get_map(location = c(lon = 144.992468, lat = -37.838371),
                         color = "color",
                         source = "google",
                         maptype = "roadmap",
                         zoom = 16)

ggmap(mapImageData3,
      extent = "device",
      ylab = "Latitude",
      xlab = "Longitude")
