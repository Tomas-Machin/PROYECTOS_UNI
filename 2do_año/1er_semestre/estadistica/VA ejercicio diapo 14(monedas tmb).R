#' ejercicio diapo 14


p_heads = function(x, n, p){
  choose(n, x) * p ^ x * (1 - p) ^ (n - x)
}

F_heads = function(x, n, p){
  # F(x) = P(X <= x) = sum(all p(X = x) X <= x)
  sum(p_heads(0:x, n, p))
}

resultado = Vectorize(F_heads)
# A
sol_1 = print(F_heads(60, 100, 0.5) - F_heads(39, 100, 0.5))

# B
sol_2 = print(F_heads(59, 100, 0.5) - F_heads(40, 100, 0.5))

# C
sol_3 = print(F_heads(59, 100, 0.5) - F_heads(39, 100, 0.5))

# suceso complementario --> P(X > 20) = 1 - P(X <= 20) = 1 - F(20)

F_values = resultado(0:100, 100, 0.5)
plot(0:100, F_values, type = "s", main = "Funcion de distribucion o de probabilidas acumuladax")  # tipo escalera
