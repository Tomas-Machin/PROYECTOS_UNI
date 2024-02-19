
# En una urna hay dos monedas trucadas con probabilidad de cara $p_0=0.4$ y 
# $p_1=0.6$.Se elige una al azar y se tira 100 veces. Sea X:''nº de caras
# obtenidas'' e Y: ''moneda elegida''. Obtener la función de probabilidad de X.

  # P(X = x)  si se razonar por casos ( o si tengo info extra)
  #           entonces uso prob. condicional
  # si yo se q Y = 0 (se ha elegido la moneda 0)

  p_heads = function(x, n, p){
    choose(n, x) * p ^ x * (1 - p) ^ (n - x)
  }
  
  # P(X = x | Y = 0)
  p_heads_cond_y0 = function(x) p_heads(x, 100, 0.4)
  
  # P(X = x | Y = 1)
  p_heads_cond_y1 = function(x) p_heads(x, 100, 0.6)
  
  # P(X = x). calculamos P(X, Y) y luego marginalizamos
  # P(X = x | Y = y) = P(X = x, Y = y) / P(Y = y) --->
  # ---> P(X = x, Y = y) = P(X = x | Y = y) * P(Y = y)
  
  p_xy = function(x, y){
    # P(X = x, Y = 0) = P(X = x | Y = 0) * P(Y = 0)
    if(y == 0){
      p_heads_cond_y0(x) * 0.5  # 0.5 es la prob. de q salga una moneda de las 2
    } else{
      # P(X = x, Y = 1) = P(X = x | Y = 1) * P(Y = 1)
      p_heads_cond_y1(x) * 0.5
    }
  }
  
  # pasos restantes:
  
  # 1.- crear tabla (vectorizacion)
  
  p_xy = function(x, y){
    # P(X = x, Y = 0) = P(X = x | Y = 0) * P(Y = 0)
    ifelse(
      (y == 0),
      p_heads_cond_y0(x) * 0.5, # 0.5 es la prob. de q salga una moneda de las 2
      # P(X = x, Y = 1) = P(X = x | Y = 1) * P(Y = 1)
      p_heads_cond_y1(x) * 0.5
    )
  }
  x = 0:100
  y = 0:1
  pv = outer(x, y, p_xy)
  rownames(pv) = paste("X =", x)
  colnames(pv) = paste("Y =", y)
  pv  # mucho texto de 101 filas y 2 columnas
  
  # 2.- marginalizar para calcular P(X = x)
  
  pv_y = colSums(pv) # dist. marginal para X
  pv_x = rowSums(pv) # dist. marginal para Y
  
  # 3.- dibujar la distr. para x (obtener grafo diapo 26)
  
  plot(x, pv_x, type = "h")  # grafo de las probs. de x
  
  
  
  
  

