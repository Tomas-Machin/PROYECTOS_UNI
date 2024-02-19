#' TEST 10/10/2022

## LISTADO DE RESPUESTAS:
#' 1.- 
#' 2.- 0.88
#' 3.- 14
#' 4.- 0.1209324
#' 5.-

#' ENUNCIADO 1:

# Tenemos dos urnas: la urna I y la urna II. La urna I contiene tres bolas blancas
# y cuatro negras mientras que la urna II está inicialmente vacía. Extraemos dos
# bolas al azar de la urna I y, sin mirar su color, las ponemos dentro de la urna II.
# A continuación cogemos al azar una bola de la urna I y otra bola al azar de la urna II. 
# ¿Cuál es la probabilidad de que ambas sean blancas?

sim_bola = function(){
  urna1 = c(rep("B", 3), rep("N", 4))
  urna2 = sample(urna1, 2)
  
  urna1 = setdiff(urna1, urna2)  # quito de la urna1 lo q hay en la urna2
  c(sample(urna1, 1), sample(urna2, 1))
}

N = 5000
sims = replicate(N, {
  urna1 = 1:7#c(rep("B", 3), rep("N", 4))
  urna2 = sample(urna1, 2)
  
  urna1 = setdiff(urna1, urna2)  # quito de la urna1 lo q hay en la urna2
  urna1
  urna2
  all(c(sample(urna1, 1), sample(urna2, 1)) <= 3)
  #urna_prueba = sim_bola()
  #all(urna_prueba == c("B", "B"))
})
#sims
print(sum(sims) / N)



#' ENUNCIADO 2:
 
variaciones <- function(n, m) exp(lgamma(n + 1L) - lgamma(n - m + 1L))

# Hay 39 ex-presidentes de EEUU que han fallecido. 
# ¿Cuál es la probabilidad de que al menos 2 de ellos hayan muerto el mismo dı́a?
# (Asume que un año tiene 365 dı́as).

sim_all_cases = function(){
  sample(1:365, replace = TRUE)
}
# Para n = 39
casos_totales = 365 ^ 39

sim_fav_cases = function(){
  sample(1:365, 45)
}

casos_favorables = variaciones(365, 39)
resultado = variaciones(365, 39) / 365 ^ 39
#resultado

resultado = 1 - variaciones(365, 39) / 365 ^ 39
resultado



#' ENUNCIADO 4:

# Lanzamos varias veces una moneda trucada (la probabilidad de cara es 0.4) 
# hasta que salen 2 caras. ¿Cuál es la probabilidad de que se necesiten exactamente 
# 10 lanzamientos para obtener las dos caras? En caso de que quieras resolver el 
# ejercicio por simulaciones, usa el argumento prob de sample().

# p_cara = 0.4
sim_all_cases = function(){
  bolsa = c(rep("C" , 4), rep("X", 6))
  sample(bolsa, 2, replace = TRUE)
  
  # p_cara = 0.5
  bolsa = c("C", "X")
  sample(bolsa, 8, replace = TRUE)
}

N = 5000
sims = replicate(N, {
  event = sim_all_cases()
  num_caras = sum(event == "C")
  num_caras == 2
})
sims
print(sum(sims) / N)



#' ENUNCIADO 5:

# Se sospecha que cierto sorteo de una prestigiosa competición de fútbol se ha 
# amañado. Se han emparejado 8 equipos de fútbol para las eliminatorias, pero mucha 
# gente cree que el sorteo no ha sido justo porque cada equipo fuerte ha sido 
# emparejado con un equipo débil (sospechosamente, para la UEFA esto es lo más 
# interesante desde un punto de vista económico). 
# ¿Cuál es la probabilidad de que los 4 mejores equipos queden emparejados con 
# los 4 peores equipos? Ten en cuenta que las eliminatorias son a ida y vuelta, 
# por lo que además de los emparejamientos ha de decidirse qué equipo comienza a 
# jugar como local.


# RESULTADO = 0.2285714


