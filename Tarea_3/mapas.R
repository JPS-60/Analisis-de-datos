install.packages("ggplot2")
install.packages("maps")
library(ggplot2)
library(maps)
paises_en_covid <- unique(covid$Country)

world_map <- map_data("world")

map_data_filtered <- world_map[world_map$region %in% paises_en_covid, ]

# Crear el mapa
ggplot() +
  geom_map(data = map_data_filtered,
           map = map_data_filtered,
           aes(x = long, y = lat, map_id = region),
           color = "black",
           fill = "lightblue") +
  theme_void() +
  labs(title = "Mapa Mundial con países presentes en el conjunto de datos COVID PRUEBA")
