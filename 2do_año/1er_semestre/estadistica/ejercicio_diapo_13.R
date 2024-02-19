#' DIAPO 13

# EJERCICIO 2

#'Calcula la funci´on de distribuci´on de la VA T y dib´ujala. Usa la funci´on de
#'distribuci´on para calcular la probabilidad de que el tiempo entre dos llamados
#'sea entre 2 y 3 minutos.

# F(t) = P(T <= t) = integrate from inf to t

# funcion de densidad
f <- function(t){
  exp(-t / 4.5) / 4.5
}

# funcion de distribucion/funcion de densidad acumulada
FF = function(t){
  integrate(f, 0, t)$value # q funcion y de donde a donde
}

valor = FF(10000)  # --(quitando el $value)-->  1 with absolute error < 8.6e-09
valor   # ----> 1

print(FF(3) - FF(2))

# dibujar la funcion de distribucion (vectotizar FF)

# EJERCICIO 3

# calcula la media, moda y varianza de T

#E[T] = sum t * p(t)  ---->  integral t * f(t)
mu = integrate(function(t) t * f(t), 0, Inf)  # meida??
print(mu)

# Var[T] = E[(T -mu) ^ 2] = E[T ^ 2] - mu ^ 2
# E[T ^ 2] = integrate t ^ 2 * f(t)
E_T2 = integrate(function(t) t ^ 2 * f(t), 0, Inf)
print(E_T2)

varianza = E_T2$value - mu$value ^ 2  # hay q acceder a los valores con: $value
print(varianza)  # --->  20.25

