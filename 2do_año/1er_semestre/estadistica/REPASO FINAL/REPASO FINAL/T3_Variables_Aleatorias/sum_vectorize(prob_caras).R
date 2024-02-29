
# Escribe una función de R para la función de distribución de la VA aleatoria
# X: ''nº de caras en 100 lanzamientos de una moneda cuya probabilidad de cara es 0.5".
# Dibújala y úsala para responder a las siguientes preguntas:
# 
#   * $P(40 \leq X \leq 60)$
#   * $P(40 < X < 60)$
#   * $P(40 \leq X < 60)$


  F = function(x, n, p){
    # F(x) = P(X <= x) = sum(all p(X = x) X <= x) 
    # sum(choose(n, x) * p ^ x * (1 - p) ^ (n - x))    # mal vectorizado
    sum(p_heads(0:x, n, p))
  }
  
  F = Vectorize(F) # recive funciones y devuelve una nueva funcion vectorizada
  
  
  # A.-
  # F(0:60, 100, 0.5) - F(0:39, 100, 0.5)  #  0.9647998
  # B.-
  # F(0:59, 100, 0.5) - F(0:40, 100, 0.5)  #  0.9431121
  # C.-
  # F(0:59, 100, 0.5) - F(0:39, 100, 0.5)  #  0.9539559
  
  F_values = F(0:100, 100, 0.5)
  plot(0:100, F_values, type = "s",
       main = "Funcion de distribucion/probabilidad acumulada")  
  