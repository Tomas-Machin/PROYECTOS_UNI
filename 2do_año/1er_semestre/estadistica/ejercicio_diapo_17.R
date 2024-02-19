# EJERCICIO DIAPO 17

# Supon que un ordenador depende de los componentes A y B, cuyas vidas
# respectivas X e Y se distribuyen conjuntamente con la funcion de densidad:
#   f (x, y) ={   e ^ −y     0 < x < y < ∞
#             {   0          otherwise

#   1. Calcula la probabilidad de que B dure al menos tres unidades de tiempo
#   mas que A.   

#   P(Y > 3 + X)

source("C:/Users/machi/Downloads/utils.R")

f = function(x, y){
  ifelse(
    (x > 0) & (y > x),
    exp(-y),
    0
  )
}
# ejemplos
f(-3, 4)
f(4, 5)
f(4, 3)

integrate2_dydx(
  f,
  from_x = 0, to_x = Inf,
  from_y = function(x) 3 + x, to_y = function(x) Inf
)

#   2. Calcula la probabilidad de A y B duren ambos mas de 2 unidades de
#   tiempo.

#   3. Calcula las funciones de densidad marginales.
  
f_x = function(xv){
  # f(x. y)
  integrate(f, xv, Inf, x = xv)$value
}
# otra forma: dentro de f_x ---> exp(-xv - 3) y comentar el Vectorize()
f_x(3)

f_x = Vectorize(f_x)
xs = seq(0, 10, by = 0.01)
plot(xs, f_x(xs), type = "l")

# f_y

#   4. Calcula la funcion de densidad condicional para X si sabemos que B ha
#   durado 5 unidades de tiempo.
  


#   5. Calcula la funcion de densidad condicional para Y si sabemos que A ha
#   durado 5 unidades de tiempo. ¿Cual es la probabilidad de que B dure entre
#   entre 4 y 7 unidades de tiempo si A ha durado 5 unidades de tiempo?
  
f_y_given_x5 = function(y){
  f(5, y) / f_x(5)
}  

ys = seq(0, 10, by = 0.1)
plot(ys, f_y_given_x5(ys), type = "l")

integrate(f_y_given_x5, 4, 7)

# En el ejercicio anterior (dos componentes A y B). ¿Cu´al es el valor esperado
# para Y si X=5?
  
integrate(
  function(y) y * f_y_given_x5(y),
  5,
  Inf
)

