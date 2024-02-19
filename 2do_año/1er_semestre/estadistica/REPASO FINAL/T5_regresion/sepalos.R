
library("tidyverse")
library("performance")

## El dataset `iris` (puedes obtenerlo con `data(iris)`) contiene medidas del 
## sépalo y pétalo de varias especies de iris. Construye un modelo lineal para 
## predecirla longitud del sépalo únicamente en función de la especie. 
## Interpreta los coeficientes de la regresión.

# 1.- cargar datos
# View(iris)

# ggplot(iris, aes(x = Sepal.Length, col = Species)) + geom_density()
ggplot(iris, aes(x = Species, y = Sepal.Length)) + geom_boxplot()

# las lineas en negrita indican la mediana de los datos de cada uno y las cajitas
# indican donde se encuentran los datos (como intervalo), y los palitroques son 
# las colas

# 2.- crear modelo
iris_model = lm(Sepal.Length ~ Species, iris)
summary(iris_model)

# los compara con setosa por defecto.
# sepal = mean-setosa-sepal + 0.93 * versicolor + 1.58 * virginica

contrasts(iris$Species)  # --> valores en la formula de arriba para q salga la
                         #     longitud del sepalo para las diferentes especies.
#             versicolor virginica
# setosa              0         0
# versicolor          1         0
# virginica           0         1

# para tomar como referencia a otra especie:
    # iris$Species = relevel(iris$Species, "versicolor")

# y si lo corres te sale lo mismo de los contrastes pero teniendo como diferencia
# a versicolor.

# -----------------------------------------------------------------------------
# Imagínemonos el siguiente universo paralelo. En este universo paralelo solo 
# existe la especie setosa. Una empresa de ingeniería genética te contrata para
# crear nuevas especies con un sépalo más grande. Desarrollas un método conocido
# como "Método V", que tiene dos variantes "V-I" y "V-II". Los experimentos con
# estas variantes dan lugar a dos nuevas especies que llamas versicolor (V-I) y 
# virginica (V-II). Te planteas dos preguntas científicas: 
#   
#   1. ¿Es el método V capaz de crear especies con el sépalo más grande?

  # mu_setosa < (mu_v1 + mu_v2) / 2 --> mu_setosa - (mu_v1 + mu_v2) / 2 != 0

#   2. ¿Existe alguna diferencia entre V-I y V-II?

  # mu_v1 != mu_v2 --> mu_v1 - mu_v2 != 0

# Contraste: es una pregunta acerca de varias medias
source("utils(3).R")

# matriz de codificaciones --> para pulir los datos de los contrastes
 
# 1.- mu_setosa < (mu_v1 + mu_v2) / 2 --> mu_setosa - (mu_v1 + mu_v2) / 2 != 0

# la matriz de codificaciones es la formula de arriba: los mnº q multiplican
# las variables. mu_setosa = 1, mu_v1 = -1 / 2, mu_v2 = -1 / 2
p1 = c(1, -0.5, -0.5)

# 2.- mu_v1 != mu_v2 --> mu_v1 - mu_v2 != 0
# se hace igual pero con esta ahora: mu_setosa = 0, mu_v1 = 1, mu_v2 = -1
p2 = c(0, 1, -1)

matriz_contrastes = rbind(
  "_setosa-V" = p1,  # le pones nombre a las filas
  "_V1-V2" = p2
  )

# para saber si esta bien deberiamos hacer: 1 * 0 + -0.5 * 1 + -0.5 * -1 = 0
# si se cumple es q esta bien sino esta mal

contrasts(iris$Species) = get_contrasts_coding(matriz_contrastes)
contrasts(iris$Species)  # --> para comprobar si se han hecho los contrastes

v_model = lm(Sepal.Length ~ Species, iris)
summary(v_model)

  #   1. ¿Es el método V capaz de crear especies con el sépalo más grande?
# Si es capaz de crear especies con el sepalo mas grande ya q en el coeficiente 
# q usa el modelo lineal para comparar el tamaño de setosa con V es negativa, lo
# q indica q la media de las especies mutantes es mayor q la de setosa 
# (-1.256 mas grande de media)

  #   2. ¿Existe alguna diferencia entre V-I y V-II?
# Si, el coeficiente q lo indica quiere decir q la especie v2 tiene un tamaño
# de sepalo mas grande q el de v1 (-0.652 mas grande)

confint(v_model)
#                       2.5 %     97.5 %
# (Intercept)       5.7602675  5.9263991
# Species_setosa-V -1.4322092 -1.0797908
# Species_V1-V2    -0.8554688 -0.4485312




