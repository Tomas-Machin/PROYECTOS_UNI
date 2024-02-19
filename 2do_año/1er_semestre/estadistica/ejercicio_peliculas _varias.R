
#' ENUNCIADOS:
 
#' Trabajamos para una gran compañía de streaming que quiere hacer sugerencias 
#' de películas a sus usuarios. Para hacer esto, hay que intentar caracterizar 
#' los gustos de cada usuario. Asumimos que las películas que ve un usuario 
#' únicamente dependen de dos rasgos de su caracter: su ``aventurosidad (X)'' y su 
#' ``romanticismo (Y)''. Asumimos que ambos rasgos se pueden caracterizar con 
#' $X\sim \mathbb{U}[0, 1]$ y $Y~\sim\mathbb{U}[0, 1]$ (independientes). Si un 
#' usuario tiene  como rasgos $X=x$ e $Y=y$:
#'   
#'   
#'   * La probabilidad de ver una película de acción es $p_a = \frac{2 x - y + 1}{6}$. 
#' * La probabilidad de ver una película romántica es $p_r = \frac{3y - 2x + 2}{10}$
#'   * La probabilidad de ver una película de acción-amor es $p_{ar} = 1 - p_a - p_r$. 
#' 
#' De las últimas 20 películas que ha visto un usuario, 4 han sido de acción,
#' 4 románticas y 12 de acción-amor. ¿Cuáles son sus rasgos X e Y más probables?

  #' X - U(0, 1)
  #' Y - U(0, 1)
  #' (A, R, M) | X = x, Y = y ~ Multinom(20, p_a, p_r, p_m)
 
  #' PREGUNTA: moda de X e Y sabiendo: A = 4, R = 4, M = 12
  #' Grafica f(x, y | A = 4, R = 4, M = 12)
  #' RESOLUCION: 
  #' 1.- calcular f(x, y, a, r, m)  <----- distribucion conjunta
f = function(x, y, a, r, m){
  # f(a, r, m | x, y) ----> f(x, y, a, r, m)
  
  # f(a, r, m | x, y) = f(x, y, a, r, m) / f(x, y)
  # f(x, y, a, r, m) = f(a, r, m | x, y) * f(x, y)
  # f(x, y) = f(x) * f(y)
  
  p_a = (2 * x - y +1) / 6
  p_r = (3 * y - 2 * x + 2) / 10
  p_m = 1 - p_a - p_r
  prob = c(p_a, p_r, p_m)
  dmultinom(c(a, r, m), 20, prob) * dunif(x) * dunif(y)   # no hace falta especificar valores del dunif pq son los mismos q los predeterminados
                                                          # 20 de 20 peliculas
  
}
  #' 2.- marginalizar f(a, r, m)
  # integrar para todos los valores de las x
f_pelis = function(a, r, m){
  # integrate f en x
  # integrar f en y
  # o hacer integral doble
  
}
  #' 3.- f(x, y | a, r, m) = f(x, y, a, r, m) / f(a, r, m)
f_xy_given_pelis = function(x, y){
  # f(x, y | a, r, m) = f(x, y, a, r, m) / f(a, r, m)
  f(x, y, 4, 4, 12) / f_pelis(4, 4, 12)
}

  #' 4.- dibujar con contour



 