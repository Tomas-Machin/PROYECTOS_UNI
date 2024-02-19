
library("tidyverse")
library("easystats")
library("car")
library("emmeans")

# Estudiamos el efecto de tres drogas sobre el tiempo de reacción (una de ellas 
# placebo) teniendo en cuenta además el sexo de los pacientes que toman el medicamento.
# Supongamos que  el efecto de las drogas y edad se mide  en términos de reducción 
# del tiempo de reacción a algún estímulo y que se obtienen los resultados del fichero
# "drugs_1.csv". Visualiza el efecto de las drogas y sexo en los tiempos de reacción
# y propón un modelo.

library(readr)
drugs_1 <- read_csv("data/drugs_1.csv")
# View(drugs_1)

drugs_1$drug = factor(drugs_1$drug)
drugs_1$sex = factor(drugs_1$sex)

ggplot(drugs_1, aes(x = drug, y = response_time, col = sex)) + 
  # geom_point()
  stat_summary() + 
  stat_summary(geom = "line", aes(group = sex))  # une con lineas por tipos

# la grafica sugiere q no hay interacciones pq las lineas son bastante paralelas

# OTRA REPRESENTACION:
model_d1 = lm(response_time ~ sex + drug, data = drugs_1)
drugs_1$predictions = predict(model_d1)

ggplot(drugs_1, aes(x = sex, y = predictions, col = drug)) + 
  stat_summary() + 
  stat_summary(geom = 'line', aes(group = drug))

# ------------------------------------------------------------------------------
# USANDO OTRO FICHERO
drugs_2 = read.csv("data/drugs_2.csv")
drugs_2 = mutate(drugs_2, drug = factor(drug), sex = factor(sex))

# interaction.plot(drugs_df$sex, drugs_df$drug, response = drugs_df$response_time)
ggplot(drugs_2, aes(x = sex, y = response_time, col = drug)) + 
  stat_summary() + 
  stat_summary(geom = 'line', aes(group = drug))

# las lineas no son paralelas (no todas)(el A no es paralela a ninguna)
# a lo hombres le sientan muy mal la droga A.

model_d2 = lm(response_time ~ sex + drug, data = drugs_2)
drugs_2$predictions = predict(model_d2)

ggplot(drugs_2, aes(x = sex, y = predictions, col = drug)) + 
  stat_summary() + 
  stat_summary(geom = 'line', aes(group = drug))

# son paralelas pero no se parecen a ninguna representacion de antes.

# ------------------------------------------------------------------------------
# MODELADO DE INTERACIONES:

model_d2 = lm(response_time ~ sex + drug + sex:drug, drugs_2)
summary(model_d2)

# response_time = 23 + 15male + 11B - 9Placebo - 20Male:B - 19Male:Placebo
# Hombre-A = 23 + 15
# Hombre-B = 23 + 15 + (11 - 20)
# Hombre-Pacebo = 23 + 15 + (-9 - 19)

# model_d2 = lm(response_time ~ sex * drug, drugs_2)  # es lo mismo q la de ^
# summary(model_d2)

drugs_2$preds = predict(model_d2)

ggplot(drugs_2, aes(x = sex, y = response_time, col = drug)) +
  stat_summary() +
  stat_summary(geom = "line", aes(group = drug))

ggplot(drugs_2, aes(x = sex, y = preds, col = drug)) +
  stat_summary() +
  stat_summary(geom = "line", aes(group = drug))

# ------------------------------------------------------------------------------
drug_means = emmeans(model_d2, ~ drug) 

drugs_contrasts = list(
  "_Drugs-Placebo" = c(1, 1, -2), 
  "_A - B" = c(1, -1, 0)
)

contrast(drug_means, method = list("drugs" = drugs_contrasts))

# Contrastes para interacciones 
conditional_means = emmeans(model_d2, ~ drug | sex)
contrast(conditional_means,
         interaction = list("drugs" = drugs_contrasts, "sex" = "consec"),
         by=NULL)

contrast(conditional_means,
         interaction = list(drug = "pairwise", sex = "consec"),
         by=NULL, adjust = "fdr")

