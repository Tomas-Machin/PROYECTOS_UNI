
library("tidyverse")

## EJ YA HECHO:
x = seq(-2, 2, 0.1)
expected_behaviour = 2 + 3 * x  # a = 2 y b = 3
epsilon = rnorm(length(x), sd = 1)
y = expected_behaviour + epsilon

df = data.frame('data_x' = x, 'data_y' = y, 
                'expected' = expected_behaviour)

ggplot(df, aes(x = data_x, y = data_y)) + 
  geom_point() + 
  geom_line(aes(y = expected), col = 2)

# ------------------------------------------------------------------------------
### EXPLICACION: (usando info de arriba como el df)

ggplot(df, aes(x = data_x, y = data_y)) + geom_point()

# 1.- modelo linear -> lm()
# data_y depende de data_x?
my_lm = lm(data_y ~ data_x, df) # pones de donde coges esos datos
# lo de ~ pregunta al modelo linear si data_y depende de data_x

## RESULTADO: 
# Coefficients:
# (Intercept)   data_x  ---> ordenada en el origen  | pendiente asociada a x
#   2.081        2.907   

# 2.- INFORMACION ESTADISTICA DEL MODELO
summary(my_lm) # --> estimar como de seguro esta acerca de sus predicciones

## RESULTADO:
# Residuals:
#   Min       1Q   Median       3Q      Max 
# -1.96333 -0.68530 -0.02545  0.61831  2.03313 
# Coefficients:
#               Estimate Std. Error t value Pr(>|t|)    
# (Intercept)     2.2472     0.1566   14.35   <2e-16 ***
#   data_x        2.9571     0.1323   22.35   <2e-16 ***
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 1.003 on 39 degrees of freedom
# Multiple R-squared:  0.9276,	Adjusted R-squared:  0.9257 
# F-statistic: 499.4 on 1 and 39 DF,  p-value: < 2.2e-16

    # ERROR --> margen de error con respecto al Estimate Std.

# 3.- 
# vamos a predecir cuanto vale y si x = 3  (VALORES DEL SUMMARY)
# y = 2.2472 + 2.9571 * 3 --> el predict pero a mano

my_new_df = data.frame("data_x" = c(3))  # puedo poner q haga predicciones de mas nº

predict(my_lm, my_new_df)  # --> 11.1185 
predict(my_lm, my_new_df, interval = "confidence")
# fit      lwr      upr      
# 11.1185 10.25531 11.98169    --> estimaciones/intervalo del valor estimado

my_predictions = predict(my_lm, df, interval = "confidence") 
# comparar la nube de puntos con las predicciones q haga
# no hace falta poner df ya lo hace por defecto

# 4.- representar la recta:
# añadir al ggplot los intervalos de cada punto esperado
df = bind_cols(df, my_predictions) # añade las columnas de my_predictions a df

ggplot(df, aes(x = data_x, y = data_y)) + 
  geom_point() + 
  geom_line(aes(y = expected), col = "red") + 
  geom_line(aes(y = fit), col = "green")