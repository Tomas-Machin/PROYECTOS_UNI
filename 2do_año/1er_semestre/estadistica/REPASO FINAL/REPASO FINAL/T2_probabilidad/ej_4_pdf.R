
## EJERCICIO 4 DEL PDF
# Un comite de tamaño 5 se selecciona al azar entre un grupo de 6 hombres y 9 mujeres. 

# ¿Cual es la probabilidad de que el comite consista en 3 hombres y 2 mujeres?
  
  
  N = 5000
  sims = replicate(N, {
    personas = c(rep("H", 6), rep("M", 9))
    comite = sample(personas, 5)
    comite
    if(length(table(comite)) == 1){
      i = 0
    } else{
    all(table(comite) == c(3, 2))
    }
  })
  
  sum(sims) / N   # 0.239