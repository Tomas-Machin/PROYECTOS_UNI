
### DIBUJO DIAPO 15 SIMPLIFICADO

x <- seq(-3, 3, 0.2)
y <- seq(-3, 3, 0.1)
z <- outer(x, y, function(x, y) exp(-x ^ 2) * exp(-2 * y ^ 2))
contour(z, x = x, y = y)