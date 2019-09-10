#### CAI 2019 - Introducción al lenguaje R ####

# Más información sobre el dataset Gapminder
# http://bit.ly/2N99ji0

# R, Tidyverse y pipes -------------------------------------------------------

# Podemos importar los paquetes del Tidyverse todos juntos

install.packages("tidyverse")
library(tidyverse)

# Podemos llamar funciones particulares comenzando a escribir
# el nombre del paquete

ggplot2::

# Importando datasets  
  
# - Importar archivos de Excel con RStudio ("Import Dataset")
  
# - importar archivos de Excel con R (como codigo). Ver panel
# code preview de la pesta?a que aparece cuando quiero importar
# desde RStudio
# ventaja de escribir el codigo: queda registrada la ubicacion 
# del archivo puedo subir muchos archivos
  
# - Generar una dataframe en R.

data.frame()

# Uso de View(). Asignación (<-)
# cuidado al elegir el nombre

# DPLYR y PIPES

# Para que sirven estas funciones?

filter(gapminder, pais == "Argentina", anio > 1979)

select(gapminder, pais, esperanza_de_vida)

# que hacen las pipes?
# que ventajas tienen?

gapminder %>%
  filter(pais == "Argentina", anio > 1979) %>%
  select(pais, esperanza_de_vida)
