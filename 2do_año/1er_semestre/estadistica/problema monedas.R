#' Enunciado
#' ¿cual es la probabilidad de sacar 25 caras en 50 tiradas de una moneda?

# regla de laplace: si un evento cualquiera E consta de eventos sencillo (equiprobables) entonces:
#P(E) = Nº de casos favorables / Nº casos totales

# casos favorables:25
# caos totales: 50
# es quiprobable ya q para q salga cara es la misma probabilida q de q salga cruz (50%)
P_E = 25 / 50  # --> 0.5  # INCORRECTO

#' CORRECCION
#' 
#' Generar dos funciones una con los caso favorables y otra con los totales
#' 
#' Casos totales:
#' usaremos un vector (importa el oreden pq hay elementos repetidos) -> c("x","x",...)
#' 
##' sample(c("C", "X"), 1)  # puedes pedirle en vez de 1, 50 pero fallara pq no hay 50 posibilidades
#' (sample() por defecto hace muestreo sin reemplazamiento)
#' muestreo con reemplazamiento:
##' sample(c("C", "X"), 50, replace = TRUE)   --> replace = TRUE es una pista 
#' fuerte para el patron de bits
#' rep(sample(c("C", "X"), 1), 50)   <---- NO (solo repite C o X 50 veces)

###' sim_all_cases = function(){
###' sample(c("C", "X"), 50, replace = TRUE)
###' }
###' casos_totales = 2 ^ 50

#' casos favorables:
#' trial = rep("X", 50) ---> elegir 25 indices donde poner C
#' indices = sample(1:50, 25)   ---->  (variaciones o combinaciones), choose(50, 25)
#' trial[indices] = "C"
#' trial
###' sim_fav_cases = choose(50, 25)
###' laplace = sim_fav_cases / casos_totales <--- RESULTADO






# resolucion por simulaciones:
sim_all_cases = function(){
  sample(c("C", "X"), 50, replace = TRUE)
}

N = 5000
simulations = replicate(N, {
  # necesito comprobar si esto es un caso exitoso (25 caras)
  event = sim_all_cases()
  num_caras = sum(event == "C") # numero de caras q hay 
  num_caras == 25 # me dice si se cumple la condicion o no
})
simulations
print(sum(simualtions) / N)

