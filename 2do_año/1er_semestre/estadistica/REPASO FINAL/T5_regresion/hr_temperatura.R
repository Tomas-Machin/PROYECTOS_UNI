
library("tidyverse")

## Un estudiante de biología desea determinar la relación entre
## temperatura ambiente y frecuencia cardíaca en la rana leopardo, *Rana pipiens*.
## Para ello, manipula la temperatura en incrementos de 2ºC que van desde
## 2ºC a 18ºC, registrando la frecuencia cardíaca (pulsaciones por minuto) en cada
## intervalo. Los datos están disponibles en "hr.csv".

# heart rate ~ temperatura
  # Universo 1: la temp no influye en hr
    # ha = a + b * temperatura = a (b = 0)
    # b = 0? o b != 0? --> H0: b = 0; Ha: b != 0
  
  # Universo 2: la temperatura disminuye el hr
    # hr = a + b * temperatura --> b < 0
  
  # Universo 3: la temperatura aumenta el hr
    # hr = a + b * temperatura --> b > 0

# no sabemos en q universo estamos y queremos saberlo.

# 1) leer los datos
library(readr)
hr <- read_table("data/hr.csv")
# View(hr)

# 2) Crear un modelo lineal
frog_model = lm(heart_rate ~ temperature, hr)
# Coefficients:
# (Intercept)  temperature  
# 2.139        1.775  

# 3) Inferencia
summary(frog_model)
# Residuals:
#   Min      1Q  Median      3Q     Max 
# -2.3389 -1.7889 -0.6889  1.7611  5.0111 
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept)   2.1389     1.9170   1.116    0.301    
# temperature   1.7750     0.1703  10.421 1.63e-05 ***
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 2.639 on 7 degrees of freedom
# Multiple R-squared:  0.9394,	Adjusted R-squared:  0.9308 
# F-statistic: 108.6 on 1 and 7 DF,  p-value: 1.629e-05

    # t value  --> estadistico para hacer una comparacion de Ha/H0 de tipo T de 
    #              student.
    # Pr(>|t|) --> es el p_valor asociado a este test. puede estar acompañado con
    #              codigos de significacion: cuantos mas * mas seguros se esta de
    #              q el coeficiente indicado sea != 0.

# CONCLUSION: no puedo afirmar (no estoy seguro) de q el coeficiente 2.1389 no 
#             sea = 0
#             En cambio podemos afirmar q el coeficiente asociado a la temperatura
#             es != 0, por lo tanto se q estoy en un universo donde la temperatura
#             influye de alguna forma en el hr. (p_valor = 1.63e-05)

confint(frog_model)
#                   2.5 %   97.5 %
#   (Intercept) -2.394015 6.671792    --> no puedo descartarq sea 0
# temperature    1.372241 2.177759    --> estamos seguros q influye en hr (!= 0)
#                                         ademas podemos observar q son temperaturas
#                                         positivas, lo q quiere decir q el aumento 
#                                         de la temp esta asociado con el hr.

# Los resultados sugieren que el ritmo_cardiaco de las ranas se incrementará
# 1.77 bpms (summary-temepratura) por cada grado Celsius, si bien un aumento de 
# la frecuencia cardiaca en el rango (1.37, 2.17) es igualmente verosímil.

# VALIDACION DEL MODELO:
library("performance")
is_norm = check_normality(frog_model) 
# OK: residuals appear as normally distributed (p = 0.111).

# Para hacer la inspección visual:
# plot(is_norm)
plot(is_norm, type = "qq")
plot(is_norm, type = "qq", detrend=TRUE)



