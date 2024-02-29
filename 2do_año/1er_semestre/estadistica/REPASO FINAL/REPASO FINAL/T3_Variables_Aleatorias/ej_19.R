
# EJ 19 DEL PDF:
# f(x, y) -> x * y / 96, 0 < x 4; 1 < y < 5
#         -> 0,          e.o.c
# P(X + Y < 3)?
# x + y = 3 --> y = 3 - x 
# por ejemplo: 1 = 3 - x --> x = 2 (punto de corte para limites de integracion)
# P(X + Y < 3) = integral([integral(f(x,y) dy)] (1, 3 - x) dx) (0, 2)

f = function(x, y){
  x * y / 96
}


sol = integrate2_dydx(
  f,
  from_x = 0, to_x = 2, 
  from_y = function(x) 1, to_y = function(x) x - 3
)
sol$value # --> 0.02083333