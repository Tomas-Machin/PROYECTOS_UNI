## 10 tarjetas blancas y 15 tarjetas negras se barajan conjuntamente.
## Calcula la probabilidad de que la primera tarjeta blanca esté en la posición 5.
  
  # casos_totales:
  # orden importa: SI
  # elementos repetidos: SI
  sim_all_cases = function(){
    tarjetas = c(rep("B", 10), rep("N", 15))
    sample(tarjetas)   # -> factorial(25) / (factorial(10) * factorial(15))
  }
  
  casos_totales =  factorial(25) / (factorial(10) * factorial(15)) # -> 3268760
  
  sim_fav_cases = function(){
    # primeras 4 posiciones = N -> choose(15, 4)
    # la 5 = B -> choose(10, 1)
    comienzo = c(rep("N", 4), "B")
    # resto permutaciones de todas las bolas restantes --> factorial(20)
    final = sample(c(rep("B", 9), rep("N", 11)))  # -> MISSISSIPPI
    c(comienzo, final)
  }
  
  casos_fav = factorial(20) / (factorial(11) * factorial(9))
  
  solucion = casos_fav / casos_totales 
  solucion # ----> 0.0513834
  