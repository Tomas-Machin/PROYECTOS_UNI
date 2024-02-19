
library("tidyverse")
library("effectsize")
library(readr)
gbef_long <- read_table("data_3/gbef_long.csv")
# View(gbef_long)

## Unos científicos examinaron la función de la vesícula biliar antes y 
## después de una cirugía  para detener el reflujo. Los autores midieron 
## la funcionalidad de la vesícula biliar calculando la fracción de eyección de
## la vesícula biliar (GBEF) antes y después de la operación. El objetivo de la 
## operación es aumentar la GBEF. ¿Hay evidencia para concluir que la operación 
## aumenta el GBEF? Datos en "gbef\_long.txt" (o "gbef.txt", para un reto).

colnames(gbef_long) = c("ID", "class", "gbef") # quitar las "" de los nombres

# ASUNCIONES:
#  - INDEPENDENCIA ENTRE VARIABLES Y MUESTRAS
#  - M.A.S/POB. INF. -->
#  - NORMALIDAD DE LOS DATOS

# no se cumple la independencia entre variables, pq el resultado preop influye
# en el resultado postop. (suele suceder si repetimos medidas)
# LOS DATOS ESTAN APAREADOS CUANDO REALIZAMOS ESTO ^ 

gbef_Pre = gbef_long[gbef_long$class == "\"Preop\"", ]
gbef_Post = gbef_long[gbef_long$class == "\"Postop\"", ]

diferencia_pre_post = gbef_Post$gbef - gbef_Pre$gbef
hist(diferencia_pre_post)

# 1.- formular hipotesis:
# H0: mu_post < mu_pre
# Ha: mu_post > mu_pre  --> mu_post - mu_pre > 0 --> mu_diferencias > 0

# 2.- ASUNCIONES:
#  - INDEPENDENCIA -> si los datos son apareados no discutimos independencia 
#                     entre variables
#  - M.A.S/POB. INF. -> las muestra es pequeña comparada con los potenciales 
#                       pacientes por lo q podemos asumir independencia entre 
#                       muestras.
#  - NORMALIDAD -> aplicarlo sobre las diferencias

diferencia_pre_post = gbef_Post$gbef - gbef_Pre$gbef
hist(diferencia_pre_post)
# podemos asumir normalidad gracias al histograma

# 3.- aplico t.test
# Ha: mu_post > mu_pre  --> mu_post - mu_pre > 0 --> mu_diferencias > 0
t.test(diferencia_pre_post, alternative = "greater")
### RESULTADOS DEL T_TEST:
# One Sample t-test
# 
# data:  diferencia_pre_post
# t = 1.9159, df = 11, p-value = 0.04086
# alternative hypothesis: true mean is greater than 0
# 95 percent confidence interval:
#   1.131919      Inf
# sample estimates:
#   mean of x 
# 18.075 

# otra manera (con 2 poblaciones) + extra:
my_t = t.test(
  gbef_Post$gbef, gbef_Pre$gbef,
  alternative = "greater",
  paired = TRUE,
  conf.level = 0.99
  )
  
effectsize(my_t)

# CONCLUCION: los NO aportan suficiente evidencia de q la operacion aumenta 
# el GBEF (NV DE SIGNIFICACION = 0.01, P_VALOR = 0.04086). si bien el tamaño
# del efecto es medio (cohen's d = 0.55) (incremento medio de 18.075).

# NO PODEMOS DESCARTAR Q LA OPERACION NO AUMENTE EL TAMAÑO DEL GBEF, pero tmp 
# podemos decir q lo aumente.

# no lo apoya pq el p_valor > nv de significacion


# SUGERIR REPETIR PERO CON MAS MUESTRAS, pero cuantas?

power.t.test(
  delta = 18.075,
  sd = sd(diferencia_pre_post),
  sig.level = 0.01,
  power = 0.9,
  type = "one.sample",
  alternative = "one.sided"
)

# One-sample t test power calculation 
# 
# n = 45.31135           -----> REPETIR CON 45-46 PACIENTES
# delta = 18.075
# sd = 32.68169
# sig.level = 0.01
# power = 0.9
# alternative = one.sided