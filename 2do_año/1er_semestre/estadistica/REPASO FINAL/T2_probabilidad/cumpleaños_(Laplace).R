variaciones <- function(n, m) exp(lgamma(n + 1L) - lgamma(n - m + 1L))

# Si hay $n$ personas en una clase, ¿Cuál es la probabilidad de que ningún par de
# personas celebren el cumpleaños el mismo día?

  # P.Ej: para n = 45 personas
  sim_all_cases = function(n){
    sample(1:365, n, replace = TRUE)  # ---> 365 ^ n
    casos_totales = 365 ^ n
  }
  
  # casos_totales = 365 ^ n
  
  # favorables:
  sim_fav_cases = function(n){
    sample(1:365, n)     # ---> (PODIUM) variaciones(365, n)
    casos_fav = variaciones(365, n)
  }
  
  # casos_fav = variaciones(365, n)
  
  prob_no_colision = function(n){
    variaciones(365, n) / 365 ^ n
    # solucion # --> 0.0590241  (para n = 45) 
  }
  
# ¿Y la de que haya al menos una coincidencia?
 
   prob_coincidencia = function(n){
    1 - variaciones(365, n) / 365 ^ n
    # solucion2 # ---> 0.9409759  (para n = 45)
   }
   
# Calcula una tabla de la probabilidad de coincidencia para varios valores de $n$ 
  
   prob_coincidencia(30)
    # 0.7063162
   prob_coincidencia(20)
    # 0.4114384
  
# ¿Cuánto tiene que valer $n$ para que la probabilidad sea mayor
# que $1/2$?
   
   prob_coincidencia(1:100) > 0.5
   prob_coincidencia(22)  # todavia por debajo de 0.5  -----> 0.4756953
   prob_coincidencia(23)  # por encima de 0.5 --------------> 0.5072972
   
   100 - sum(prob_coincidencia(1:100) > 0.5) # me da el ultimo numero q esta dentro del rango
   100 - sum(as.integer(prob_coincidencia(1:100) > 0.5)) # igual q el de arriba
   # n deberia valer 23 o más para que su valor sea mayor de 0.5
   