
library("tidyverse")
library("performance")

## Construye un modelo de regresión lineal para predecir el peso de una persona a 
## partir de los datos contenidos en "antrop.csv". Interpreta los coeficientes de 
## la regresión.

# predecir el peso a partir de la altura y del sexo.

# Ojo con la columna male! ¿Por qué?
## pq esta codificado con 1s y 0s
antrop$male = as.factor(antrop$male)  # --> para corregirloy q no la interprete
                                      #     con nº.

# 1.- cargar los datos:
library(readr)
antrop <- read_csv("data/antrop.csv")
# View(antrop)

# 2.- crear un modelo lineal:

antrop_model = lm(weight ~ height + male, data = antrop)
# Coefficients:
# (Intercept)       height        male1  
# -29.4636          0.4697       1.2322 


antrop_preds = bind_cols(antrop, fit = predict(antrop_model))
ggplot(antrop_preds, aes(x = height, col=male)) +
  geom_point(aes(y = weight)) +
  geom_line(aes(y = fit), lwd = 3)

# las lineas son paralelas (tener muy en cuenta)

# El modelo se puede escribir como:
# weight = -29 + 0.47 * height + 1.23 * male

summary(antrop_model)

# cambiar el nombre de los factores 0 y  1 de male:
# antrop$male = fct_recode((antrop$male, "hombre" = "1", "mujer" = "0"))

# -----------------------------------------------------------------------------
# Usa intervalos de confianza para interpretar los resultados de la regresión.
confint(antrop_model)
#                   2.5 %      97.5 %
# (Intercept) -43.8547524 -15.0724663
# height        0.3736688   0.5658194
# male1        -0.2277644   2.6920896


