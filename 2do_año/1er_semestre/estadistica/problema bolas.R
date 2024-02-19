#' enunciado
#' en una urna hay 3 bolas rojas numeradas de 1 al 3 y 3 bolas negras numeradas
#' igual. sacamos 2 bolas ¿prob de sacar dos 3?

N = 5000
simulation = replicate(N, {
  # bola = sample(c("R1", "N1", "R2", "N2", "R3", "N3"), 1)
  # bola == "R3"
  # bola == "N3"
  # (1 / 6) * (1 / 5) * 2
  urna = c(1:3, 1:3)
  bolas = sample(urna, 2)
  all(bolas == 3)
    # metodo any()
  # y eso mas la prob de una negra y una roja
  
})
  print(sum(simulation) / N)



