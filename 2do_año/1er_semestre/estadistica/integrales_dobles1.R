##

fu <- function(x, y){
  exp(-x ^ 2 - 2 * y ^ 2)  # * c
}

# integral c * fu = 1 ----> c = 1 / integral fu

almost_cte = integrate2_dydx(
  fu,
  from_x = -Inf, to_x = Inf,
  from_y = function(x) -Inf, to_y = function(x) Inf
)

cte = 1 / almost_cte$value

f <- function(x, y) cte * fu(x, y)

### A.-  P(X > 1, Y < 1)

integrate2_dydx(
  f,
  from_x = 1, to_x = Inf,
  from_y = function(x) -Inf, to_y = function(x) 1 
)

### B.- P(X < Y)

integrate2_dydx(
  f,
  from_x = -Inf, to_x = Inf,
  from_y = function(x) x, to_y = function(x) Inf 
)