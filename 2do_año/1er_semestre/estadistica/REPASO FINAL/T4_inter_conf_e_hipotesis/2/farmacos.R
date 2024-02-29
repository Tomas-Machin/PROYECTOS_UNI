
library("tidyverse")
library(readr)
pharma_weight_loss <- read_csv("data_2/pharma_weight_loss.csv")
# View(pharma_weight_loss)

## Gracias a tu éxito con el análisis del producto homeopático, una farmacéutica
## interesada en desarrollar un fármaco para la pérdida de peso te contrata.
## La empresa quiere comercializar su (carísimo) producto con un eslogan del tipo
## "Hay evidencia científica de q nuestro producto te hará perder peso si lo usas
## dos meses".
## Te facilitan los datos de "pharma\_weight\_loss.csv". ¿Hay suficiente evidencia
## de que el fármaco te hace perder peso? (Usa alpha = 0.05)

# 1.-
  # H0: mu < 0 --> ganas peso
  # Ha: mu > 0 --> pierdes peso

# 2.- 
# ASUNCIONES:
#  - M.A.S/POB. INF. --> el nº de muestras es muy pequeña con la poblacion total
#  - NORMALIDAD --> 
bins = nclass.FD(pharma_weight_loss$weight_loss_Kg)
ggplot(pharma_weight_loss, aes(x = weight_loss_Kg)) + geom_histogram(bins = bins)
# ASUMO NORMALIDAD

# Ha > 0;
my_test = t.test(pharma_weight_loss$weight_loss_Kg, mu = 0, alternative = "greater")
my_test$p.value  # --> 0.0003103373

# p_valor < alpha = 0.05
# CONCLUSION: rechazamos la H0 -> mu < 0, y es evidencia suficiente para apoyar 
#             los datos de la Ha -> mu > 0. Es decir, que se pierde peso con el 
#             uso del producto en el tiempo de 2 meses. De media se pierden 
#             100gr. 

## TAMAÑO DEL EFECTO:

## ¿Tú crees que alguien comprará el producto?
## **No hay que confundir la significancia estadística con la relevancia práctica**.
## Para esto último debemos usar **ICs** o **el tamaño del efecto**.

## Calcula el tamaño del efecto para el problema del fármaco. ¿Cómo lo interpretas?
## Usa la siguiente [tabla]
## {https://imaging.mrc-cbu.cam.ac.uk/statswiki/FAQ/effectSize}.

# para calcular la relevancia del resultado:

cohens_d = mean(pharma_weight_loss$weight_loss_Kg) / sd(pharma_weight_loss$weight_loss_Kg)
# --> 0.1085716 -> ¿pequeño? ¿grande?
# nº pequeños son poco relevantes

library("effectsize")
effectsize(my_test)
#   Cohen's d |    95% CI
# -------------------------
#   0.11      | [0.06, Inf]

# cohen's d = 0.11 < 0.2 --> por lo q el tamaño del efecto es pequeño
# (Resultado poco relevante)


# COMO REPORTAR RESULTADOS? --> 

# los datos apoyan q hay perdida de peso gracais al uso del producto (p-valor =
# = 0.0003103373). sin embargo, el tamaño del efecto es pequeño (0.11), lo q nos
# indica q la perdida de peso es poco relevante. 
# (con 95% de confianza, la perdida > 0.05542461 kg)  --> del t.test()

