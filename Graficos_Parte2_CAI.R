#### CAI 2019 - Introducción al lenguaje R ####

# Más información sobre el dataset Gapminder
# http://bit.ly/2N99ji0


# gráficos parte 2 --------------------------------------------------------

# Otros tipos de gráfico

library(tidyverse)

# Tomar solo los datos de Argentina
datosAR <- gapminder %>%
  filter (pais == "Argentina")

# Gráfico de lineas
ggplot(data = datosAR, mapping = aes(x = anio, y = poblacion)) +
  geom_line()

# Pruebo Argentina O Brazsil
datos_AR_BR <- gapminder %>%
  filter(pais == "Argentina" | pais == "Brasil")

ggplot(data = datos_AR_BR, mapping = aes(x = anio, y = poblacion, fill= pais)) +
  geom_line()


#Histograma
ggplot(data = gapminder, mapping = aes(x = esperanza_de_vida)) +
  geom_histogram()

ggplot(data = gapminder, mapping = aes(x = esperanza_de_vida)) +
  geom_histogram(bins = 40)

ggplot(data = gapminder, mapping = aes(x = esperanza_de_vida)) +
  geom_histogram(bins = 10)

#Histograma más claro

ggplot(data = gapminder, mapping = aes(x = esperanza_de_vida)) +
  geom_histogram(color = "white")

#Histograma con color
ggplot(data = gapminder, mapping = aes(x = esperanza_de_vida)) +
  geom_histogram(color = "white", fill = "steelblue")

#BoxPlot
ggplot(data = gapminder, mapping = aes(x = continente, y=esperanza_de_vida)) +
  geom_boxplot()

#Grafico de barras
ggplot(data = gapminder, mapping = aes(x = continente)) +
  geom_bar()

#Agregando capas

#Facetas
ggplot(data = gapminder, mapping = aes(x = esperanza_de_vida)) +
  geom_histogram(binwidth = 5, color = "white", fill = "steelblue") +
  facet_wrap(~ continente)

#Facetas con la cantidad de filas especificadas
ggplot(data = gapminder, mapping = aes(x = esperanza_de_vida)) +
  geom_histogram(binwidth = 5, color = "white", fill = "steelblue") +
  facet_wrap(~ continente, nrow=3)

#Grafico de puntos
ggplot(data = gapminder, 
       mapping = aes(x = pib_per_capita, y = esperanza_de_vida))+
  geom_point(alpha = 0.2)+
  labs(y="Esperanza de vida", x= "PBI per Capita")

#Con faceta
ggplot(data = gapminder, 
       mapping = aes(x = pib_per_capita, y = esperanza_de_vida))+
  geom_point(alpha = 0.2)+
  labs(y="Esperanza de vida", x= "PBI per Capita")+
  facet_wrap(~ continente, nrow=1)

#Agregamos la linea de tendencia
ggplot(data = gapminder, 
       mapping = aes(x = pib_per_capita, y = esperanza_de_vida))+
  geom_point(alpha = 0.2)+
  labs(y="Esperanza de vida", x= "PBI per Capita")+
    facet_wrap(~ continente, nrow=1)+
  stat_smooth(method = "lm", se = F, col = "red")

#Agregando opciones al tema
ggplot(data = gapminder, 
       mapping = aes(x = pib_per_capita, y = esperanza_de_vida))+
  geom_point(alpha = 0.2)+
  labs(y="Esperanza de vida", x= "PBI per Capita")+
  facet_wrap(~ continente, nrow=1)+
  stat_smooth(method = "lm", se = F, col = "red")+
theme( panel.background = element_rect(),
       plot.background = element_blank(),
       legend.background = element_blank(),
       legend.key = element_blank(),
       strip.background = element_blank(),
       axis.text = element_text(colour = "black"),
       axis.ticks = element_line(colour = "black"),
       panel.grid.major = element_blank(),
       panel.grid.minor = element_blank(),
       axis.line = element_line(colour = "black"),
       strip.text = element_blank()
)

#ggplot(data = gapminder, 
ggplot(data = gapminder, mapping = aes(x = pib_per_capita, y = esperanza_de_vida))+
  geom_point(alpha = 0.2)+
  labs(y="Esperanza de vida", x= "PBI per Capita")+
  facet_wrap(~ continente, nrow=1)+
  stat_smooth(method = "lm", se = F, col = "red")+
  theme( panel.background = element_blank(),
         plot.background = element_blank(),
         legend.background = element_blank(),
         legend.key = element_blank(),
         strip.background = element_blank(),
         axis.text = element_text(colour = "black"),
         axis.ticks = element_line(colour = "black"),
         panel.grid.major = element_blank(),
         panel.grid.minor = element_blank(),
         axis.line = element_line(colour = "black"),
         strip.text = element_blank()
  )
