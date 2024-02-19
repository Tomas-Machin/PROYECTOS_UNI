#' Enunciado
#' ¿de cuantas formas distintas pueden sentarse en 6 butacas consecutivas
#' 3 chicas y 3 chicos, de forma que no haya 2 chicas ni 2 chicos seguidos?

# vector de 6 posiciones donde el orden es importante
# con todos distintos

# 1· elegir si es chico o chica (chico)                                 
# 2· elegir que chico esta en la primera posicion (gauss)
# 3· elegir que chica va la primera (ana)
# 4· repetir paso 2 y asi sucesivamente restando los chicos que quedan

resultado = 2 * 3 * 3 * 2 * 2 * 1 * 1
chicos <- c("1", "2", "3")
chicas <- c("A", "B", "C")

# 1- elijo sexo para primera posicion  -> "chica"     2
# 2- reordeno chicos al azar           -> 3, 2, 1     3!
sample(chicos, 3)
# 3- reordeno chicas al azar           -> B, C, A     3!
# resultado = B 3 C 2 A 1