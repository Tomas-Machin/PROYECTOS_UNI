#' ESPERANZA MODA Y MEDIANA
#' 

# reslutado teorico
# E[X] = mu = 0 + 1 + 2 + 3 + ... + 100
# mu = p(1) * 1 + ... + p(100) * 100
#0 * p_heads(0, 100, 0.5) --> y asi hasta llegar al 100

sum(0:100 * p_heads(0:100, n = 100, p = 0.5))

# 2) simulaciones

#replicate(100, sample(1:2, 1))
table(sample(1:2, 100, replace = TRUE))  # dos maneras iguales de hacerlo
# 1 es cara y 2 es cruz
N = 5000
sims = replicate(N, {
  sum(sample(0:1, 100, replace = TRUE)) # igual q el table
})

# teorema de los numeros grandes
sum(sims) / N
mean(sims)   # implementa la media muestral como la division de antes