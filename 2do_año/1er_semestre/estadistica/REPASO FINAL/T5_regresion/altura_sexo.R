
## Quizás hayas escuchado que la gente más alta gana más. ¿Es cierto? Usa los datos
## en "height_earnings.csv" para indigar sobre esto (datos procedentes de una 
## encuesta sobre trabajo, familia y bienestar).

# 1.- cargar los datos
library("tidyverse")
library(readr)
heights_earnings <- read_csv("data/heights_earnings.csv")
# View(heights_earnings)

# la altura influye en la ganancia?
ggplot(heights_earnings, aes(x = height, y = earn)) + 
  geom_jitter(alpha = 0.6) +  # añade ruido a los datos, alpha distingue la
  geom_smooth()               # conglomeracion de puntos

# sugiere q a menor altura menos ganas

# 2.- crear un modelo lineal
# ganancias depende de altura??
# ganancias = a + b * altura --> H0: b = 0
earn_model = lm(earn ~ height, heights_earnings)

# ASUNCIONES: VALIDAR EL MODELO
library("performance")
is_norm = check_normality(earn_model) 
# Warning: Non-normality of residuals detected (p < .001).
plot(is_norm, type = "qq")  
# no se cumplen las asunciones, los residuos no parecen normales

# 3.- inferecia
summary(earn_model) # --> la gente mas alta cobra mas q la bajita
# el coeficiente de la altura ganas 1018.9 mas por cada pulgada de altura.

# -----------------------------------------------------------------------------
# hemos podido obviar variables importantes a tener en cuenta --> sexo
ggplot(heights_earnings, aes(x = height, y = earn, col = sex)) + 
  geom_jitter(alpha = 0.6) + 
  geom_smooth()  

earn_model = lm(earn ~ height, heights_earnings)


# -----------------------------------------------------------------------------
# earn_model = lm(log_earn ~ log_height, heights_earnings)
heights_earnings$log_earn = log(heights_earnings$earn)
heights_earnings$log_height = log(heights_earnings$height)









