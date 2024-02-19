
variaciones <- function(n, m) exp(lgamma(n + 1L) - lgamma(n - m + 1L))

# ¿Cuál es la probabilidad de sacar 25 caras en 50 tiradas de una moneda?

# regla de Laplace: 25 / 50

# casos totales: 
# usaremos un vector (orden) porque hay elementos repetidos

sim_all_cases = function(){
  sample(c("CARA", "CRUZ"), 50, replace = TRUE)
}

casos_totales = 2 ^ 50

# casos_fav:
trial = rep("CRUZ", 50)
trial
# elegir 25 posiciones donde poner CARA
indices = sample(1:50, 25)  # PODIUM --> choose(50, 25)
trial[indices] = "CARA"
trial

casos_fav = choose(50, 25)

  solucion = casos_fav / casos_totales
  solucion # ---> 0.1122752
  
  
        
  