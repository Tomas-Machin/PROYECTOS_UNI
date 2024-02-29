
# Calcula la esperanza de la variable aleatoria X:''nº de caras en 100 lanzamientos
# de una moneda sin trucar'' usando 1) la definición y 2) simulaciones. ¿Cuadra
# con tu intuición?

# X: 'nº de caras en 100 lanzamientos de una moneda sin trucar'

# resultado teorico:
# E[X] = mu = sum(0:100 + sus respectivas probs (una a una))

esperanza = sum(0:100 * p_heads(0:100, 100, 0.5)) # 50

# simulaciones:

N = 5000
s = replicate(N, {
  sample(0:1, 100, replace = TRUE)  # 0 = cruz; 1 = cara
})

sum(s) / N   # TEOREMA DE LOS NUMEROS GRANDES ---> 50.0234
mean(s) * 100
