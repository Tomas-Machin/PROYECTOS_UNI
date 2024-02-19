
## VARIABLES ALEATORIAS:

# X: funcion q asocia un resultado de un experimento a un numero

# ------------------------------------------------------------------------------
# VA DISCRETAS:

# funcion de prob: P(X = x) = P(x) = f(x)

# F = Vectorize(F) ------> recive funciones y devuelve una nueva funcion vectorizada

# ------------------------------------------------------------------------------
# ESPERANZA, MODA Y OTROS ESTADISTICOS:

# media === punto medio de la funcion q la separa en 2 partes iguales
# moda ==== valor q se repite con mayor frecuecia en la grafica (puede haber mas de uno)
#           basta con q sea un maxico local (relativo)
# cuantil = el alpha-cuantil es el valorx mas pequeño que deja una prob alpha a si izq.

# ESPERANZA: valor que esperamos obtener en media si el experimento aleatorio se repitiese indefinidamente:
#            MEDIA POBLACIONAL ---> E[X] = mu_x = mu = sum( x_i * P(X = x_i) )
#                            
# LEY DE LOS GRANDES NUMEROS:  _
# MEDIA MUESTRAL --->          X = 1/n * sum(x_i)  de i = 1 hasta n

# PROPIEDADES DE LA ESPERANZA:

# E[cX] = c * E[X]
# E[X + Y] = E[X] + E[Y]
# si X e Y son independientes --> E[X * Y] = E[X] * E[Y]

# ------------------------------------------------------------------------------
# VARIANZA:  (sigma ^ 2)
# "medir la anchura de las distribuciones, la distancia de un punto al centro"
# sum( (x_i - mu) ^ 2 * P(X = x_i) )

# PROPIEDADES DE LA VARIANZA:

# Var[X] = E[X ^ 2] - mu ^ 2 ---> E[(X - mu) ^ 2] ---> E[X ^ 2] - E[X] ^ 2 
# Var[cX] = c ^ 2 * Var[X]
# si X e Y son independientes --> Var[X + Y] = Var[X] + Var[Y]
#                             --> Var[X * Y] = Var[X] * Var[Y]

# ------------------------------------------------------------------------------
# DISTRIBUCIONES CONJUNTAS DE VARIABLES DISCRETAS:
# P(X = x, Y = y) = p(x, y) = f(x, y)

# P(X = x, Y = y) = choose(n - (y + 1), x - y) * p ^ x * (1 - p) ^ (n - x)
# no funciona para y = n, en este caso seria: ---> p ^ n, por independencia

# ------------------------------------------------------------------------------
# COVARIANZA: 
# sigma_xy = Cov[X, Y] = E[(X - mu_x) * (Y - mu_y)] = E[XY] - mu_x * mu_y
# p (rho) = sigma_xy / sigma_x * sigma_y (-1 < p < 1)
# si p = 0; las variables estan incorreladas

# si x eY son independientes: p = 0 y sigma_xy = 0; pero p = 0 no significa q sean independientes
# Var[X +- Y] = sigma_x ^ 2 + sigma_y ^ 2 +- 2 * sigma_xy

# ------------------------------------------------------------------------------
# PARTE 2 DE VA
# ------------------------------------------------------------------------------

# VA CONTINUAS:

# funcion de densidad acumulada: F(x) = P(X <= x) = integral(f(u) du) -> (-inf, x)

# ------------------------------------------------------------------------------
# PARTE 3 DE VA
# ------------------------------------------------------------------------------

# DISTRIBUCIONES DISCRETAS:

# ENSAYOS DE BERNOUILLI:

  # DISTRIBUCION BINOMIAL: (DIAPO 4)
# en un experimento q repetimos varias veces, llamamos a cada repeticio ensayo.
# si estos son independientes entre si solo hay 2 casos posibles (exito y fracaso).

# 1.- 
# B(x | n, p) = ( choose(n x) * p ^ x * (1 - p) ^ (n - x) )
# tipo de problema: nº de exitos en n ensayos 
# solucion: distr. binomial.

  # TIPOS DE BINOMIAL: - dbinom(k, n, p) --> P(X = k)
  #                    - pbinom(k, n, p) --> P(X <= k)
  #                    - qbinom(probs, n, p) --> calcula los cuantiles de probs
  #                    - rbinom(k, n, p) --> simula k VAs

  # esperanza/mu: n * p  |  varianza/sigma^2: n * p * q  |  q = 1 - p

  # MODIFICACIONES:
  
  # tipo de problema: urna con n bolas B y m bolas N, cojo k, sin reemplazamiento
  #                   nº de bolas B extraidas
  # solucion: distr. hipergeometrica: formula/esperanza y varianza en chuletario
  
  # descripcion: ensayos independientes, con cada uno con multiples resultados.
  # tipo de problema: un vector cuenta exitos para k categorias en n ensayos
  #                   independientes. si cada elemento del vector tiene su propia
  #                   probabilidad.
  # ARGUMENTOS: VECTORES
  # solucion: distr. multinomial

# 2.- 
# Geom(x | p) = (1 - p) ^ x * p
# tipo de problema: cuenta el nº de fallos hasta el primer exito
# solucion: distr. geometrica.
# en caso de nº de intentos, solucion:  (1 - p) ^ (x - 1) * p

  # TIPOS DE GEOMETRICA: - dgeom() -> 
  #                      - pgeom() -> 
  #                      - qgeom() -> 
  #                      - rgeom() -> 

  # esperanza/mu: q / p  |  varianza/sigma ^ 2: q / p ^ 2  |  q = 1 - p

# 3.-
# NegBin(x | r, p) = choose(r + x - 1, r - 1) * p ^ r * q * x
# tipo de problema: cuenta nº de fallos hasta el r-esimo exito
# solucion: binomial negativa.

  # esperanza/mu = r * q / p   |   varianza/sigma ^ 2 = r * q / p ^ 2
 
# las binomiales tienen tope mientras q las otras no

# 4.- (DIAPO 16)
# cuando n no esta acotado
# si los eventos modelados ocurren de forma independiente y pueden considerarse 
# raros (dos eventos no pueden ocurrir a la vez) se usa la DISTR. DE POISSON.

# distr. de poisson: X ~ P(λ)
# P(X = x) = P(x | λ) = λ ^ x * e ^ (-λ) / x!, xE(0, Inf)
# esperanza/media = λ   |   varianza/sigma ^ 2 = λ

  # TIPOS DE POISSON: - dpois() -> 
  #                   - ppois() -> 
  #                   - qpois() -> 
  #                   - rpois() -> 

# ------------------------------------------------------------------------------
# DISTRIBUCIONES CONTINUAS:

# DISTRIBUCION UNIFORME:
# la probabilidad es la misma para todo x, todos los puntos son equiprobables.
# X ~ U(a, b) <--> f(x) = U(x | a, b) = --> 1 / (b - a), a <= x <= b
#                                       --> 0,           e.o.c
# esperanza/media = (1 / 2) * (a + b)   |   varianza = (1 / 12) * (b - a) ^ 2

  # TIPOS DE UNIFORME: - dunif() -> 
  #                    - punif() -> 
  #                    - qunif() -> 
  #                    - runif() ->

# DISTRIBUCION EXPONENCIAL:
# X ~ Expo(λ) <--> f(x) = Expo(x | λ) = --> λ * e ^ (-λ * x), x >= 0
#                                       --> 0,                x < 0

# esperanza/media = 1 / λ   |   varianza/sigma ^ 2 = 1 / λ ^ 2

# esta distr. no tiene memoria: P(X < t1 + t2 | X > t1) = P(X < t2)

  # TIPOS DE EXPONENCIAL: - dexp() -> 
  #                       - pexp() -> 
  #                       - qexp() -> 
  #                       - rexp() ->

# DISTRIBUCION NORMAL: MUY IMPORTANTEEE
# CAMPANA DE GAUSS. 

  # TIPOS DE NORMALES: - dnorm(x, mean, sd) -> 
  #                    - pnomr(x, mean, sd) -> 
  #                    - qnorm() -> 
  #                    - rnorm() ->

# media +- des_tipica = 68% poblacion
# media +- 2 * des_tipica = 95% poblacion 
# media +- 3 * des_tipica = 99% poblacion

# TEOREMA DEL LIMITE CENTRAL:
# afirma q la suma de muchas VAs independientes tiende a parecerse a una normal.
# no funciona si hay pocas VAs

# ------------------------------------------------------------------------------
# DISTRIBUCIONES MIXTAS: SOLO UN EJERCICIO







 
