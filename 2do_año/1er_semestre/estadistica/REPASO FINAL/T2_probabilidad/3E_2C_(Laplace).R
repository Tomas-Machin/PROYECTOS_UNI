## ¿Cuál es la probabilidad de obtener una mano de tres espadas y dos copas de una baraja
## española?
  
  # casos_totales: 
  baraja = c(
    paste("O", 1:10),
    paste("B", 1:10),
    paste("C", 1:10),
    paste("E", 1:10)
  )  # -----> 40 elementos
  
  sets::as.set(sample(baraja, 5))
  
  # casos_fav:
  
  # primero elijo 2 copas -> elijo 2 numeros
  copas = paste("C", sample(1:10, 2))    # ---> choose(10, 2)
  
  # luego eligo 3 espadas 
  espadas = paste("E", sample(1:10, 3))  # ---> choose(10, 3)
  
  c(espadas, copas)
  
  # casos_fav = choose(10, 2) * choose(10, 3)
  
  solucion = choose(10, 2) * choose(10, 3) / choose(40, 5)
  solucion # ---> 0.008206587
  
  
  
  