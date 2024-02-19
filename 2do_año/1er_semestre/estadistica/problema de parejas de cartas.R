
# 4 palos, 10 numeros

#c("0", "B", "C", "E") # PALOS
#paste("O" = 1:10)

sim_cases = function() {  # casos generales
  baraja = c(
    paste("O", 1:10),
    paste("B", 1:10),
    paste("C", 1:10),
    paste("E", 1:10)
  ) # BARAJA

  sets::as.set(sample(baraja, 3)) # combinaciones de 40 de 3 en 3 -> choose(40, 3)
  # de donde lo quiero sacar y cuanto
}

sim_fav_cases <- function(){
  baraja = c(
    paste("O", 1:10),
    paste("B", 1:10),
    paste("C", 1:10),
    paste("E", 1:10)
  )
  
  # sample(baraja, 1)
  # sample(baraja, 1)
  # setdiff(sample(baraja, 1), sample(baraja, 0))
  
  sample(baraja, 1)
  
  
}
## RESUELTO

# elijo un numero : 3
n = sample(1:10, 1)
# elijo dos palos : B, C -> B 3, C 3
palos = sample(c('E', 'C', 'B', 'O'), 2)
pareja = paste(palos, n)
# elijo una carta que no tenga el 3 -> setdiff() / elijo una carta entre las validas --> C 4
cartas_validas = setdiff(baraja, paste(c('E', 'C', 'B', 'O'), n))
ultima_carta = sample(cartas_validas, 1)
sets::as.set(c(pareja, ultima_carta))

#' Enunciado:
#' en una baraja española, cual es la probabilidad de sacar una pareja en
#' una mano de 3 cartas
#' Regla de Laplace: nº de casos fav / nº de casos totales (solo si es equiprobable)

# manera constantino

sim_case <- function(){
  cards <- paste(c('E', 'C', 'B', 'O'), rep(1:10, each = 4))
  sets::as.set(sample(cards, 3))    # choose(4, 3)
}







# resolucion por simulaciones
N = 5000
  simulation = replicate(N, {
  baraja = paste(1:10, rep(c("E", "B", "O", "C"), each = 10))
  trial = sample(baraja, 3)
  trial

  strsplit(trial, " ")   # imprime como una lista de vectores
  # para separar los numeros de las letras
  # PRIMERA MANERA
  sapply(strsplit(trial, " "), function(vec) vec[1])  # te da la primera parte de cada vector (numeros)
  # SEGUNDA MANERA
  ns = purrr::map_chr(strsplit(trial, " "), 1)  # el uno es para pillar el PRIMER elemento si es un 2 el SEGUNDO
  # puedo poner map o map_int
  length(table(ns)) == 2 # cuenta cuantas veces ocurre en el vector y te los ordena numerica o alfabeticamente
  counts = table(ns) # igual q la linea de arriba
  (length(counts) == 2) && (all(counts == c(1, 2)) || all(counts == (c(2, 1))))
})
print(sum(simulation) / N)

