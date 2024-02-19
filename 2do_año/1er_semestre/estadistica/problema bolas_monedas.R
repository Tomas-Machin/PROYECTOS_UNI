#' enunciado

#' Existen dos urnas. La primera tiene dos bolas blancas y una negra; la segunda
# tiene una blanca y tres negras. Se lanza una moneda al aire. Si sale cara, se
# saca una bola de la primera urna; si sale cruz, se saca de la segunda. 
# A ¿Cual es la probabilidad de sacar una bola negra?
# B ¿cual es la probabilidad de que haya salido cara la moneda si la bola extraıda ha sido negra? 
# C ¿y si ha sido blanca?

# A
# 1- generar una funcion para cualquier caso
sim_game = function(){
  urna_c = c("B", "B", "N")
  urna_x = c("B", rep("N", 3))
  moneda = sample(c("C", "X"), 1)
  if(moneda == "C"){
    bola = sample(urna_c, 1)
  } else {
    bola = sample(urna_x, 1)
  }
  bola
}

# 2-
N = 5000
sims = replicate(N, {
  bola = sim_game()
  bola == "N"
})

# 3- aplicar Laplace
print(sum(sims) / N)

# B
# dos condiciones de exito: una asociada al numerador y otra al denominador
# 1- simular juegos
# 2- dos condiciones de exito

sim_game = function(){
  urna_c = c("B", "B", "N")
  urna_x = c("B", rep("N", 3))
  moneda = sample(c("C", "X"), 1)
  if(moneda == "C"){
    bola = sample(urna_c, 1)
  } else {
    bola = sample(urna_x, 1)
  }
  c(moneda, bola)
}
# 1.-
num = replicate (5000, {
  game = sim_game()
  # 2.-
  # cond1 = TRUE
  cond1 = (game[1] == "C") & (game[2] == "N")
  cond2 = game[2] == "N"
  c(cond1, cond2)
})
# num

numerador = sum(num[1, ])
denominador = sum(num[2, ])
resultado = numerador / denominador
resultado
# game == c("C", "N")
