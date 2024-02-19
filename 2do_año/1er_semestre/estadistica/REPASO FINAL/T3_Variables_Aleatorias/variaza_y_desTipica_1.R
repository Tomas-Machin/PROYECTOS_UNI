
# calcula a varianza y desviacion tipica de la VA X: nº de caras en 100 
# lanzamientos de una moneda sin trucar. usando:

#  1.- la definicion;

  # Var[X] = sum( (x_i - mu) ^ 2 * P(X = x_i) ) = E[(X - mu) ^ 2] 
  # Var[X] = (0 - mu) ^ 2 * p(0) + (1 - mu) ^ 2 * p(1) + ... 
  #  mu = 50 --> (0 - 50) ^ 2 * p(0) + (1 - 50) ^ 2 * p(1) + ...
  
  var_heads = sum((0:100 - 50) ^ 2 * p_heads(0:100, 100, 0.5))
  var_heads # ---> 25
  
  des_tipica = sqrt(var_heads)  
  des_tipica # ---> 5
  
# 2.- simulaciones:

  N = 5000
  xs = replicate(N, {
    sum(sample(0:1, 100, replace = TRUE))
  })
  
  media = mean(xs)
  # sum(pr) / N
  
  mean((xs - 50) ^ 2)  # estimacion varianza (cerca de 25)
  
  # E[X] = generar xs, mean(xs)
  # Var[X] = E[(X - mu) ^ 2] ---> generar xs, (xs - mu) ^ 2, mean((xs - mu) ^ 2)
  
  # E[X ^ 3] = mean(xs ^ 3)

#  visualiza la desviacion tipica sobre la funcion de probabilidad
  
  plot(0:100, p_heads(0:100, 100, 0.5), type = "h")
  
  # calcular la anchura:
  abline(v = 50, col = "red")   # añade una linea vertical de color rojo al plot
  # abline(v = 50 - des_tipica, col = "blue")   
  # abline(v = 50 + des_tipica, col = "blue")
  abline(v = 50 - 3 * des_tipica, col = "blue")   # ambos cubren +- un 99% de 
  abline(v = 50 + 3 * des_tipica, col = "blue")   # los datos totales
  
  