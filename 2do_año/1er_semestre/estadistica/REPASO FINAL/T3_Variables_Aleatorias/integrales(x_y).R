
## La distribución de $X$ e $Y$ viene dada por:

## f(t) = -> c * e ^ (-x ^ 2) * e ^ (-2 * y ^ 2), -Inf < x, y < Inf 
##        -> 0,                                   en otro caso (e.o.c)
## 

## Visualiza la función de densidad. 

x <- seq(-3, 3, 0.2)
y <- seq(-3, 3, 0.1)
z <- outer(x, y, function(x, y) exp(-x^2) * exp(-2*y^2))
contour(z, x = x, y = y)

source("utils.R") # cargar el fichero

fu = function(x, y){
  exp(-x ^ 2 - 2 * y ^ 2)  # falta la constante c q todavia no conocemos
}

# integral c * fu = 1 --> c = 1 / integral fu

casi_cte = integrate2_dydx(   # funcion en utils.R
  fu,
  from_x = -Inf, to_x = Inf, 
  from_y = function(x) -Inf, to_y = function(x) Inf    # mejor escribirlo en funcion de una sola variable
)

cte = 1 / casi_cte$value # ---> 0.4501582

f = function(x, y) cte * fu(x, y)

# A.- P(X > 1, Y < 1):
integrate2_dydx(
  f,
  from_x = 1, to_x = Inf, 
  from_y = function(x) -Inf, to_y = function(x) 1
)
# ---> 0.07686031 with absolute error < 4.6e-05

# B.- P(X < Y):
integrate2_dydx(
  f,
  from_x = -Inf, to_x = Inf, 
  from_y = function(x) x, to_y = function(x) Inf
)
# ---> 0.4999997 with absolute error < 4.1e-06



