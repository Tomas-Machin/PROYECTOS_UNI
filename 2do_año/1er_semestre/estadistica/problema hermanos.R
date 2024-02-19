#' Enunciado:
#' 10 parejas de hermanos se han apuntado a futbol. si se hace un equipo de 
#' 8 personas al azar, cual es la probabilidad de q no haya hermanos en el
#' equipo

#' Datos: 10 parejas = 20 personas 
#' equipos de 8

resultado = choose(10, 8) / choose(20, 8)
resultado

## casos totales:
sim_all_cases = function(){
  #paste(1:10, c("O", "A")) -> este esta incompleto pq solo te dan 10 personas
  alumno = paste(rep(1:10, each = 2), c("O", "A"))  # este te da 20 personas
  sets::as.set(sample(alumno, 8))     # -> choose(20, 8)
}
casos_totales = choose(20, 8)

# forzar a q no haya hermanos en el equipo
# elijo 8 parejas de hermanos distintas
# decidir seo para cada pareja

# 1- elijo 8 numeros distintos: --> sample(1:10, 8)
# 2- para cada n, me falta elegir el sexo: --> sample(c("O", "A"), 8, replace = TRUE) 

sim_fav_cases = function(){
  parejas_hermanos = sample(1:10, 8)                  # choose(10, 8)
  sexo_paloma = sample(c("O", "A"), 8, replace = TRUE) 
  paste(parejas_hermanos, sexo_paloma)                # 2 ^ 8
}
casos_favorables = 2 ^ 8 * choose(10, 8)

print(casos_favorables / casos_totales)  # RESULTADO
# RESULTADO = 0.09145
