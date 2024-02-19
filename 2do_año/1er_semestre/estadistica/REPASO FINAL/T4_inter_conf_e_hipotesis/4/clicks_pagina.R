
library("tidyverse")
library("effectsize")
library(readr)
ab_testing <- read_csv("data_4/ab_testing.csv")
# View(ab_testing)

## Una página web de venta de productos ha estudiado el número de conversiones de
## su página web actual (conversión $=$ el usuario hace click en ``comprar ahora'').
## Para aumentar el número de conversiones, rediseña el aspecto de su página web en
## base a *heatmaps*.  La nueva página se prueba con un nuevo conjunto de usuarios,
## midiendo el número de conversiones. Datos en "ab_testing.csv". ¿Se puede 
## concluir que la nueva página incrementa el número de conversiones? 
##   Apoya tus conclusiones con un gráfico.

# N: nº de clicks de la pagina nueva
# V: nº de clicks de la pagina vieja

# N ~ B(n_nueva, p_nueva)
# V ~ B(n_vieja, p_vieja)


# Ha: nº de click nueva > nº clicks vieja --> p_nueva > p_vieja

ab_nueva = ab_testing[ab_testing$page_design == "new", ]
ab_vieja = ab_testing[ab_testing$page_design == "old", ]

X_nueva = mean(ab_nueva$has_clicked)  # --> 0.2587917
X_vieja = mean(ab_vieja$has_clicked)  # --> 0.1897233
n_nueva = nrow(ab_nueva)  # --> 1109
n_vieja = nrow(ab_vieja)  # --> 1012

# table(ab_nueva)
prop.test(sum(ab_nueva$has_clicked), n_nueva)
prop.test(c(sum(ab_nueva$has_clicked), sum(ab_vieja$has_clicked)),
          c(n_nueva, n_vieja),
          alternative = "greater" # se sabe por el orden de las variables
          )
### RESULTADOS:
# 2-sample test for equality of proportions with continuity correction
# 
# data:  c(sum(ab_nueva$has_clicked), sum(ab_vieja$has_clicked)) out of c(n_nueva, n_vieja)
# X-squared = 14.046, df = 1, p-value = 8.922e-05
# alternative hypothesis: greater
# 95 percent confidence interval:
#   0.03847633 1.00000000
# sample estimates:
#   prop 1    prop 2 
# 0.2587917 0.1897233

# CONCLUSION: la prob de q clickes en la pagina nueva comparads con la vieja es
#             de al menos un 3% (intervalo de confianza del 95%: 0.03847633, 1)
#             Dado q el p_valor es casi nulo, podemos confirmar la Ha, ya q es 
#             evidencia de q los datos apoyan dicha hipotesis

# ------------------------------------------------------------------------------
# PARA HACERLO MAS SENCILLO: 
counts = table(ab_testing)
rowSums(counts)
counts[1,] # esto es lo q pones en el prop.test para no poner los nº a machete







