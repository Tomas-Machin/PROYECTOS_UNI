#' ejercicio 
#' 
#' calcula la varianza y desviacion tipica de la variable aleatoria X: 
#' "nº de caras en 100 lanzamientos de una moneda sin trucar" usando 
#' 1) la definicion y 2) simulaciones
#' visualiza la desviacion tipica sobre la funcion de probabilidad

## 1) TEORIA

# Var[X] = sum(X_i - \mu) ^ 2 * P(X = xi) = E[(- mu) ^ 2]
# Var[X] = (0 - mu) ^ 2 + p(0) + ... + y asi con todos lo numeros (con mu = 50 (anterior ej))

var_heads = sum((0:100 - 50) ^ 2 * p_heads(0:100, n = 100, p = 0.5))
var_heads

# desviacion tipica:
sd_heads = sqrt(var_heads)
sd_heads

# pintar la funcion de probabilidad:
plot(0:100, p_heads(0:100, n = 100, p = 0.5), type = "h")
# pintar la desviacion tipica:
abline(v = 50, col = 2, lwd = 3)

abline(v = 50 - sd_heads, col = 3, lwd = 3)   # lineas verdes
abline(v = 50 + sd_heads, col = 3, lwd = 3)

abline(v = 50 - 3 * sd_heads, col = 4, lwd = 3)   # lineas azules
abline(v = 50 + 3 * sd_heads, col = 4, lwd = 3)

## 2) SIMULACIONES

N = 5000
sims = replicate(N, sum(sample(0:1, replace = TRUE, 100)))
# sum(sims) / N
# mean(sims)
# interesa calcular:
mean((sims - 50) ^ 2)  # varianza cerca de 25

# E[X] =====> generar sims, mean(sims)
# Var[X] = E[(X - mu) ^ 2] ====> generar sims, (sims - mu) ^ 2, mean((sims - mu) ^ 2)

# E[ X ^ 3] = mean(sims ^ 3)


