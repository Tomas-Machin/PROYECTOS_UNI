
## Tres hermanos van a comer a casa de su abuelita. El 99.7% de las veces, cada 
## hermano come una cantidad de comida comprendida entre 1.2 y 1.8 Kg. 

## ¿Cuál es la probabilidad de que logren acabar los 5 Kg de carne que su abuela 
## ha preparado?

# X ~ kg de carne comidos (en total) ---> X = X1 + X2 + X3
# X1 ~ kg comidos por el hermano1
# X2 ~ kg comidos por el hermano2
# X3 ~ kg comidos por el hermano3

# P(X > 5) --> 1 - P(X <= 5) --> 1 - F(5)
# distr. normal/gaussiana
# Xi ~  N(1.5, )
# media + 3 * des_tipica = 1.8 --> 1.5 + 3 * des_tipica = 1.8 --> des_tipica = 0.1
# media - 3 * des_tipica = 1.2 --> 
# varianza = des_tipica ^ 2 --> 0.01
# Xi ~  N(1.5, 0.01)

# asumimos independencia, ademas es una distr. gaussiana ya q la suma de 3 de
# ellas es tmb una gaussiana
# media total de los 3 hermanos = 3 * 1.5 = 4.5
# X ~  N(4.5, 0.03)
# E[X] = E[X1] + E[X2] + E[X3] --> por independencia --> 4.5 ^
# Var[X] = Var[X1] + Var[X2] + Var[X3] = 0.01 * 3 --> 0.03 ^
# des_tipica = sqrt(3) * 0.1

# P(X > 5) --> 1 - P(X <= 5) --> 1 - F(5)
1 - pnorm(5, 4.5, sqrt(3) * 0.1)  # --> 0.001946209



