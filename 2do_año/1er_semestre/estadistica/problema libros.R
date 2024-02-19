#' enunciado
#' un alumno tiene 10 libros: 4 de mates, 3 de progra, 2 de historia y 1 de ingles
#' ¿de cuantas formas se pueden ordenar los libros si el alumno quiere mantener
#' los libros agrupados por tematica?

#' 1- elijo un orden para los grupos  -> parecido al de las butacas (4!)
#' 2- para cada grupo decido el orden de los libros (ej: mates -> 4!)

resultado = factorial(4) * factorial(4) * factorial(3) * factorial(2) * factorial(1)
resultado
