
# Partiendo de la función de probabilidad conjunta del ejemplo anterior,
# ($n=4$ $p=0.5$), calcula las funciones de probabilidad marginales para
# X (nº de caras) e Y (nº de caras iniciales).

# la distribucion margial para X: P(X = 0), P(X = 1), P(X = 2), ... 
  
  pv
  pv_y = colSums(pv) # dist. marginal para Y
  
  # Y = 0  Y = 1  Y = 2  Y = 3  Y = 4 
  # 0.5000 0.2500 0.1250 0.0625 0.0625 
  
  # la distribucion margial para Y: P(Y = 0), P(Y = 1), P(Y = 2), ... 
  
  pv_x = rowSums(pv) # dist. marginal para X
  
  # X = 0  X = 1  X = 2  X = 3  X = 4 
  # 0.0625 0.2500 0.3750 0.2500 0.0625 
  
  # Esperanza de la variable x
  # E[X] = sum X * P(X = x)
  esperanza = sum(0:4 * pv_y)
  esperanza # ---> 2 <---- nº de caras esperadas de 4 lanzamientos de una moneda
  