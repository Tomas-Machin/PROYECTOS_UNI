
# En una urna hay 3 bolas rojas numeradas del 1 al 3 y 3 bolas negras numeradas
# del 1 al 3. Sacamos dos bolas, ¿Probabilidad de sacar dos treses o una bola
# negra y otra blanca?

  # prob de sacar dos treses:

## SOLUCION SIN LETRAS
  sim_all = function(){
    urna = c("1", "2", "3", "1", "2", "3")
    sample(urna, 2)
  }
  
  
  N = 5000
  exitos = replicate(N, {
    all(sample(urna, 2) == c("3", "3"))
  })
  
  sum(exitos) / N  # <--------- SOLUCION: 0.0636
  
## SOLUCION CON LETRAS
N = 5000
exitos = replicate(N, {
  urna = paste(1:3, rep(c("R", "N"), each = 3))
  intento = sample(urna, 2)
  numeros = sapply(strsplit(intento, " "), function(vec) vec[1])
  length(table(numeros)) == 1
})

sum(exitos) / N  # <----------- SOLUCION: 0.1952

  # ¿Probabilidad de sacar dos treses o una bola
  # negra y otra roja?
  
# prob de bola negra y una roja
N = 5000
exitos_2 = replicate(N, {
  urna = paste(1:3, rep(c("R", "N"), each = 3))
  intento = sample(urna, 2)
  numeros = sapply(strsplit(intento, " "), function(vec) vec[2])
  length(table(numeros)) == 2
})

sum(exitos_2) / N  # <----------- SOLUCION: 0.6108
  
# SOLUCION: sum(exitos_2) / N + sum(exitos) / N -----> 0.806
  
  
  # tmb esta la funcion any
  # all(c(FALSE, FALSE)) = FALSE
  # all(c(TRUE, FALSE)) = FALSE
  # all(c(FALSE, TRUE)) = FALSE
  # all(c(TRUE, TRUE)) = TRUE
  