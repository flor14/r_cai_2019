#### CAI 2019 - Introducción al lenguaje R ####

# Más información sobre el dataset Gapminder
# http://bit.ly/2N99ji0


# graficos parte 1 --------------------------------------------------------

library(ggplot2)
library(dplyr)

#Tomar solo los datos del año 2007
datos2007 <- gapminder %>%
                 filter(anio == 2007)

#Ver las primeras filas del año 2007

head(datos2007)

#Solo los datos
ggplot(data = gapminder)

#Los datos mas el eje x e y
ggplot(data = gapminder,
       mapping = aes(x = pib_per_capita,
                     y = esperanza_de_vida))

#Los datos, los ejes y el tipo de gráfico
ggplot(data = gapminder,
       mapping = aes(x = pib_per_capita,
                     y = esperanza_de_vida))+
  geom_point()              

#Los datos, los ejes y el tipo de gráfico, el color y el tamaño de los puntos
ggplot(data = gapminder, 
       mapping = aes(x = pib_per_capita,
                     y = esperanza_de_vida,
                     color = continente,
                     size = poblacion))+
  geom_point()

#Los datos, los ejes y el tipo de gráfico, el color y el tamaño de los puntos, los nombres de
#los ejes
ggplot(data = gapminder, 
       mapping = aes(x = pib_per_capita, 
                     y = esperanza_de_vida,
                     colo = continente,
                     size = poblacion))+
  geom_point()+
  labs(y="Esperanza de Vida", x= "PBI per Capita")

#Los datos, los ejes y el tipo de gráfico, el color y el tamaño de los puntos, los nombres de
#los ejes y la leyenda y agregar transparencia a los puntos

ggplot(data = gapminder, 
       mapping = aes(x = pib_per_capita,
                     y = esperanza_de_vida,
                     color = continente,
                     size = poblacion))+
  geom_point(alpha = 0.2)+
  labs(y = "Esperanza de Vida", x= "PBI per Capita")+
  guides(colour = guide_legend("Continente"), size = guide_legend("Población"))
  

