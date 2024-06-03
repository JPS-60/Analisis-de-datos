#-------------------------------------------------------------------
#--------------------Lectura de la base de datos--------------------

# 1- Debemos subir nuestra base en la parte de Upload 
# 2- Le demos un nombre que en este caso sera covid 
# 3. Con el comando View ponemos ver nuestro archivo
file.choose()
covid <- read.csv("/cloud/project/Covid.csv")
View(covid)

#-------------------------------------------------------------------
#-----------------------Creación de gráficos------------------------

#---------------------Instalación de librería-----------------------
# Esta librería nos ayudara a graficar 
install.packages("ggplot2") 
library(ggplot2)
#-------------------------------------------------------------------
#---------------------Grafico de Barras-----------------------------
ggplot(covid, aes(x = sex, y = expected.mean)) +
  geom_bar(stat = "identity", fill = "blue") + 
  labs(title = "         Grafico de media de muertes esperadas por todas las causas",
       x = "Sexo",
       y = "Media de muertes esperadas") +
  #Para que  en los numero no se muestren en notación científica
  scale_y_continuous(labels = function(x) format(x, scientific = FALSE))
#-------------------------------------------------------------------
#---------------------Grafico de Dispersión-------------------------
ggplot(covid) + 
  geom_point(aes(x = acm.mean, y = excess.mean.)) +
  labs(title = "  Diagramas de dispersión entre muertes por todas las causas y covid",  
       x = "Media de muertes estimadas por todas las causas",  
       y = "Media de muertes por COVID-19") +
  scale_y_continuous(labels = function(x) format(x, scientific = FALSE))




