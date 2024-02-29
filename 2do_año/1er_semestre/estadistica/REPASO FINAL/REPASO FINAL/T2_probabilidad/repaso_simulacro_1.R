
# EJ 10 DEL PDF:

# a blancas y b negras
# P(X1 = j, X2 = k)
# P(xi = j)

# con numeritos para empezar entendiendo
# a = 4, b = 5
# P(X3 = 6) --> tercera blanca en la posicion 6
# REPRESENTACION?
# _ _ _ _ _ _ _ _ _   blancas = 1, negras = 0 --> importa el orden 
#                                             --> permitimos repeticion
# PROBLEMA DE MISSISSIPPI
casos_totales = factorial(9) / (factorial(4) * factorial(5))  # --> 126
# P(X3 = 6) --> tercera blanca en la posicion 6
# 1.- rellenar parte del vector con algunas restricciones
# _ _ _ _ _ B _ _ _
# (2a - 3b)  (1a - 2b)

# 2.- relleno la 1º parte con las restricciones 
# poner 5 bolas en fila con rep - MISSISSIPPI
parte_1 = factorial(5) / (factorial(3) * factorial(2)) # --> choose(5, 2)

# 3.- definir la parte final
# poner 3 volas en fila con rep - MISSISSIPPI
parte_2 = factorial(3) / (factorial(2) * factorial(1)) # --> choose(3, 2)

casos_favorables = parte_1 * parte_2 # --> 30
P_X = casos_favorables / casos_totales # --> 0.2380952

# AHORA SIN NUMEROS:
# la primera blanca esta en la posicion j
# k > j
# la segunda blanca esta en la posicion j
# n es el total de bolas: n = a + b
casos_totales = factorial(a + b) / (factorial(a) * factorial(b)) # choose(a+b,a)
# lo q hay antes de la parte 3 ya esta definido:
# j - 1 negras; blanca; k - j - 2 negras; blanca; parte_3
parte_3 = choose(n - k, a - 2)
casos_favorables = parte_1 * parte_2
# P(X1 = j, X2 = k) -> choose(a + b - k, a - 2) / choose(a + b, a), si k > j
#                   -> 0,                                           e.o.c        
P_todo = choose(a + b - k, a - 2) / choose(a + b, a)
