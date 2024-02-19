#' enunciado:
#' 10 tarjetas blancas y 15 negras. prob de q la primera blanca este en la
#' posicion 5

# casos favorables
sim_all_cases = function(){
  tarjetas = c(rep("B", 10), rep("N", 15))
  # el orden importa: == MISSISIPI (permutaciones con repeticion)
  sample(tarjetas)            # factorial(25) / (factorial(15) * factorial(10))
}
casos_totales = factorial(25) / (factorial(15) * factorial(10))

# casos favorables 
# primeras 4 negras y la siguiente si o si blanca

sim_fav_cases = function(){
  comienzo = c("N", "N", "N", "N", "B")
  final = sample(c(rep("B", 9), rep("N", 11)))   # -> MISSISIPI
  c(comienzo, final)
}

casos_favorables = factorial(20) / (factorial(11) * factorial(9))
resultado = casos_favorables / casos_totales
resultado
# RESULTADO = 0.05138