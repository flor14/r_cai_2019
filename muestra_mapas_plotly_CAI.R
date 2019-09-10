
# web apps, graficos interactivos, mapas en pocas lineas

library(ggplot2)
library(dplyr)

# Elimino los datos hago esto para no usar todos los datos 
# y que no tarde tanto en cargar es solo un ejemplo

grafico <- ggplot(data = gapminder, 
                  mapping = aes(x = pib_per_capita,
                  y = esperanza_de_vida,
                  color = continente))+
               geom_point()

#### PLOTLY: Graficos interactivos ####
# uso la funcion ggplotly() en el gr?fico anterior

library(plotly)

ggplotly(grafico)

# Mapa básico con ggplot2 ####

# bajo datos
mapa <- ggplot2::map_data("world")

# grafico
ggplot(data = mapa)+
  geom_polygon(aes(x = long, 
                   y = lat, 
                   group = group))+ # capa de mapa
  geom_point(aes(x = -65, y = -33),
             color = "red",
             size = 5) # punto

#### SHINY: Web apps con R ####

# NEW FILE > SHINY WEB APP... > 

# Tocar "Run App" en el editor para correr el ejemplo predeterminado



