#' Enunciado 
#' durante el mes de enero deseas viajar a las ciudades A B C D en este orden
#' ¿cuantas formas tienes de viajar distintas?

#' imaginemos:
#' 8, 1, 20, 31 --> A el 1, B el 8, C el 20 y D el 31
#' 1, 8, 20, 31 --> A el 1, B el 8, C el 20 y D el 31
# choose(31, 4)

sort(sample (1:31, 4))   # resutado (las fechas siempre son "ascedentes")
calendario <- rep("no viajo", 31)   # para que salhgan diferentes compilar primero las dos lineas
calendario[sample(31, 4)] <- "X"
calendario
choose(31, 4)

#' primero elijo un dia (A) -> 7
#' elijo entre 8:31 para B...

#' elijo un dia (A) -> 27
#' elijo un dia (B) -> 27:31