
## EJERCICIO 8 DEL PDF:
# ¿Cual es la probabilidad de obtener al menos un 3 en dos lanzamientos de un dado balanceado? 
# (nos referimos al n´umero de 3s sacados, no a la suma).


  N = 5000
  sims = replicate(N, {
    dado = c(1:6)
    tirada = sample(dado, 2, replace = TRUE)
    tirada  
    
    any(tirada == 3)
  })
  
  sum(sims) / N   # 0.3028