
## EJERCICIO 2 DEL PDF
# Dos bolas se sacan al azar de una urna que contiene 6 bolas blancas y 5 negras. 

# ¿Cual es la probabilidad de que una de las bolas sea blanca y la otra negra?
  
  N = 5000
  sims = replicate(N, {
    urna = c(rep("B", 6), rep("N", 5))
    bolas = sample(urna, 2)
    bolas  
    
    length(table(bolas)) == 2
  })
  
  sum(sims) / N  # SOLUCION: 0.5446
  