
library("tidyverse")
library("effectsize")

## En una empresa, se están comparando dos métodos de producción de cierto chip 
## (A, mucho más barato, y B). La potencia media consumida por ambos chips es 
## idéntica, si bien los dos métodos tienen distinta variabilidad. Se obtienen 
## dos muestras de tamaño 16 y 10 y sus varianzas muestrales son
## 24 y 18 (en Watts^2). Usando un nivel de confianza del 98%, ¿qué método 
## es preferible? Usa la función *var.test*.

# A: potencia chips A ~ N(mu, sigma_a)
# B: potencia chips B ~ N(mu, sigma_b)

# 1.- formular hipotesis: no hay hipotesis

# 2.- ASUNCIONES:
#  - MORMALIDAD  --> la asumo a machete
#  - INDEPENDEDENCIA ENTRE POB. Y MUESTRAS -> el metodo de fabricacion de A,
#                    no influye en la de la fabricacion de B. Ademas, asumimos
#                    q 16 y 10 chips son pocos comparados con una produc. normal

# 3.- var.test

# argumentos principales: datos de A, B
# 3.1.- vamoas a generar datoscuya media y varianza cuadren con los datos del
# enunciado.
# reto: generar 16 muestras normales de media 3 y varianza 24

sim = rnorm(16, mean = 3, sd = sqrt(24))
# var(sim)
# estandarizar simulaciones: restar la media a las variables
sim_a = (sim - mean(sim)) / sd(sim)
# mean(sim_a + 3)  # 3
# var(sim_a * sqrt(24))  # --> 4.898979 --> sqrt(24) * sd(sim_z)
sim_A = sim_a * sqrt(24) + 3  # proceso inverso de z
# var(sim_A)
# comprobacion:
mean(sim_A)
var(sim_A)

# lo mismo pero con B ahora
sim = rnorm(10, mean = 0, sd = sqrt(18))
sim_b = (sim - mean(sim)) / sd(sim)
# mean(sim_b + 3)  # 3
# var(sim_b * sqrt(18))  
sim_B = sim_b * sqrt(18) + 0
# var(sim_B)

# para calcular var(a) / var(b)
var.test(sim_A, sim_B, conf.level = 0.98)
### RESULATDOS DEL VAR_TEST:
# F test to compare two variances
# 
# data:  sim_A and sim_B
# F = 1.3333, num df = 9, denom df = 15, p-value = 0.5979
# alternative hypothesis: true ratio of variances is not equal to 1
# 98 percent confidence interval:
#   0.3423378 6.6161045
# sample estimates:
#   ratio of variances 
# 1.333333 

# intervalo de diferencia de varianzas -> (0.2687046, 5.1930508)
# var(A) / var(B) esta en (0.3423378, 6.6161045)


# RESOLUCION POR LA FORMULA:
ratio = 24 / 18
parte_2 = qf(0.01, df1 = 16 - 1, df2 = 10 - 1)  # --> 0.2567534
# 0.01 pq el nv de conf = 0.98 y como es de dos cola /2 = 0.01
parte_1 = qf(0.99, df1 = 16 - 1, df2 = 10 - 1)  # --> 4.962078
cuantiles = c(parte_1, parte_2)

in_conf = ratio / cuantiles  # --> 0.2687046 5.1930508

# como el intervalo en el q se ecuentra la varainza es (0.2687046, 5.1930508),
# y este incluye el 1, no hay suficiente evidencia q respalde los datos del 
# enunciado, es decir, que los dos métodos tienen distinta variabilidad.

# los datos no aportan evidencia de q las varianzas sean distintas 
# en este contexto, como A es mas barato, la empresa debera este metodo de 
# fabricacion


### EJERCICIO EXTRA:

# HAY EVIDENCIA DE Q LA VARIANZA DE A SEA AL MENOS DOS VECES LA DE B?

# H0: 
# Ha: var(A) > 2 * var(B) --> var(A) / var(B) > 2
var.test(sim_A, sim_B, ratio = 2, alternative = "greater")
# importa el orden de los datos de A y B

