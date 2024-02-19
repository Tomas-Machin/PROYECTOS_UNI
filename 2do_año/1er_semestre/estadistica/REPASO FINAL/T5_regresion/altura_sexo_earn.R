
library("tidyverse")
library("performance")

## Añade la variable sexo al modelo de los salarios. ¿Cuál es la diferencia en ganancias 
## para hombres y mujeres de la misma altura? 

# 1.- cargar datos
library(readr)
heights_earnings <- read_csv("data/heights_earnings.csv")
heights_earnings$sex = as.factor(heights_earnings$sex)

ggplot(heights_earnings, aes(x = height, y = earn, col = sex)) + 
  geom_jitter(alpha = 0.4) +
  geom_smooth()

model = lm(log(earn) ~ log(height) + sex, heights_earnings)

# VALIDACION DEL MODELO

is_norm = check_normality(model)
plot(is_norm, type = "qq")   # son mas normales si aplicamos log() en el lm.

summary(model)

# ------------------------------------------------------------------------------
# Añade la variable educación al modelo de los salarios. Modifica los contrastes
# para responder a las siguientes preguntas:
#   
#   1. ¿Merece la pena estudiar "high school" o "universidad" o basta con quedarse
# en "elementary" (en términos de salario)?
#   2. ¿Merece la pena estudiar "universidad" comparado con "high school"?

model_2 = lm(log(earn) ~ log(height) + sex + ed, heights_earnings)
summary(model_2)

# 1.- 
# mu_elem < (mu_hs + mu_uni) / 2 --> mu_elem - (mu_hs + mu_uni) / 2 != 0

# 2.- 
# mu_hs != mu_uni --> mu_hs - mu_uni != 0

heights_earnings$ed = as.factor(heights_earnings$ed)
contrasts(heights_earnings$ed)

#                      high school university or higher
# elementary                     0                    0
# high school                    1                    0
# university or higher           0                    1

matriz_contrastes = rbind(
  "_elem-other" = c(1, -0.5, -0.5),
  "_hs-uni" = c(0, 1, -1)
)

contrasts(heights_earnings$ed) = get_contrasts_coding(matriz_contrastes)
model_2 = lm(log(earn) ~ log(height) + sex + ed, heights_earnings)
summary(model_2)


