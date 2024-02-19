
library("tidyverse")
library(readr)
homeo_weight_loss <- read_csv("data_2/homeo_weight_loss.csv")
# View(homeo_weight_loss)

## Un producto homeopatico afirma que “gracias a su uso, perderas 2 Kg en
## dos semanas”.
## Esceptico ante esta afirmacion, reclutas a 50 personas de tu ciudad para
## participar en un experimento. Las personas usan el producto homeopatico
## durante dos semanas y reportan su perdida de peso (por ejemplo, xi = 3
## significarıa que se han perdido 3 Kg, mientras que xi = −3 significarıa que se
## han ganado 3). Datos en ”homeo weight loss.csv”.

## En base a los datos, ¿es creible la afirmacion del producto homeopatico? Por
## sencillez, asume que la perdida de peso tiene desviacion tıpica poblacional
## σ = 2.5.

# 1.- formulamos las hipotesis:
  # H0: pierdes 2kg en 2 sem
  # Ha: no pierdes 2kg en 2 sem --> lo q queremos probar

  # H0: mu = 2                    mu -> perdida de peso medio
  # Ha: mu != 2

# 2.- buscamos un estadistico de contraste
  # para adivinar mu, usamos X_gorrito (mean)
  X = mean(homeo_weight_loss$weight_loss_Kg)  # --> 0.037
  # como se distribuye X? --> distr. normal (chuletario: varianza conocida)
  # ASUNCIONES:
  #  - INDEPENDENCIA ENTRE LAS MUESTRAS
  #  - M.A.S O POB. INF. --> si pq 50 comparado con una ciudad es una muestra muy peq.
  #  - normalidad de las muestras
  bins = nclass.FD(homeo_weight_loss$weight_loss_Kg)
  ggplot(homeo_weight_loss, aes(x = weight_loss_Kg)) + geom_histogram(bins = bins)
  # asumo normalidad por lo q:
  # X ~ N(mu, sigma ^ 2 / n) 
  
  # Bajo la H0 (asumimos cierta) --> mu = 2 --> X ~ N(2, 2.5 ^ 2 / 50)
  
# 3.- calculamos p_valor (confrontar datos vs H 0)
  x_axis = seq(0, 4, by = 0.01)
  sd = sqrt(2.5 ^ 2 / 50)
  y_axis = dnorm(x_axis, 2, sd)
  plot(x_axis, y_axis, type = "l")
  
  X = mean(homeo_weight_loss$weight_loss_Kg)  # --> 0.037
  abline(v = X, col = "red")
  abline(v = 4 - X, col = "red") # el otro extremo
  
  # calculamos el p_valor: prob de obtener un evento, tan o mas extremo q el 
  # observado (compatibles con Ha)
  # P(X_gorrito < 0.037 ó X_gorrito > 4 - X0) --> 2 * P(X_gorrito < 0.037)
  p_valor = 2 * pnorm(X, 2, sd)  # --> 2.820926e-08
  
  # 4.- comparamos el p_valor con el nivel de significancia alpha: 0.01
    
    # si p_valor < alpha --> ACEPTAMOS Ha, RECHAZAMOS H0
    # si p_valor > alpha --> ACEPTAMOS H0
    
    # como el p_valor es muy pequeño es evidencia fuerte en contra de la H0 ->
    # mu = 2 y a favor de la Ha -> mu != 2. Es decir, no vas a perder 2kg
    # en 2 semanas.
  
# ------------------------------------------------------------------------------
## MISMO PROBLEMA PERO SIN SABER EL VALOR DE SIGMA:

# 1.-
  # H0: mu = 2
  # Ha: mu != 2

# 2.- distr. del estadistico de contraste:
  # t de student
  # LAS ASUNCIONES ACERCA DE POB. INF. Y NORMALIDAD, SE MANTIENEN:
  # (X_gorrito - mu) / (S / sqrt(n)) ~ T_(n - 1)
  t.test(homeo_weight_loss$weight_loss_Kg, mu = 2)  # --> p-value = 3.205e-06

  # como el p_valor es muy pequeño es evidencia fuerte en contra de la H0 ->
  # mu = 2 y a favor de la Ha -> mu != 2. Es decir, no vas a perder 2kg
  # en 2 semanas.
  

# DATOS Q PROPORCIONA EL T_TEST:
  X = mean(homeo_weight_loss$weight_loss_Kg)  # --> 0.037
  sd = sd(homeo_weight_loss$weight_loss_Kg)  # --> 2.641253
  n = nrow(homeo_weight_loss)  # --> 50
  mu = 2
  t_contraste = (X - mu) / (sd / sqrt(n))  # --> -5.255273
  
  x_ax = seq(-6, 6, by = 0.1)
  plot(x_ax, dt(x_ax, n - 1), type = "l")
  abline(v = t_contraste, col = 2, lwd = 2)
  
# p_valor sin el t.text():
  2 * pt(t_contraste, 49)  # --> p_valor = 3.205472e-06




