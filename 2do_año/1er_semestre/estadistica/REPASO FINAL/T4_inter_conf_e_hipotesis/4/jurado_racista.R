
library("tidyverse")
library("effectsize")
library(readr)
juries <- read_csv("data_4/juries.csv")
# View(juries)

## Durante los 60s-70s, se dieron casos de racismo en la elección de jurados
## populares. Supuestamente, la elección es al azar entre un listado de todos los
## ciudadanos. Sin embargo, se daban situaciones como que en una preselección de 80
## posibles jurados solo 4 fuesen afroamericanos (de una población con un 50\% de
## afroamericanos). Datos en "juries.csv". Las autoridades se defendían diciendo
## que era pura casualidad. ¿Es esto creíble? Apoya tus conclusiones con gráficos.

# X ~ nº de afroamericanos en la preseleccion del jurado
# X ~ B(80, p)

# H0: p = 0.5
# Ha: p < 0.5

prop.test(4, 80, 0.5, alternative = "less")  # --> solo para binomiales
### RESULTADOS DEL PROP_TEST:
# 1-sample proportions test with continuity correction
# 
# data:  4 out of 80, null probability 0.5
# X-squared = 63.013, df = 1, p-value = 1.027e-15
# alternative hypothesis: true p is less than 0.5
# 95 percent confidence interval:
#   0.0000000 0.1148949
# sample estimates:
#   p 
# 0.05 

# CONCLUSIONES: como el p_valor es bastante pequeño (1.027e-15), nos quiere decir
# q los datos apoyan abrumadoramente que la prob de seleccion de un afroamericano
# es menor a 0.5. (****racistas) Y q la prob de q sea seleccionado esta entre 
# 0.0000000 y 0.1148949 (menor al 11%) usando un intervalo de confianza del 95%.

















