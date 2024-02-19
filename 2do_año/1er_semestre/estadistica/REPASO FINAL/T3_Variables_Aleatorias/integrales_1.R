
## EJ 1 (DIAPO 13):
## Un call-center recibe llamadas durante todo el día. El tiempo T (en minutos)
## entre llamadas se modela la siguiente función de densidad.

## f(t) = -> c * e ^ (-t / 4.5), 0 <= t < inf
##        -> 0,                  en otro caso (e.o.c)
## 

## Dibuja la función de densidad.

# P(X = x) -> P(x) >= 0       |     f(t) -> f(t) >= 0
#             sum(P(x)) = 1   |             integral(f(u) du) -> (-inf, inf) = 1

# integral(f(u) du) -> (-inf, inf) = 1
# hay q hacerla con la funcion de f(t) por intervalos por lo q hay q sumar las 
# dos partes pr separado:

# integral(c * e ^ (-t / 4.5) dt) ->0, inf) + integral(0 du) -> (-inf, 0)
# ---> c * integral(e ^ (-t / 4.5) dt) ->0, inf) + 0 = 1
# ---> c = 1 / (integral(e ^ (-t / 4.5) dt) ->0, inf))

# PARA CALCULAR INTEGRALES USAR:
  # WOLFRAMALPHA: escribes la integral en el ordenador y te la calcula
  # c ~ 1 / 4.5


## Dibuja la función de densidad.   P(T >= 5) ~ 0.33

f = function(t){
  exp(-t / 4.5)
}

resultado = integrate(f, lower = 0, upper = Inf)  # para integrar
  # 4.5 with absolute error < 0.00055  (valor de c con margen de error)
resultado$value  # ---> 4.5; para obtener el valor de la integral

## Calcula la función de distribución de la VA T y dibújala. Usa la función de
## distribución paracalcular la probabilidad de que el tiempo entre dos llamados
## sea entre 2 y 3 minutos.

# funcion de densidad:
f = function(t){
  exp(-t / 4.5) / 4.5  # / 4.5 = c
}

# funcion de densidad acumulada:
FF = function(t){
  integrate(f, 0, t)$value  # se sabe q es de 0 a t por los limites de integracion
}
# valor = 
FF(10000)  # 1 with absolute error < 8.6e-09 (con integral de 0 a t)
# valor$value # ---> 1

# P(2 < T < 3)? 
FF = function(t){
  integrate(f, 0, t)$value  # se sabe q es de 0 a t por los limites de integracion
}

FF(3) - FF(2) #  0.1277633

## Calcula la media, moda y varianza de T.

# E[T] = sum(t * p(t)) --> integral t * p(t)
mu = integrate(function(t) t * f(t), 0, Inf)# 4.5 with absolute error < 1.2e-05
  
# Var[T] = E[T ^ 2] - mu ^ 2
# E[T ^ 2] = integrate(t ^ 2 * f(t))
E_t2 = integrate(function(t) t ^ 2 * f(t), 0, Inf) # 40.5 with absolute error < 0.00053
varianza = E_t2$value - mu$value ^ 2  # 20.25



