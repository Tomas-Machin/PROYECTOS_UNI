# EJERCICIO DE POISSON DIAPO 18

# Un informatico desea modelar el nº ataques informaticos que su pagina web
# sufre cada dıa. Recolecta datos durante 100 d´ıas, obteniendo la siguiente tabla
# de frecuencias:

#         n de ataques/dia    0   1   2   3 
#         frecauncia         45  35  15   5

# ¿Probabilidad de que, en un dıa cualquiera, haya al menos 1 ataque
# informatico?  ---->  P(X >= 1)

  #' X = num de atques en un dia
  #' X ~ P(lambda)
  #' lambda = n de ataques sufrido / 100 dias de recolección de datos = 
  #'        = 1 * 35 + 15 * 2 + 5 * 3 / 100 dias de recolección = 80 / 100 = 0.8
  #' xs = 0.6
  #' plot(xs, dpois(xs, 0.8))
  #' P(X >= 1) = 1 - P(X = 0) = 1 - dpois(0, 0.8) = 0.550671

# Se tira una moneda hasta que salen 10 caras. A continuacion, se meten 10
# bolas blancas y tantas bolas negras como cruces hayan salido en una urna. Se
# extraen 5 bolas de la urna sin reemplazamiento. ¿Cual es el numero mas
# probable de bolas blancas y cual es su probabilidad?

  #' X = num de cruces hasta 10 caras      # binomial negativa
  #' Y = num de bolas blancas entre 5 sacadas
  
  #' calcular P(Y = y) para todo y  ----> moda
  
  #' X ~ NegBin(10, 0.5) 
  #' Y | X = x ~ (distribucion hipergeométrica) HypGeom(10, X, 5)   exitos, fracasos y q sacamos
  #' P(Y | X) = P(Y, X) / P(X)
  
  #' 1.- P(X, Y) = P(X) * P(Y | X). calcular P(X, Y)
     # x = 3
     # y = 2
  #' p(X = 3, Y = 2) = P(X = 3) * P(Y = 2 | X = 3)
  #' dnbinom(X = 3, size = 10 , prob = 0.5) * dhyper(2, 10, x, 5)
p_xy = function(x, y){dnbinom(x, 10, 0.5) * dhyper(y, 10, x, 5)} # ---> 0.0009390024

N = 100
xs = 0:N
ys = 0:5
probs_xy = outer(xs, ys, p_xy)
dim(probs_xy)
colnames(probs_xy) = paste("P( Y =", ys, ")")
rownames(probs_xy) = paste("P( X =", xs, ")")
  
  #' 2.- marginalizar X (P(X, Y)) -- para hayar --> P(Y)
  #' P(Y = y) = sum_x * P(X = x, Y = y)
probs_y = colSums(probs_xy)
  #' sum(probs_y) <----- comprobacion de si esta correcto (= 1)
plot(ys, probs_y, type = "h")  # ---->  3 es la moda el punto mas alto
  #' Moda: 3, P(Y = 3) = 0.32458914 
