## 10 parejas de hermanos se han apuntado a fútbol. Si se hace un equipo de 8 
## personas al azar, cuál es la probabilidad de que no haya hermanos en el equipo.

  # unos = paste(c(1:10), "a")
  # otros = paste(c(1:10), "o")
  # jugadores = c(unos, otros)
  
  jugadores = paste(rep(1:10, each = 2), c("O", "A"))

  # casos_totales:
  sim_all_cases = function(){
    sets::as.set(sample(jugadores, 8))
  }
  
  casos_totales = choose(20, 8)
  
  # casos_fav:
  sim_fav_cases = function(){
    # 1.- forzar a q no haya hermanos en el equipo
    equipo = sample(1:10, 8)                      # --> choose(10, 8)
    # 2.- elegir ocho parejas de hermanos distintas
    sexo = sample(c("A", "O"), 8, replace = TRUE) # --> 2 ^ 8 
    paste(equipo, sexo)
  }
  
  casos_fav = choose(10, 8) * 2 ^ 8
  
  solucion = casos_fav / casos_totales
  solucion   # ---> 0.09145035
  