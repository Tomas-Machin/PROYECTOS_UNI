# EJERCICIO DIAPO 16

# Dos personas acuerdan encontrarse entre las 12:00 y las 12:30 con la condici´on
# de que nadie esperar´a m´as de 5 minutos por el otro. La probabilidad de que
# llegada para cada persona es uniforme entre las 12:00 y las 12:30.
# ¿Probabilidad de que se encuentren?

# VARIABLES ALEATORIAS:

# -X: hora de llegada de persona1
# -Y: hora de llegada de persona2

# PREGUNTA: ¿P(X - Y < 5, Y - X < 5)? (en valor absoluto la pregunta es lo mismo) 

f = function(x, y){
  ifelse(
    (x > 0) & (x < 30) & (y > 0) & (y < 30),
    1 / 900,
    0
  ) 
}

integrate2_dydx(
  f,
  from_x = 0, to_x = 30,
  from_y = function(x) x - 5, to_y = function(x) x + 5
)
# EJEMPLOS:
f(-2, 10)
f(10, 10)
