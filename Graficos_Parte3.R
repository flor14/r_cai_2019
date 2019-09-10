#### CAI 2019 - Introducción al lenguaje R ####

# Más información sobre el dataset Gapminder
# http://bit.ly/2N99ji0


# graficos parte 3 --------------------------------------------------------


#Instalar paquetes necesarios
#install.packages("glue")
#install.packages("gapminder")
install.packages("gganimate")
install.packages("gifski")
#Lindos ejemplos:
#https://github.com/thomasp85/gganimate
#https://www.datanovia.com/en/blog/gganimate-how-to-create-plots-with-beautiful-animation-in-r/

# Cargar las librerias
library(ggplot2)
library(gganimate)
library(gapminder)

# Generamos el mismo gráfico de puntos por continente
ggplot(gapminder, aes(pib_per_capita, 
                      esperanza_de_vida,
                      size = poblacion,
                      colour = pais)) +
  geom_point(alpha = 0.7, show.legend = FALSE) +
  scale_colour_manual(values = country_colors) +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  facet_wrap(~continente) +
  # Aqui está el código que genera la animación 
  labs(title = 'Año: {frame_time}',
       x = 'PBI per Capita',
       y = 'Esperanza de Vida')+
  transition_time(anio) +
  ease_aes('linear')
