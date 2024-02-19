#' enunciado
#' si hay n personas en una clase 
#' a.- ¿cual es la probabilidad de q ningun par de personas celebren el 
#' cumpleaños el mismo dia? 
#' b.- ¿y la de q haya al menos una coincidencia?
#' c.- ¿cuanto tiene q ser n para q la prob sea mayor a 1/2?

# A.-
# para n = 45;
# para generalizar reeplazar los 45 por n
sim_all_cases = function(){
  sample(1:365, 45, replace = TRUE)   # 365 ^ 45
}
casos_totales = 365 ^ 45

sim_fav_cases = function(){
  sample(1:365, 45)                   # (ejercicio podium) variaciones(365, 45)
}
casos_favorables = variaciones(365, 45)
resultado = variaciones(365, 45) / 365 ^ 45
resultado

prob_no_colision = function(n){
  variaciones(365, n) / 365 ^ n
}

# B.- haya al menos una coincidencia
# (a.- p(no haya coincidencias))

# 1 - P(A.-)
resultado = 1 - variaciones(365, 45) / 365 ^ 45 # prob de q haya coicidencias
# resultado_generalizado = variaciones(365, n) / 365 ^ n

prob_coicidencia = function(n){
  1 - variaciones(365, n) / 365 ^ n
}

# C.-
# 1.- pasarle todas las n -> ps = prob_coincidencias(ns)     <-- opcion buena (funciones vectorizadas)
# 2.- hacer un bucle -> for(...)
# 3.- sapply()

# ns = c(5, 10, 15) -/- ns = seq(5, 50, 1) = (5:50)
# plot(ns, ps)
# abline(h = 0.5, col = "red")
# min(ns[ps >= 0.5]) te da los numero mayores q 0.5 pero solo lo de dentro de los [] te dan trues y falses de todo
# as.integer(ps > 0.5) TRUES a 1 y FALSE a 0
# sum(ps > 0.5)  devuelte la cantidas de 1 q hay


