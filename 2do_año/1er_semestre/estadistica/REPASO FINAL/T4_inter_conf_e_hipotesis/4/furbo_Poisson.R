
library("tidyverse")
library("effectsize")
library(readr)
spain_league <- read_csv("data_4/spain_league.csv")
# View(spain_league)

## Bajo ciertas condiciones, el número de goles marcados en un partido de fútbol 
## se puede aproximar por una distribución de Poisson. El fichero "spain_league.csv"
## contiene datos sobre la liga de fútbol española. Para hacer tus apuestas 
## deportivas, es importante saber el número de goles promedio por equipo en cada
## partido. Usando los resultados de la liga 21-22, construye un intervalo de 
## confianza del 98\% para el promedio de goles del equipo local en un partido.

# X ~ nº de goles en un partido
# X ~ P(lambda) --> donde lambda es nº medio de goles en un partido

# lambda = E[X]  --> mean()
# Teorema cecntral del limite: X1 ... Xn -> siendo independendientes entre ellos
# sum(Xi) es aproximadamente normal --> N(?, ?)
# E[X1 + ... + Xn] = E[X1] + ... + E[Xn] = n * lambda
# Var[X1 + ... + Xn] = (son independientes) = Var[X1] + ... + Var[Xn] = 
# = n * lambda

spain_2021 = spain_league[spain_league$Season == 2021, ]
lambda_est = mean(spain_2021$hgoal)  # --> 1.421053    (X)
n = nrow(spain_2021)  # --> 380

a = qnorm(0.01) # --> -2.326348
b = qnorm(0.99) # --> 2.326348
z = c(a, b)
lambda_est + z * sqrt(lambda_est / n) # --> para el intervalo de confianza

# sum(Xi) ~ N(n * lambda, n * lambda)
# sum(Xi) / n ~ N(lambda, lambda / n)

# X ~ P(lambda) --> lambda = E[X]
# X ~ N(lambda, lambda / n) --> asumimos independencia q los goles en un partido 
#                               no influyen en otro.
#                               n debe ser grande.(n >> 30)

# 3.- regla del 67-95-99:
# P(a < X < b) = 0.98
# Z = X - lambda / sqrt(lambda / n) --> tipificar la normal
# P(a < Z < b)
a = qnorm(0.01) # --> -2.326348
b = qnorm(0.99) # --> 2.326348

# 4.-
# -2.326348 < X - lambda / sqrt(lambda / n) --> 
# X - lambda / sqrt(lambda / n) < 2.326348  --> 

# ignoramos la del denominador pq sino seria muy complicado y la cambiamos por 
# la media muestral --> X

# -2.326348 < X - lambda / sqrt(X / n) --> X - 2.33 * sqrt(X / n) -> 
# X - lambda / sqrt(X / n) < 2.326348  --> X + 2.33 * sqrt(X / n) -> 

# lambda E (1.278568, 1.563538)