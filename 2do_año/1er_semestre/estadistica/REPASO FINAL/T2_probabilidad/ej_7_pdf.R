
## EJERCICIO 7 DEL PDF:
# Se saca una bola al azar de una caja que contiene 6 bolas rojas, 4 blancas y 5 azules.
# Determina la probabilidad de que la bola sea (a) roja, (b) blanca, (c) azul (d) no sea roja (e) sea roja o
# blanca.

  caja = c(rep("R", 6), rep("B", 4), rep("A", 5))
  
  # A.- prob de q salga roja
 
  N = 5000
  sims = replicate(N, {
    sample(caja, 1) == "R"
  })  
  
  sum(sims) / N   # 0.3998
  
  # B.- prob de q salga blanca
  
  N = 5000
  sims = replicate(N, {
    sample(caja, 1) == "B"
  })  
  
  sum(sims) / N   # 0.2602
  
  # C.- prob de q salga azul
  
  N = 5000
  sims = replicate(N, {
    sample(caja, 1) == "A"
  })  
  
  sum(sims) / N   # 0.3266
  
  # D.- prob de q no salga roja
  
  N = 5000
  sims = replicate(N, {
    sample(caja, 1) == "R"
  })  
  
  1 - sum(sims) / N   # 0.5912
  
  # E.- prob de q salga blanca o roja
  
  N = 5000
  sims_1 = replicate(N, {
    sample(caja, 1) == "R"
  })  
  
  N = 5000
  sims_2 = replicate(N, {
    sample(caja, 1) == "B"
  })  
  
  sum(sims_1) / N + sum(sims_2) / N   # 0.6554
  
  
  # solucion = suma de prob de q salga blanca y roja ~~ 0.66
  
  