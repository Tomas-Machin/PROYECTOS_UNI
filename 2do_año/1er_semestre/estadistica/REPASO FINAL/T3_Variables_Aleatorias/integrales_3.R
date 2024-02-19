
## Supón que un ordenador depende de los componentes A y B, cuyas vidas respectivas
## X e Y se distribuyen conjuntamente con la función de densidad:

## f(x, y) -> e ^ (-y), 0 < x < y Inf
##         -> 0,        e.o.c

## Calcula la probabilidad de que B dure al menos tres unidades de tiempo más que A.

# P(Y > 3 + X)
f = function(x, y){
  ifelse(
    (x > 0) & (y > x),
    exp(-y),
    0
  )
}

res = integrate2_dydx(   # funcion en utils.R
  f,
  from_x = 0, to_x = Inf, 
  from_y = function(x) x + 3, to_y = function(x) Inf    # mejor escribirlo en funcion de una sola variable
)

# 0.04978705 with absolute error < 2.9e-06
res$value  # 0.04978705

## Calcula la probabilidad de A y B duren ambos más de 2 unidades de tiempo.

res_1 = integrate2_dydx(   # funcion en utils.R
  f,
  from_x = 2, to_x = Inf, 
  from_y = function(x) 2, to_y = function(x) Inf    # mejor escribirlo en funcion de una sola variable
)

res_1$value  # 0.1352635

## Calcula las funciones de densidad marginales.

f_x = function(xv){
  # f(x, y)
  integrate(f, xv + 3, Inf, x = xv)$value
  # exp(-xv - 3)  --->  como un paso mas corto: wolframalpha del (A.-) y sale eso
}

# f_x(3)  # 0.002478752 

f_x = Vectorize(f_x)   # vectorizar al funcion
eje_x = seq(0, 10, by = 0.01)
plot(eje_x, f_x(eje_x), type = "l")

## Calcula la función de densidad condicional para X si sabemos que B ha durado
## 5 unidades de tiempo.



## Calcula la función de densidad condicional para Y si sabemos que A ha durado
## 5 unidades de tiempo. ¿Cuál es la probabilidad de que B dure entre entre 4
## y 7 unidades de tiempo si A ha durado 5 unidades de tiempo?

# f(y | x = 5) = f(5, y) / f(5)

f_y_given_5 = function(y){
  f(5, y) / f_x(5)
}

f_y_given_5 = Vectorize(f_y_given_5)
eje_y = seq(0, 10, by = 0.1)
plot(eje_y,(f_y_given_5(eje_y)), type = "l")  # y > 5 para q la prob no sea nula


# P(4 < Y < 7 | X = 5)
f_x = function(xv){
  # f(x, y)
  integrate(f, xv, Inf, x = xv)$value
  # exp(-xv - 3)  --->  como un paso mas corto: wolframalpha del (A.-) y sale eso
}
f_x = Vectorize(f_x)
integrate(f_y_given_5, 4, 7)  # 0.8646649 with absolute error < 4.3e-05

## ¿Cuál es el valor esperado para Y si X=5?

# E[Y | X = 5]
integrate(
  function(y) y * f_y_given_5(y),
  5,
  Inf
)
# ---> 6.000001 with absolute error < 6.8e-06






