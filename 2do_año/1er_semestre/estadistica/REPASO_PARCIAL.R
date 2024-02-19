#' REPASO PARA PARCIAL
#' dia: 14/9

#############' ejercicio de las parejas

# CASOS TOTALES:
  #' Baraja: 4 palos de 10 num cada uno
  #c("O", "B", "E", "C")

sim_cases = function(){
  baraja <- c(
    paste("O", 1:10),  
    paste("B", 1:10), 
    paste("E", 1:10), 
    paste("C", 1:10)  
  )
  sets::as.set(sample(baraja, 3))   # combinacion de 40 sobre 3 -> choose(40, 3)
}

baraja <- c(
  paste("O", 1:10),  
  paste("B", 1:10), 
  paste("E", 1:10), 
  paste("C", 1:10)  
)

#' elijo un numero: 3
numero = sample(1:10, 1)
numero
#' elijo 2 palos: B, O --> B 3, O 3
palos = sample(c("O", "B", "C", "E"), 2)
palos
primeras_dos = paste(palos, numero)
primeras_dos
#' elijo una carta q no tenga el 3  (setdiff)
resto = setdiff(baraja, primeras_dos)
resto
last_card = sample(resto, 1)
last_card
sets::as.set(c(primeras_dos, last_card))

######################## PROBABILIDAD ################################33

sim_cases = function(){
  cartas = paste(c("O", "B", "C", "E"), rep(1:10, each = 4))
  sets::as.set(sample(cartas, 3))
}

N = 5000
sims = replicate(N, {
  baraja = paste(1:10, rep(c("O", "B", "C", "E"), each = 10))
  baraja
  prueba = sample(baraja, 3)
  prueba
  
  strsplit(prueba, " ")
  numero = sapply(strsplit(prueba, " "), function(vector) vector[1])
  # palo = sapply(strsplit(prueba, " "), function(vector) vector[2])
  counts = table(numero)
  (length(counts) == 2) && (all(counts == c(1, 2)) || all(counts == c(2, 1)))
})
print(sum(sims)) / N

#############' ejercicio de hermanos en futbol
sim_all = function(){
  hermanos = paste(rep(1:10, each = 2), c("0", "A"))
  sets::as.set(sample(hermanos, 8))
}  # choose(20, 8)

sim_fav = function(){
  paste(sample(1:10, 8), sample(c("O", "A"))) #  -> choose(10, 8) * 2 ^ 8 
}


################################################
sim_all = function(){
  sample(c(rep("B", 10), rep("N" , 15))) # ---> factorial(25) / (factorial(15) * factorial(10))
}

totales = factorial(25) / (factorial(15) * factorial(10))
sim_fav = function(){
  comienzo = c("N", "N", "N", "N", "B")
  final = sample(c(rep("B", 9), rep("N" , 11)))
  c(comienzo, final)     # ---> factorial(20) / (factorial(9) * factorial(11))
}
favorables = factorial(20) / (factorial(9) * factorial(11))
print(favorables / totales)

#################################################

N = 5000
sims = replicate(N, {
urna = sample(c(1:3, 1:3), 2)
  resultado = all(urna == 3)
})
print(sum(sims)) / N

##################################################  MONEDAS Y BOLAS (CONDICIONAL)

N = 5000
sims = replicate(N, {
  urna1 = c("B", "B", "N")
  urna2 = c("B", "N", "N", "N")
  moneda = c("C", "X") # si sale cara se coge de la urna1 y sino de la urna2
  lanzamiento = sample(moneda, 1)
  if(lanzamiento == "C"){
    bola = sample(urna1, 1)
    bola == "N"
  } else {
    bola = sample(urna2, 1)
    # a.- prob de negra?
    bola == "N"
  }
  # b.- prob de negra despues de cara
  # c(lanzamiento, bola)
})
#a.-
print(sum(sims) / N)
# b.-     MAAAAAAALLLL
sims = replicate(5, {
  cond1 = (sims[1] == "C") & (sims[2] == "N")
  cond2 = sims[2] == "N"
  c(cond1, cond2)
})
print(sum(sims[1, ]) / sum(sims[2, ]))

