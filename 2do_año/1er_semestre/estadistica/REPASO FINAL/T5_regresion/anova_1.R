
library("tidyverse")
library("easystats")  # carga performance y effectsize
library("car")
library("emmeans")

source("utils(3).R")

# Repitamos el análisis realizado para el método V, incorporando además los 
# nuevos pasos.

v_model_aov = Anova(v_model, type = 3) # recomendable el tipo 3

# Anova Table (Type III tests)
# 
# Response: Sepal.Length
# Sum Sq  Df  F value    Pr(>F)    
# (Intercept) 5121.7   1 19326.51 < 2.2e-16 ***
#   Species       63.2   2   119.26 < 2.2e-16 ***
#   Residuals     39.0 147                       
# ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

effectsize(v_model_aov)   # --> eta_squared(v_model_aov)

# Parameter | Eta2 |       95% CI
# -------------------------------
# Species   | 0.62 | [0.54, 1.00]

pairwise.t.test(iris$Sepal.Length, iris$Species, p.adjust.method = "bonferroni")
##**NO USARLO!!!!**
 
# setosa  versicolor
# versicolor 2.6e-15 -         
# virginica  < 2e-16 8.3e-09 

summary(v_model)
# Sepalo ~ Specie (son distintas las especies?) -> te lo responde en el p_valor
# si es muy pequeño indica q hay diferencias en el sepalo medio de las especies
v_model_aov

# ------------------------------------------------------------------------------
# 1.- visualizar
# iris$Sepal.Length, iris$Species
ggplot(iris, aes(x = Sepal.Length, y = Species, fill = Species)) + geom_boxplot()

# 2.- si hay contrastes especificarlos:
# hay diferencias entre setosa y V?

contrasts(iris$Species)
# diferencis -->
matriz_contrastes = rbind(
  "_setosa-V" = c(1, -0.5, -0.5),
  "_V1-V2" = c(0, 1, -1)
)

contrasts(iris$Species) = get_contrasts_coding(matriz_contrastes)

# 3.- regresion y anova

model = lm(Sepal.Length ~ Species, iris)
model_aov = Anova(model, type = 3)

# 4.- contrastes y test post-hoc (si necesarios)

summary(model)

# si queremos todas la comparaciones:
model_aov  # --> p_valor pequeño = indica q hay diferencias entre especies

# test post-hoc:
pairwise.t.test(iris$Sepal.Length, iris$Species, p.adjust.method = "bonferroni")
# indica tmb si hay diferencias entre especies pero todas con todas

# 5.- ASUNCIONES DE ANOVA (las mismas q la de la regresion)
is_norm = check_normality(v_model)
plot(is_norm, type = "qq")  # ta todo ok

# .2.- homogeneidad de la varianza
check_homogeneity(v_model)  # podemos interpretar lo q nos dice -> no lo son

# todos los test post-hoc a la BASURA
# los test post-hoc no cumplen las asunciones, debemos ser cautelosos pq los
# p_valores pueden ser realmente mas grandes.

