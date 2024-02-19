
# Si se han obtenido X=48 caras, ¿cuál es la probabilidad de que la moneda usada
# sea la correspondiente a $p_0$?

# P(X = 48 | Y = 0) = P(X = 48, Y = 0) / P(X = 48)
  # funcion en mon_trucada.R
  p_xy(48, 0) # ---> 0.01074388
  pv_x[49] # ---> 
  #     X = 48 
  # 0.01286613
  
  p_xy(48, 0) / pv_x[49]
  #    X = 48 
  # 0.8350515 
