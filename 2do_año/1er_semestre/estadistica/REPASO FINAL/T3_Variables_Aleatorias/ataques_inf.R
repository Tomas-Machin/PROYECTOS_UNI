
## Un informático desea modelar el nº ataques informáticos que su página web
## sufre cada día. Recolecta datos durante 100 días, obteniendo la siguiente
## **tabla de frecuencias**:
  
##   |nº de ataques/día   | 0    | 1    | 2   | 3    |
##   |:------------------:|:----:|:----:|:---:|:----:|
##   |frecuencia          | 45   | 35   |15   | 5    |
   
## ¿Probabilidad de que, en un día cualquiera, haya al menos 1 ataque informático?

# P(X >= 1)
# no sabemos el tope de ataques por dias por lo q no puede ser binomial ni multi.
# entonces pueden ser: negbin, geom, poisson
# NO TE PUEDEN ATACAR DOS VECES SIMULTANEAMENTE ---> poisson
# tenemos λ, por lo q es mas facil trabajar con poisson ^

# X ~ nº de ataques en un dia
# X ~ P(λ)
# λ = nº de ataques sufridos / 100 dias =  (1 * 35 + 2 * 15 + 3 * 5) / 100
λ = (1 * 35 + 2 * 15 + 3 * 5) / 100  # --> 0.8

xs = 0:6 # por ejemplo
plot(xs, dpois(xs, λ))

# P(X >= 1) = 1 - P(X = 0) = 1 - dpois(0, 0.8)
1 - dpois(0, 0.8) # --> 0.550671


