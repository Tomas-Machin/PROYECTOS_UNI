# ENUNCIADO DIAPO 41
# P(X = x)     si se razonar por casos ( o si tengo info extra)
# entonces uso prob condicional
# Si yo se que Y = 0 (se ha elegido al moneda p_0)

p_heads <- function(x, n, p){
  choose(n, x) * p ^ x * (1 - p) ^ (n - x)
}
# P(X = x | Y = 0)
p_heads_cond_y0 <- function(x) p_heads(x, 100, 0.4)
# P(X = x | Y = 1)
p_heads_cond_y1 <- function(x) p_heads(x, 100, 0.6)


# P(X = x), calculamos P(X, Y) y luego marginalizamos

# P(X = x, Y = y) = P(X = x | Y = y) * P(Y = y)
p_xy <- function(x, y){
  ifelse(y == 0,
    # P(X = x, Y = y) = P(X = x | Y = y) * P(Y = y)
    p_heads_cond_y0(x) * 0.5,
  #} else {
    # P(X = x, Y = y) = P(X = x | Y = y) * P(Y = y)
    p_heads_cond_y1(x) * 0.5
  #}
)}

# PASOS RESTANTES....

# 1.- crear tabla (vectorizacion?)

x <- 0:100
y <- 0:1 # una moneda u otra

pv <- outer(x, y, p_xy)
rownames(pv) <- paste("X =", x)
colnames(pv) <- paste("Y =", y)
pv

# 2.- marginalizar para calcular P(X = x)

pv_x <- rowSums(pv)

# 3.- dibujar la distribucion para x

plot(x, pv_x ,type = "h")


# Si se han obtenido 48 caras ¿cual es la prob de q la monead usada sea p_0?

# P(Y = 0 | X = 48) = P(X = 48 | Y = 0) / P(X = 48)

p_xy(48, 0) / pv_x[49]
