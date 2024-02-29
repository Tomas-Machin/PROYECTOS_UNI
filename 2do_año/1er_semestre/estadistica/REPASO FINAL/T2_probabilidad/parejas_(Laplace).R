
## Se extraen tres cartas de una baraja española.
## ¿Cuál es la probabilidad de obtener una pareja (dos cartas del mismo valor)?
  
  # hay 4 palos
  # 10 nº por cada palo

  sim_cases = function(){  
    baraja = c(
      paste("O", 1:10),
      paste("B", 1:10),
      paste("C", 1:10),
      paste("E", 1:10)
    )
    
    sets::as.set(sample(baraja, 3))   # convertirlo en un conjunto
  }                                   # combinaciones 40 sobre 3 --> choose(40, 3)

  
  sim_fav_case = function(){
    # 1.- elegimos un numero  ------------------------> 10
    n = sample(1:10, 1)
    
    # 2.- elijo dos palos y les asigno el numero n  --> choose(4, 2)
    palos = sample(c("O", "B", "C", "E"), 2)
    pareja = paste(palos, n)
    
    # 3.- elegimos una tercera carta valida ----------> 36
    tercera_c = sample(setdiff(baraja, pareja), 1)
    mano = c(pareja, tercera_c)
    sets::as.set(mano)  
  }
 
  
  ## SOLCUCION:
  p_pareja = 10 * choose(4, 2) * 36 / choose(40, 3)
  p_pareja  # ---> 0.2186235

  
  
  
  
  
  
  
  
  
  
  