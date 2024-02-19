#' Enunciado
#' ¿cual es la probabilidad de obtener una mano  de 3 espadas y 2 copas de una
#' baraja española?

# total_cases
baraja = paste(....) # 40 elementos
sets::as.set(sample(baraja, 5))   # casos totales = choose(40, 5)

# fav_cases
# primero elijo dos copas -> elijo 2 numeros  
copas <- paste("C", sample(1:10, 2))     # -> choose(10, 2)
# luego elijo 3 espadas -> elijo 3 numeros
espadas <- paste("E", sample(1:10, 3))   # -> choose(10, 3)
mano = c(copas, espadas)
# fav_cases = choose(10, 2) * choose(10, 3) / choose(40, 5)