
# Sea X:''Cantidad mensual de lotes comprados por una empresa a su proveedor'' e 
# Y: ''Precio por lote ofertado por el proveedor (en miles de euros)''. 
# La distribución conjunta de ambas variables se recoge en la siguiente tabla:
  
  probs = matrix(
    c(0.00, 0.00, 0.03, 0.18,
      0.00, 0.04, 0.24, 0.02,
      0.02, 0.23, 0.04, 0.00,
      0.16, 0.04, 0.00, 0.00),
    byrow = TRUE,
    ncol = 4
  )
  rownames(probs) <- paste0("y=", seq(1, 2.5, by=0.5))
  colnames(probs) <- paste0("x=", 1:4)
  #        x=1  x=2  x=3  x=4
  # y=1   0.00 0.00 0.03 0.18
  # y=1.5 0.00 0.04 0.24 0.02
  # y=2   0.02 0.23 0.04 0.00
  # y=2.5 0.16 0.04 0.00 0.00
  
  # E[XY]
  # 1.- listar todos los posibles resultado de x * y
  
  x = 1:4
  y = c(1, 1.5, 2, 2.5)
  outer(y, x)  # ---> outer(y, x, function(x, y) x * y)
  # es diferente a --> outer(y, x); salen diferentes valores

  #      [,1] [,2] [,3] [,4]
  # [1,]  1.0    2  3.0    4
  # [2,]  1.5    3  4.5    6
  # [3,]  2.0    4  6.0    8
  # [4,]  2.5    5  7.5   10

  esperanza = sum(outer(y, x) * probs)   # ---> 3.93
  
  lattice::levelplot(probs)  # genera el cubo rosa ese
  
# Calcula la correlación entre X e Y en el problema de la empresa y el proveedor.
  
  # queremos calcular la correlacion:
  # sigma_xy = Cov[X, Y] = E[(X - mu_x) * (Y - mu_y)] = E[XY] - mu_x * mu_y
  # E[X] = sum( x_i * P(X = x_i) )
  # Var[X] = E[X ^ 2] - mu ^ 2
  # E[X ^ 2] = sum( x_i ^ 2 * P(X = x_i) )
  
  E_xy = esperanza # 3.93
  
  # marginalizar:
  p_x = colSums(probs) # dist. marginal para Y
  p_y = rowSums(probs) # dist. marginal para X
  
  # estadisticos de x:
  mu_x = sum(p_x * x)  # 2.53
  E_x2 = sum(x ^ 2 * p_x)  # 7.41  (T. del estadistico inconsciente)
  var_x = E_x2 - mu_x ^ 2  # 1.0091
  sigma_x = sqrt(var_x)  # 1.00454
  
  # estadisticos de y:
  mu_y = sum(p_y * y)  # 1.74
  E_y2 = sum(y ^ 2 * p_y)  # 3.295
  var_y = E_y2 - mu_y ^ 2  # 0.2674
  sigma_y = sqrt(var_y)  # 0.5171073
  
  # covarianza:
  sigma_xy = E_xy - mu_x * mu_y  # -0.4722
  rho = sigma_xy / (sigma_x * sigma_y)  # -0.9090299
  
  
  
  
  