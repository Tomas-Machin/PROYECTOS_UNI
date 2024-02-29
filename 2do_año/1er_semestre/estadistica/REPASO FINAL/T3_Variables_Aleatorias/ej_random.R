
# EJ RANDOM (NS CUAL ES)

# f(x, y) -> c * e ^ (-2 * x) * e ^ (-3 * y),  x, y >= 0
#         -> 0,                                e.o.c

# A.- calcular c:
fc = function(x, y){
  exp(-2 * x) * exp(-3 * y)
}
# c = 1 / funcion fc

casi_cte = integrate2_dydx(   # funcion en utils.R
  fc,
  from_x = 0, to_x = Inf, 
  from_y = function(x) 0, to_y = function(x) Inf    # mejor escribirlo en funcion de una sola variable
)

c = 1 / casi_cte$value # --> 6

# B.- calcular la funcion de distr. de x: F(x)?

# 1.- marginalizar x -> f(x) por marginalizar f(x, y)
# 2.- F(x)
# f(x) = integrate(f(x, y) dy) (0, Inf) = c * integral(exp(-2 * x) * exp(-3 * y) dy) (0, Inf)
# --> c * exp(-2 * x) integral(exp(-3 * y) dy) (0, Inf) --> 
# --> (c * exp(-2 * x)) / 3

# C.- P(1 < X < 3) = integral(2 * exp(-2 * x) dx) (1, 3)

# D.- P(X > 3 + Y)
# x = 3 + y
# poniendo como ejemplo x, y = 0 -->
# P(X > 3 + Y) = integrate(integrate(6 * exp(-2 * x) * exp(-3 * y) dy) (0, x - 3) dx) (3, Inf)



