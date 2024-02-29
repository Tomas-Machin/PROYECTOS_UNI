
library("tidyverse")
library("easystats")
library("car")
library("emmeans")

source("utils(3).R")
options(contrasts = c("contr.sum", "contr.poly"))

# El dataset `anxiety` proporciona la puntuación de ansiedad, medida antes 
# y después de aplicar un tratamiento contra la ansiedad, de tres grupos de 
# personas que practican ejercicios físicos en diferentes niveles 
# (grp1: basal, grp2: moderado y grp3: alto). Aunque no tenemos ninguna hipótesis
# específica, hagamos un análisis de los datos...

# 1) Vis...
library(readr)
anxiety <- read_csv("data/anxiety.csv")
# View(anxiety)


ggplot(anxiety, aes(x = group, y = posttest - pretest)) + geom_boxplot()
ggplot(anxiety, aes(x = pretest, y = posttest, col = group)) + 
  geom_point() + 
  geom_smooth()

# 2) Contrates 
# No tenemos hipótesis :(

anxiety$group = as.factor(anxiety$group)
contrasts(anxiety$group)

# 3) Anova + asunciones
# anxiety_lm = lm(posttest - pretest ~ group, anxiety) # --> otra forma
anxiety_lm = lm(posttest ~ pretest + group, anxiety) 

# Coefficients:
# (Intercept)      pretest       group1       group2   
#     -2.1495       1.0278       1.2086       0.5675  

anxiety_aov = Anova(anxiety_lm, type = 3)

# summary(anxiety_lm)

# posttest = -2.14 + 1.02 * pretest + 1.2 * group1 + 0.56 * group2
# posttest(group3) = -2.14 + 1.02 * pretest 

# 4) Posthoc tests!

group_means = emmeans(anxiety_lm, "group")  # --> saca las medias eiIC

# group emmean    SE df lower.CL upper.CL
# grp1    16.4 0.106 41     16.2     16.7
# grp2    15.8 0.107 41     15.6     16.0
# grp3    13.5 0.106 41     13.2     13.7
# 
# Confidence level used: 0.95 

pairs(group_means, adjust = "tukey")  
# --> calcula las diferencias entre los diferentes grupos
# contrast    estimate    SE df t.ratio p.value
# grp1 - grp2    0.641 0.151 41   4.235  0.0004
# grp1 - grp3    2.985 0.150 41  19.862  <.0001
# grp2 - grp3    2.344 0.151 41  15.517  <.0001
# 
# P value adjustment: tukey method for comparing a family of 3 estimates 




