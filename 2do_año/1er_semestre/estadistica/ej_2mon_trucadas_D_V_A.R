#' EJERCICIO 11/10/2022

#' se lanza una moneda n veces (p es la prob) considera VA X "nº de caras" e
#' Y "nº de caras iniciales" (antes de la primera cruz o del fin del experimento)
#' Halla la distribucion conjunta de cualquier n y p y luego particulariza para
#' n = 4 y p = .0.5

p_xy = function(x, y, n, p){
  ifelse(
    (y == n) & (x == n),
    p ^ n,
    choose(n - (y + 1), x - y) * p ^ x * (1 - p) ^ (n - x)
  )
  # if(y != n){
  #   choose(n - (y + 1), x - y) * p ^ x * (1 - p) ^ (n - x)
  # } else{
  #   p ^ n
  # }
}
p_xy(0:1, 0, 5, 0.5)

# n = 4, p = 0.5
x <- 0:4
y <- 0:4 # 0:x

pv <- outer(x, y, p_xy, n = 4, p = 0.5)
rownames(pv) <- paste("X =", x)
colnames(pv) <- paste("Y =", y)
pv
sum(pv)  # check recomendado

ifelse(c(TRUE, FALSE, TRUE), c(1, 2, 3), c(-1, -2, -3)) # condicion/condicion TRUE/condicion FALSE
# imprime ----->  1, -2, 3  

# la distribucion marginal para X P(X = 0), P(X = 1), etc.
pv_x <- rowSums(pv)   # distribucion marginal para X
pv_y <- colSums(pv)   # distribucion marginal para Y

# Esperanza de la variable X:
# E[X] = sum x * P(X = x)
sum(pv_x * x)
sum(pv_y * y)
