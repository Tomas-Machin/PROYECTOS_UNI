
# 1_SINGLE_NORMAL_CIS
# DATA_1

library(readr)
iq <- read_csv("data_1/iq.csv")
# View(iq)

## El fichero “iq.csv” contiene los resultados de un test de cociente intelectual (CI)
## realizado a una muestra de estudiantes de cierta universidad (con cientos de
## miles de estudiantes matriculados). ¿Cual es el cociente intelectual medio de 
## los alumnos de la universidad? Ten en cuenta que los tests de cociente 
## intelectual se diseñan para que la desviacion estandar poblacional sea de 
# 15 puntos.

## (Paso 1) Calcula la media muestral para el problema de los CIs.

media_iq = mean(iq$iq)  # --> 99
# sum(iq[3]) / 100
# colSums(iq["iq"]) --> es lo mismo q arriba

# DIAPO 5... 

## (Paso 2) ¿Cuál es la distribución de $\bar{X}$?

# .- es razonable asumir normalidad?

  hist(iq$iq) # para saber si podemos asumir normalidad o no
  # es razonable asumir normalidad ya por lo q muestra el histograma

  library("tidyverse")  # ggplot2 
  # primero el dataframe y luego las columnas q nos interesan
  #  el color los divide segun el genero q haya (los diferentes q haya en el df)
  ggplot(iq, aes(x = iq, y = grade_point_average, col = gender)) + 
    geom_point() # ideal para este problema
      # + geom_line()
  
  # con respecto al hostograma del principio
  ggplot(iq, aes(x = iq)) + geom_histogram() # se encarga de hacer el hist el solo
  # es razonable asumir normalidad ya por lo q muestra el histograma
  
# .- es razonable M.A.S o poblacion Inf?

  # si es razonble ya q la muestra es muy pequeña comparada con la cantidad
  # de alumnos totales de la universidad (pob. Inf.)

## (Paso 3a) Escribe matemáticamente la regla del 68-95-99 para nuestro  
## estadístico $\bar{X}$.

  # X ~ N(mu, 15 ^ 2 / 100) --> datos del ennciado
  
  # P(mu - 15 / 10 < X < mu + 15 / 10) = 0.68
  # P(mu - 2 * (15 / 10) < X < mu + 2 * (15 / 10)) = 0.95
  # P(mu - 3 * (15 / 10) < X < mu + 3 * (15 / 10)) = 0.99

  # P(mu - z * (15 / 10) < X < mu + z * (15 / 10)) = alpha --> nv. de conf.
  # P(- z * (15 / 10) < X - mu < z * (15 / 10)) = alpha
  # P(- z < (X - mu) * (10 / 15) < z) = alpha
  
  # X - mu ~ N(0, 15 ^ 2 / 100)
  # (X - mu) * (10 / 15) ~ N(0, 1) --> a esto se le llama tipificacion/estandarizacion (Z)
  
  # P(-z < Z < z) = alpha --> z son cuantiles
  # siendo z = 3 para el 0.99 --> por la regla del 66-95-99
  
  # P(-z < Z < z) = 1 - alpha (nv. de conf.)
  
## (Paso 3b) Halla $z_{\alpha/2}$ para un nivel de significación del 98\%.
 
   z = qnorm(0.01)  # --> -2.326348
  -z = qnorm(0.99) # --> 2.326348
  # P(-2.326348 < Z < 2.326348) = 0.98
  
## (Paso 4a) Despeja $\mu$ usando las inecuaciones del *paso 3* y empleando que
## $Z=\frac{\bar{X} - \mu}{15/10}$.
  
   # Z = (X - mu) * (10 / 15)
   
   # DESPEJAMOS mu -->
   # -2.326348 < (X - mu) * (10 / 15) --> mu < X + 2.32 * 15 / 10
   # (X - mu) * (10 / 15) < 2.326348 --> mu > X - 2.32 * 15 / 10
   
   # sustituyendo X por 99 --> 95.52 < mu < 102.48
  
## (Paso 4b) Halla un intervalo de confianza al 98% para mu
## empleando que $\bar{x} = 99$.
   
   # hacer a la inversa el paso anterior y sale
   
   
   
   
  