
## Has programado un robot asesino para acabar con tu profesor de estadística.
## El robot dispara al centro de su frío corazón, pero comete un error 
## aproximadamente normal en cada una de las coordenadas x e y. La media de ambas
## normales es 0 y tiene desviación típica 5 cm. 

## ¿Cuál es la probabilidad de que el disparo acabe a menos de 1 cm del centro 
## del corazón? Resuelve por simulaciones.

# D: distancia al centro del corazon
# X: error en el eje x
# Y: error en el eje y

# P(D < 1)
# D = srqt(X ^ 2 + Y ^ 2)
# X ~ N(0, 5)
# Y ~ N(0, 5)
# no sabemos como se distribuye D por lo q hacemos simulaciones:

# asumimos q las variables son independientes entre si
N = 5000
x = rnorm(N, mean = 0, sd = 5)
y = rnorm(N, mean = 0, sd = 5)
d = sqrt(x ^ 2 + y ^ 2)
sum(d < 1) / N  # --> 0.0202




