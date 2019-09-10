#### CAI 2019 - Introducción al lenguaje R ####

# Más información sobre el dataset Gapminder
# http://bit.ly/2N99ji0



# R, RStudio y proyectos -----------------------------------------------------

# 1- Explicar RStudio

# Tiene 4 paneles,
# a la izq abajo la consola de R (corro codigo con control + Enter)
# por ejemplo:

# suma
2+2

# a la izq arriba el editor (uso de # para silenciar una linea)
# a la derecha arriba, Environment (donde puedo ver lo que 
# guardo cuando asign? una variable)
# a la derecha abajo puedo ver los paquetes instalados ("Packages"),
# la ayuda ("Help"), la pesta?a para visualizar gr?ficos ("Plots"),
# visualizas los archivos que hay en la carpeta en ("Files")

# 2- Abrir un proyecto

# Ventajas: 1 - Pesta?a "files" me permite ver los archivos de la 
# carpeta desde RStudio
# 2 - Todo se guarda en la misma carpeta
# 3 - Uso ubicaciones relativas de los archivos. Me permite poder correr
# el c0digo cuando llevo la carpeta de un lugar a otro
# 4 - Parte derecha superior de RStudio tiene un menu desplegable que me 
# permite cambiar de proyecto o cerrarlo 


# 3- Abro un script y lo guardo

# FILE > NEW FILE > R SCRIPT
# Muestro que el codigo se puede guardar y que se ve en la pesta?a "File"
# Asigno una variable

suma <- 2+2

# 4- Instalar un paquete y cargar la library

install.packages("gapminder")
library(gapminder)

# Ver la ventana de paquetes
# citar un paquete
