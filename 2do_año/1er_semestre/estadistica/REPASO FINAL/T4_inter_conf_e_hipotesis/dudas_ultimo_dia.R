# REPASO FINAL:

# 1.- diferencia entre unova y uncova: mayormente no hay diferencia.
# unova y ancova: comparar todas las poblaciones entre ellas +- (en 2 pasos)

# car::Anova()
# Post-hoc (haciendo previamente el metodo de arriba)

# y ~ x1 + x2
# ANOVA: x1 y x2 son los factores
# ANCOVA: una de las x es variable continua y la otra es un factor

# pairwise.t.test con ancova nunca

# ------------------------------------------------------------------------------
# Estadisticos:
# para hacer tests:
#                                     1 poblacion (x-mu)/sd(raiz(n))|   2 poblaciones
# media (mu): NORMALES,            |sabemos var                     |    normal
#                                  |no sabemos var (t de student)   |   t de student -> t.test
# varianza (sigma ^ 2): NORMALES,  |(n-1)S^2 / var^2   (chi^2)      |   F de scheider -> var.test
# 
# proporcion (p): BINOMIALES,      |  prop.test                     |   prop.test

# potecia del test:
#                 H0      |     Ha
# aceptar H0      SI      |     NO
# aceptar Ha      NO      |     SI ---> cuantas muestras necesitas? power.t.test()

#-------------------------------------------------------------------------------
# cis and tests EJ 8-9

# 8.-

# X ~ duracion de una lampara
# X ~ N(mu, sigma)
# mu = 1600?
# sigma = 120h
# sd(muestras)
# Ha: mu != 1600

# 9.- 
# cuantas muestras para variacion de 30h?
power.t.test(
  delta = 30,
  sd = sd(muestras_antes),
  sig.level = 0.01,
  power = 0.9,
  type = "one.sample",
  alternative = "two.sided"
)

# altura ~ sexo --> t.test --> solo compara 2 varaibles
#               --> regresion --> cuando hay 3 tipos de sexo por ejemplo o 
#                                 hay mas VA

# ------------------------------------------------------------------------------
# PROBLEMA COPAS:
# n copas
# se la pueden llevar con prob - p
# aparta copas
# P(comprobar mas de k copas)

# n = 5, p = 0.5
# P(comprobar mas de 2 copas) = 3 / 5
# arbolito:

#   p = 0.5          |       p= 0.5
#   1 - p                      p
#   k
#   3 / 5                     1

# 0.5 * 3 / 5 + 0.5 * 1 
# (1 - p) * (1 -  k / n) + p * 1





