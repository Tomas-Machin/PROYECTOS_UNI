
## EJERCICIO 10 DEL PDF:
# Una caja A contiene cinco canicas rojas y tres azules, una caja B contiene dos rojas y tres azules. Se
# coje una canica al azar de cada caja:

  caja_A = c(rep("R", 5), rep("A", 3))
  caja_B = c(rep("R", 2), rep("A", 3))

# (a) Halla la probabilidad p de que ambas sean rojas.

  N = 5000
  sims = replicate(N, {
    mano = c(sample(caja_A, 1), sample(caja_B, 1))
    all(mano == c("R", "R"))
  })
  
  sum(sims) / N   # 0.247
  
# (b) Halla la probabilidad p de que una sea roja y otra azul.
  
  N = 5000
  sims = replicate(N, {
    mano = c(sample(caja_A, 1), sample(caja_B, 1))
    
    if(all(mano == c("R", "A"))){
      TRUE
    } else if(all(mano == c("A", "R"))){
      TRUE
    } else {
      FALSE
    }
  })
  
  sum(sims) / N   # 0.5232