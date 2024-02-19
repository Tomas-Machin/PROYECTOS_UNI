
library("tidyverse")
library("effectsize")
library(readr)
howell1 <- read_delim("data_3/howell1.csv", 
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)
# View(howell1)

## Los datos contenidos en "howell1.csv" son datos censales parciales del
## área !Kung San compilados a partir de entrevistas realizadas a finales de la
## década de 1960. ¿Depende la altura de los !Kung adultos del sexo del inviduo? 
## ($\alpha=0.01$). 
## Apoya tus resultados con un gráfico y calcula el tamaño del efecto. Emplea 
## los datos en "howell1.csv".

# X: altura de un hombre adulto
# Y: altura de una mujer adulta

# X ~ N(mu_x, sigma_x)
# Y ~ N(mu_y, sigma_y)

# ¿DEPENDE LA ALTURA DEL SEXO?
# H0: mu_x = mu_y  --> mu_x - mu_y = 0
# Ha: mu_x != mu_y  --> mu_x - mu_y != 0

# estadistico para la media si no conocemos varianzas poblaciones? -> t de student
# CONDICIONES:
#  - INDEPENDENCIA DE MUESTRAS entre poblaciones y entre muestras
#  - NORMALIDAD

howell_adultos = howell1[howell1$age >= 18, ]
# los datos categoricos deben codificarse como factores
howell_adultos$male = as.factor(howell_adultos$male)
bins = nclass.FD(howell_adultos$height)
ggplot(howell_adultos, aes(x = height, col = male)) + geom_density()
# los datos son normales

# DOS ASUNCIONES RESTANTES:
#  - PARA CADA POBLACION: M.A.S/POB INF. -> sobre 350 pers. muestra muy pequeña
#                                           podemos tmb asumir independencia
#  - ES RAZONABLE ASUMIR INDEPENDENCIA ENTRE POBLACIONES, ES RAZONABLE Q LA 
#    ALTURA DE LOS HOMBRES NO AFECTA AL DE LAS MUJERES NI VICEVERSA.

# Ha: mu_men != mu_women  --> mu_men - mu_women != 0
men = howell_adultos[howell_adultos$male == 1, ]
women = howell_adultos[howell_adultos$male == 0, ]
t_test = t.test(men$height, women$height, alternative = "two.sided", mu = 0) 
# con datos (2 primeros) de ambas poblaciones

### RESULATDOS DEL T_TEST:
# Welch Two Sample t-test
# 
# data:  men$height and women$height
# t = 18.148, df = 323, p-value < 2.2e-16
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   9.669319 12.020596
# sample estimates:
#   mean of x mean of y 
# 160.3585  149.5135 

# p_valor muy pequeño por lo q los datos apoyan la Ha -> mu_x - mu_y != 0, es
# decir q la altura depende del sexo y las alturas de ambos generos son diferentes.
# la altura de los hombres esta entre 9.5 y 12 cm mas alto q la de las mujeres.

# tamaño del efecto:
effectsize(t_test)
# Cohen's d |     95% CI
# ------------------------
# 1.95      | [1.69, 2.21]

# el tamaño del efecto es muy grande (cohen's d = 1.95)


# - Estimated using un-pooled SD --> ¿QUE SIGNIFICA? (des_tipica agrupada)
# desviacion tipica no agrupada: 
# coger los datos de X -> sd(X),uso n_x datos para la estimacion
# luego coge los datos de Y -> sd(Y), uso n_y datos para la estimacion

# si estoy seguro de q la des_tipica_x = des_tipica_y (poblacionales)
# pues combinamos los datos de X e Y para estimar des_tipica_x -> (n_x + n_y)
# (mejor estimacion)

## Repite el ejercicio relativo a los !Kung adultos si se puede asumir que 
## la desviación típica poblacional para hombres y mujeres es la misma 
## ($\sigma_h = \sigma_m$).

t_test2 = t.test(men$height, women$height, alternative = "two.sided", mu = 0,var.equal = TRUE)
### RESULTADOS DEL T_TEST:
# Two Sample t-test
# 
# data:  men$height and women$height
# t = 18.337, df = 350, p-value < 2.2e-16
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   9.681792 12.008123
# sample estimates:
#   mean of x mean of y 
# 160.3585  149.5135 

effectsize(t_test2)
# Cohen's d |       95% CI
# ------------------------
# 1.96      | [1.70, 2.21]


## EXTRAAA---
# hay evidencia de q los hombres miden al menos 10cm mas q las mujeres?



