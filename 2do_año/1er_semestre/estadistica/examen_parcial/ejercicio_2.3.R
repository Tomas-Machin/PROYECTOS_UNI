### EJERCICIO 2.3

# SIMULACIONES
#sim_all = function(){                             # seria = choose(20, 10)
                                                  # maneras de combinar personas en grupos de 10
  torneo_ajedrez = c(1:20)                        
  mejores = sample(torneo_ajedrez, 8)             # elegir los 8 mejores
  mejores
  grupo_A = sample(torneo_ajedrez, 10)            # elegir el grupo A
  grupo_A
  grupo_B = setdiff(torneo_ajedrez, grupo_A)      # los restantes al grupo B
  grupo_B
#}

# APARTADO A.-
# prob de q haya x buenos: = 1 - prob de q haya n malos
#sim_fav = function(){
  malos_A = setdiff(grupo_A, mejores)      # saber cuantos malo hay para luego saber los buenos de ese grupo
  malos_A
  prob_B_A = 1 - (length(malos_A) / 10)    # PROB DE BUENOS EN EL GRUPO A
  prob_B_A
  malos_B = setdiff(grupo_B, mejores)
  malos_B
  prob_B_B = 1 - (length(malos_B) / 10)    # PROB DE BUENOS EN EL GRUPO B
  prob_B_B
  prob_B_A >= 0.3
  prob_B_B >= 0.3

  print(sum(prob_B_A) / N)
  print(sum(prob_B_B) / N)
#}
# print( / choose(20 / 10))

# APARTADO B.-
  
  if(prob_B_A >= 0.3){     # condicionar la prob de buenos del grupo A
    prob_B_A == 0.8        # comprobar q si tienen mas de 3 buenos, de q esten todos
  }
  
  sum(prob_B_A) / N        # sumar todos los trues q se cumplen y verla prob q hay de q ocurra
  prob_B_A




