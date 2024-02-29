
## Un enfermero necesita 10 radiografías de la pierna de un niño. Hay un 70\% de 
## probabilidad de que el niño esté quieto durante la prueba. 

# X ~ nº de pruebas jasta 10 radiografias feten.
# binomial negativa --> p,d,q,r + nbinom()
# Y ~ nº de pruebas hasta alcanzar las 10 radiografias

# asumimos independencia entre radiografias, todas son independientes entre si.
# X ~ NegBin(10, 0.7)

## ¿Cuál es la probabilidad de que se necesiten más de 15 pruebas?

# P(Y > 15)
# Y = X + 10 --> P(X + 10 > 15) --> P(X > 5) --> 1 - P(X <= 5) --->
# q es la funcion de distr. en 5. -->
# 1 - F(5) --> 1 - pnbinom(5, 10, 0.7) --> 0.2783786

1 - pnbinom(5, 10, 0.7) # --> 0.2783786






