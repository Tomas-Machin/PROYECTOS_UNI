
library("tidyverse")
library("GGally")

## Para lidiar con situaciones como la ilustrada en el gráfico de 
## "correlation is not causation" (tiburones Vs helados)
## necesitamos emplear modelos de **regresión múltiple**, dado que estos permiten 
## "controlar" las variables de confusión. Crear un modelo de regresión múltiple
## es análogo al caso unidimensional...

# 1.- cargar datos
library(readr)
heights_earnings <- read_csv("data/heights_earnings.csv")

ggpairs(df[, c("earn", "height", "age")])

ha_model = lm(earn ~ height + age, heights_earnings)
summary(ha_model)




