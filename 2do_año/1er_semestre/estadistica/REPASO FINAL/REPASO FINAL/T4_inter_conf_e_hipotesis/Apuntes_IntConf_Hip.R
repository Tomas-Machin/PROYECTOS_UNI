# ------------------------------------------------------------------------------
# INTERVALOS DE CONFIANZA:

# PARA MEDIAS SI LA VARIANZA ES CONOCIDA:
# buscar media, la distribucion q tiene y asumiremos:
#   - o poblacion infinita: (muy grande comparado con la muestra)
#   - o muestreo aleatorio: (muestreo con reemplazamiento)
# si asumimos lo anterior las muestras son INDEPENDIENTES

# Xi ~ N(mu, sigma ^ 2) --> la suma de estas noramles e independientes da lugar a 
# otra normal

# E[X] = E[sum(Xi) / N] = sum(E[Xi] / N) = sum(mu) / N = N * mu / N = mu
# Var[X] = Var[sum(Xi / N) = 1 / N ^ 2 * sum(Var[Xi]) = 1 / N ^ 2 * sum(sigma ^ 2)
# = N * sigma ^ 2 / N ^ 2 = sigma ^ 2 / N   (TODO ESTO ASUMIENDO INDEPENDENCIA)

# SI LA POBLACION ES NORMAL Y USAMOS {M.A.S o POBLACION Inf} -->
# -->  X ~ N(mu, sigma ^ 2 / N)
# cuanto mas grande sea N mas estrecha sera la campana de gauss, sino lo contrario

# TENER EN CUENTA SI SIGMA ES POBLACIONAL O MUESTRAL.

# ------------------------------------------------------------------------------
# PARA VARIANZA MUESTRAL

# sigma ^ 2 = E[(X - mu) ^ 2]
# para estimar la varianza poblacional:
# ^                  _
# S ^ 2 = (sum(X_i - X) ^ 2) / n
# es mala estimador ya que: E[S ^ 2] != sigma ^ 2
# por ello lo cambiamos a: S ^ 2 = (sum((X_i - X) ^ 2)) / (n - 1)
  
# si se toman n muestras de una poblacion entonces la VA:
# ((n - 1) * S ^ 2) / sigma ^ 2
# tiene distribucion CHI-CUADRADO n - 1 grados de libertad:
# ((n - 1) * S ^ 2) / sigma ^ 2 ~ X ^ 2_(n - 1)

  # TIPOS DE CHI_CUADRADO: - dchisq() -> 
  #                        - pchisq() -> 
  #                        - qchisq() -> 
  #                        - rchisq() -> 
  #      _
  # Z = (X - mu) / sigma * srqt(n) ~ N(0, 1)

# ------------------------------------------------------------------------------
# PARA MEDIAS SI LA VARIANZA NO ES CONOCIDA:
#                                                  _         ^
# si n muestras se toman de una poblacion normal: (X - mu) / S / srqt(n)
# T DE STUDENT con (n - 1) grados de libertad: (X - mu) / S / srqt(n) ~ T_(n - 1)

  # TIPOS DE T de Student: - dt() -> 
  #                        - pt() -> 
  #                        - qt() -> 
  #                        - rt() -> 

# ------------------------------------------------------------------------------
# TEST DE HIPOTESIS PARA UNA POBLACION NORMAL:
# ------------------------------------------------------------------------------
# TEST DE HIPOTESIS DE 2 COLAS: EJ HOMEO

# como poder argumentar q los datos no apoyan lo q dice el fabricante:

# 1.- COMO EN UN JUICIO, ASUMIMOS LA "INOCENCIA" DEL PRODUCTO Y NOS CREEMOS
# (POR EL MOMENTO) Q EL PRODUCTO PERMITE PERDER 2KG EN 2 SEM. ASUMIENDO NOMALIDAD,
# ENTONCES:
# xi ~ N(2, 2.5 ^ 2) -> X ~ N(2, 2.5 / 50) 
# llamaremos a esto HIPOTESIS NULA --> H0

# 2.- bajo esta hipotesis la prob de perder 0.037kg (o menos) es muy baja.

# 3.- la prob es tan baja q tenemos una evidencia muy fuerte contra la hip. inicial

### PRODECIMIENTO:
#   1. Formulamos una hipotesis. Generalmente aceptamos como hipotesis de
# partida (hipotesis nula, H0) lo contrario de lo que queremos probar ->
# (hipotesis alternativa, Ha).

# 2. Buscamos un estadıstico de contraste T que nos permita testear la
# veracidad de H0. Es fundamental discutir las asunciones bajo las que la
# distribucion de este estadıstico es conocido.

# 3. Calculamos el p-valor: bajo la H0, la probabilidad de observar un
# estadıstico tan extremo como el realmente observado. Cuanto mas
# pequeño sea el p-valor, mas pequeña es la evidencia a favor de H0.

# 4. Comparamos el p-valor con un umbral llamado nivel de significancia α. Si
# p-valor < α, descartamos la hipotesis nula y diremos que la hipotesis ha
# sido rechazada o que los resultados son estadısticamente significativos.
# Los valores mas tıpicos de α son 0.05 y 0.01.

# ------------------------------------------------------------------------------
# TEST DE HIPOTESIS DE UNA SOLA COLA:
# EJ HOMEO_1_COLA:
# es lo mismo q el de dos colas pero cambiando el valor de la variable del t.test
# de "alternative" acorde a la Ha. Por ellos olo se tiene en cuenta una de las
# zonas mas q las dos. --> pt(t_contraste, n - 1)

# ------------------------------------------------------------------------------
# TAMAÑO DEL EFECTO:
# EJ farmacos.R

# ------------------------------------------------------------------------------
# POTENCIA DE UN TEST:
# DIAPO 10 - T4
# EJ iq_español.R


# ------------------------------------------------------------------------------
# COMPARACION DE MEDIAS DE DOS POBLACIONES:
# EJ tamaño_gbef.R

# ------------------------------------------------------------------------------
# COMPARACION DE VARIANZAS:
# EJ var.test.R

# ------------------------------------------------------------------------------
# TESTS E IC PARA POBLACIONES NO NORMALES:
# 





