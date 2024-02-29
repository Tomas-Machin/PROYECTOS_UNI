
library("tidyverse")
library(readr)
new_york <- read_csv("data_1/new_york.csv")
# View(new_york)

## Nueva York es conocida como “la ciudad que nunca duerme”. En cierta
## encuesta se pregunto a una muestra aleatoria de 25 neoyorquinos c´anto
## tiempo dormıian por la noche. Los datos se encuentra en ”new york.csv”.

## ¿Apoyan los datos la afirmacion de que los neoyorquinos duermen menos de 8
## horas por noche en promedio? Usa un nivel de confianza del 96 %.

                    ## [1] 7.395582 8.064418

# 0.- Xi: tiempo q se duerme en NY
#     mu?
# ASUNCIONES:
#  - independecia de las diferentes Xi
#  - se asume poblacion infinita pq la muestra es muy pequeña comparada con la
#    cantidad total de neoyorquiinos
#  - asumimos q X es normal: N(mu, sigma ^ 2)

bins = nclass.FD(new_york$sleep_hours) # para q se vea normal
ggplot(new_york, aes(x = sleep_hours)) + geom_histogram(bins = bins)
# no tiene pinta de normal

# asumimos normalidad de momento para seguir:

# 1.- estimador puntual:
# X = mean(new_york$sleep_hours) --> 7.73
# S = sd(new_york$sleep_hours) --> 0.77

# 2.- 
# (X - mu) / S * srqt(n) ~ T_(n - 1) --> n = 25
# (X - mu) / S * srqt(25)  ~ T_(24)

# 3.- regla del  99%
# P(-t < (X - mu) / S * 5 < t) = 0.96
# se agrupa en 0.96 por lo q queda en cada lado un 0.02

# -t = qt(0.02, 24) ---> -2.171545
# P(-2.171545 < (X - mu) / (S / 5) < 2.171545) = 0.96
# P(-2.171545 < (7.73 - mu) / 0.77 * 5 < 2.171545) = 0.96

# 4.- 
# -2.171545 < (X - mu) / (S / 5) --> 
# (X - mu) / S * 5 < 2.171545  --> 

# mu E (resultado de arriba)

## Resuelve el mismo ejercicio empleando la función t.test.

# SIEMPRE HAY Q DISCUTIR LAS ASUNCIONES BAJO LAS Q t.test ES VALIDO:
#  - NORMALIDAD DE LOS DATOS (HIST)
#  - MUESTREO CON REEMPLAZAMIENTO/POB. INF.

# le indicamos los datos q nos interesan

my_t = t.test(new_york$sleep_hours, conf.level = 0.96)
# One Sample t-test
# 
# data:  new_york$sleep_hours
# t = 50.195, df = 24, p-value < 2.2e-16
# alternative hypothesis: true mean is not equal to 0
# 96 percent confidence interval:
#   7.395582 8.064418
# sample estimates:
#   mean of x 
# 7.73 

my_t$conf.int
# [1] 7.395582 8.064418
# attr(,"conf.level")
# [1] 0.96

