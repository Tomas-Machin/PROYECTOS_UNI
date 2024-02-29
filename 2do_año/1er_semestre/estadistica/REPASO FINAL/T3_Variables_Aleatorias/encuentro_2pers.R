
### VIDEO 18 OCT.

# Dos personas acuerdan encontrarse entre las 12:00 y las 12:30 con la condición
# de que nadie esperará más de 5 minutos por el otro. La probabilidad de que llegada
# para cada persona es uniforme entre las 12:00 y las 12:30.

  # VA:  (en mins desde las 12)
  # X: hora de llegada de uno --> [0, 30]
  # Y: hora de llegada del otro --> [0, 30]

# ¿Probabilidad de que se encuentren?  ---> P(X - Y < 5, Y - X < 5) = P(|X - Y| < 5)

# f -> c, 0 < x < 30
#      0, e.o.c

# f = function(x){
#   1
# }
# integrate(f, 0, 30)
# c = 1 / 30  # --> 0.03333333

# en integrate2_dydx --> c = 1 / 900; 30 ^ 2, por ambas variables x e y

# f -> 1 / 900, 0 < x, y < 30
#      0, e.o.c

f = function(x, y){
  ifelse(
    (x > 0) & (x < 30) & (y > 0) & (y < 30),
    1 / 900,
    0
  )
}

# ejemplos:
f(-2, 10) # --> 0
f(10, 10) # --> 0.001111111

integrate2_dydx(
  f,
  from_x = 0, to_x = 30, 
  from_y = function(x) x - 5, to_y = function(x) x + 5
)

# ---> 0.3055625 with absolute error < 7.1e-05

