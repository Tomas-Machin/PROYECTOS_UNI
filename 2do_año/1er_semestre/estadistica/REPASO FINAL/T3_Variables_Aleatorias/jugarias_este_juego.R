
# Un jugador gana 1 euro si al tirar un dado obtiene un 1 o un 3; pierde 2 euros
# si sale un 2, 4, 6; y gana 4 euros si sale un 5. 

  dado = c(1:6)

# ¿Cuál es la ganancia esperada? 

  N = 5000
  cartera = replicate(N, {
    dinero = 0
    tirada = sample(dado, 1)
    if(tirada == 1){
      dinero = 1
    } else if(tirada == 3){
      dinero = 1
    } else if(tirada == 2){
      dinero = -2
    } else if(tirada == 4){
      dinero = -2
    } else if(tirada == 6){
      dinero = -2
    } else {
      dinero = 4
    }
  })  
  
  sum(cartera) / N
  # c(tirada, dinero)
# ¿Jugarías a este juego?