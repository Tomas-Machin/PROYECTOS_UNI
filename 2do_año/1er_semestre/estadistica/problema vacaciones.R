#' Enunciado
#' el prox enero vas a visitar las ciudades A B C D. si cada visita requiere un 
#' dia ¿de cunatas formas puedes programar tus viajes?

# elijo que dia visito la ciudad: ecesito 4 nº
# importa el orden -> 7, 8, 10, 30  != 8, 7, 10, 30

# problema del podium (PARECIDO)
#' elijo un numero para la ciudad a -> 31
#' elijo un numero para la ciudad b -> 30
#' elijo un numero para la ciudad c -> 29
#' elijo un numero para la ciudad d -> 28
# 31 * 30 * 29 * 28 = variacion(31, 4)
resultado = 31 * 30 * 29 * 28