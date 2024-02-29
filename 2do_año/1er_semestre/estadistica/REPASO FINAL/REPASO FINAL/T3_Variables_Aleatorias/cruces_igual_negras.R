
## Se tira una moneda hasta que salen 10 caras. A continuación, se meten 10 bolas
## blancas y tantas bolas negras como cruces hayan salido en una urna. Se extraen
## 5 bolas de la urna sin reemplazamiento. 

## ¿Cuál es el número más probable de bolas blancas y cuál es su probabilidad?

# X ~ nº de cruces hasta 10 caras  (por conveniencia y algo mas)
# binomial negativa
# Y ~ nº de bolas blancas entre 5 bolas extraidas
#  P(Y = y) 

# X ~ NegBin(10, 0.5)
# Y | X = x ~ HypGeom(10, x, 5)  -->  
# --> nº de bolas blancas, nº de bolas negras, cuantas bolas sacas

# P(Y = y's) --> moda
# --> P(Y | X) = P(Y, X) / P(X) --> P(Y, X) = P(Y | X) *  P(X)
# marginalizar para obtener lo q nos interesa: P(X, Y) -> P(Y)

# 1.- calcular la distr. conjunta P(X, Y)
# P(Y, X) = P(Y | X) *  P(X)
p_xy = function(x, y){
  dnbinom(x , 10, 0.5) * dhyper(y , 10, x, 5)
}

x_s = 0:100  # 0:Inf en un principio pero con Inf no se hace
y_s = 0:5 # pq solo puedes sacar hasta 5 bolas blancas
probs_xy = outer(x_s, y_s, p_xy)
colnames(probs_xy) = paste("P( Y =", y_s, ")")
rownames(probs_xy) = paste("X =", x_s)
# probs_xy
# dim(probs_xy)

# 2.- marginalizar X para hayar P(Y): P(Y = y) = P(X = x, Y = y)
pb_y = colSums(probs_xy) # --> 
# P( Y = 0 ) P( Y = 1 ) P( Y = 2 ) P( Y = 3 ) P( Y = 4 ) P( Y = 5 ) 
# 0.02480518 0.13462435 0.29436629 0.32458914 0.18081255 0.04080249 

sum(pb_y) # hacer uan comprobacion y si es = 1 esta bien sino no.

plot(y_s, pb_y, type = "h")  # --> moda: 3; P(Y = 3) --> 0.32458914
