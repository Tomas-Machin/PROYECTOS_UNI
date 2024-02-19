
#' VARIABLES ALEATORIAS
#' ejercicio diapositiva 12

p_heads = function(x, n, p){
  choose(n, x) * p ^ x * (1 - p) ^ (n - x)
}

# p_heads(5, 110, 0.75)
p_heads(1, n = 100, p = 0.5)  # te puedes ahorrar los nombres y escribir directamente los valores

# calcular todas las probabilidades desde x = 0; x = 100
all_probs = p_heads(0:100, n = 100, p = 0.5)
plot(0:100, all_probs, type = 'h', xlab = "x: numero de caras", yNlab = "P(X = x)")
