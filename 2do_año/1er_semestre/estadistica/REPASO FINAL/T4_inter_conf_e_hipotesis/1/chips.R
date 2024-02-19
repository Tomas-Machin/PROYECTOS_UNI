
# DATA_1

library(readr)
pieces <- read_csv("data_1/pieces.csv")
# View(pieces)

## Una maquina fabrica cierta pieza de un ordenador. El tamaño deseado de la
## pieza es de 5 cm. En el proceso de fabricacion siempre hay circunstancias que
## no se pueden controlar, por lo que el tamaño de la pieza varıa aleatoriamente.
## El proceso de fabricacion esta diseñado de forma que el tamaño de cualquier
## pieza Xi ∼ N (5, σ2), aunque todavıa no se conoce σ ^ 2. 
## Para ello, se dispone delos datos almacenados en ”pieces.csv”. Halla un
## intervalo de confianza al 99 % para σ ^ 2.

                    ## [1] 0.0005653365 0.0022549273

  # Xi ∼ N (5, σ2) --> IC al 99% para σ2

# 1.- estadistico
  # S ^ 2 = (sum(X_i - X) ^ 2) / (n - 1) = var()
  # S ^ 2 = 0.00102025  <--- var(pieces$piece_size_cm)

# 2.- hayar la distr.
  # CHI_CUADRADO: ((n - 1) * S ^ 2) / sigma ^ 2 ~ X ^ 2_(n - 1)
  
  # ((30 - 1) * 0.00102025) / sigma ^ 2 ~ X ^ 2_(29)

# 3.- P(a < ((30 - 1) * 0.00102025) / sigma ^ 2 < b) = 0.99
  # prob. de q este fuera del 0.99 = 0.01, q dividico 2 es: 0.005
  a = qchisq(0.005, df = 29) # df = degrees of freedom
  a  # --> 13.12115
  b = qchisq(0.995, df = 29)
  b  # --> 52.33562
  
  # P(13.12 < (29 * 0.00102025) / sigma ^ 2 < 52.33562) = 0.99
  
# 4.- despejar la variable de interes: 
  
  # 13.12 < (29 * 0.00102025) / sigma ^ 2     --> sigma ^ 2 = 
  # (29 * 0.00102025) / sigma ^ 2 < 52.33562  --> sigma ^ 2 = 
  # 0.0005653365 < sigma ^ 2 < 0.0022549273

# HACER PREVIAMENTE UN PASO 0.-
  # DISCUTIR ASUNCIONES:
  # - Q LAS MUESTRAS SEAN INDEPENDIENTES
  # - Y Q LAS DISTRIBUCIONES SEAN NORMALES --> nos la da el enunciado
  
  # asumimos q las piezas son independientes.



