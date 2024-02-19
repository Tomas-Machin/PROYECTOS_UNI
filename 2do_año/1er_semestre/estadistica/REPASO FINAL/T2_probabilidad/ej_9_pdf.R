
## EJERCICIO 9 DEL PDF:
# Un grupo de 5 chicos y 10 chicas quieren sentarse en un banco.

  grupo = c(rep("O", 5), rep("A", 10))

# (a) ¿Cual es la probabilidad de que la cuarta persona sea un chico?

  N = 5000
  sims = replicate(N, {
    orden = sample(grupo, 15)
    orden[4] == "O"
  })
  
  sum(sims) / N   # 0.3286
    
# (b) ¿Cual es la probabilidad de que la decimo-segunda posicion este ocupada por un chico?

  N = 5000
  sims = replicate(N, {
    orden = sample(grupo, 15)
    orden[12] == "O"
  })
  
  sum(sims) / N   # 0.3286

# (c) ¿Cual es la probabilidad de que un chico en particular este en la tercera posicion?
  
  grupo = c(rep("A", 10), paste(1:5, rep("O")))
  # baraja = paste(1:10, rep(c("B", "C", "E", "O"), each = 10))
  
  N = 5000
  sims = replicate(N, {
    orden = sample(grupo, 15)
    orden[12] == "1 O"
  })
  
  sum(sims) / N   # 0.0626
  
  