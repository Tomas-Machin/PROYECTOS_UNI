
# T5 REGRESION 

# REGRESION SIMPLE:
# relacion entre dos o mas variables

# MODELO LINEAL:
# EJ regresion_simple_1.R
# Residuals:
#   Min       1Q   Median       3Q      Max 
# -1.96333 -0.68530 -0.02545  0.61831  2.03313 
# Coefficients:
#               Estimate Std. Error t value Pr(>|t|)    
# (Intercept)     2.2472     0.1566   14.35   <2e-16 ***
#   data_x        2.9571     0.1323   22.35   <2e-16 ***
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 1.003 on 39 degrees of freedom
# Multiple R-squared:  0.9276,	Adjusted R-squared:  0.9257 
# F-statistic: 499.4 on 1 and 39 DF,  p-value: < 2.2e-16

    # ERROR --> margen de error con respecto al Estimate Std.
    # t value  --> estadistico para hacer una comparacion de Ha/H0 de tipo T de 
    #              student.
    # Pr(>|t|) --> es el p_valor asociado a este test. puede estar acompañado con
    #              codigos de significacion: cuantos mas * mas seguros se esta de
    #              q el coeficiente indicado sea != 0.

# RESIUDUOS --> distancia de los puntos a la recta

#**NO DEBEMOS INTERPRETAR UNA VARIABLE COMO LA CAUSA DE LA OTRA.**
# una relacion significativa entre X e Y puede ocurrir por varios motivos:
#  - X causa Y | Y causa X | existe un tercer factor (variable de confusion)
# LA REGRESION NO DISTINGUE EN Q CASO ESTAMOS ^ 

# ------------------------------------------------------------------------------
# INTERVALOS DE CONFIANZA EN LM:
# confint("modelo lineal")

# ------------------------------------------------------------------------------
# VALIDACION DE LOS MODELOS:
# Podemos usar el acrónimo **LINE** para recordar las asunciones más importantes
# del modelo: **Linear, Independent, Normal, Equal variances**.

# ------------------------------------------------------------------------------
# REGRESION MULTIPLE:
# EJ altura_sexo_edad

# ------------------------------------------------------------------------------
# DATOS CATEGORICOS: 
# NO DEBEMOS INTERPRETAR ESTOS DATOS COMO UNA PENDIENTE.
# EJ peso_altura_sexo.R

# ------------------------------------------------------------------------------
# REGRESION_2
# ANOVA Y ANCOVA:
# anova: analisis de la varianza --> ej sepalos.R
# ancova: analisis de la covarianza --> ej howell o pseo_altura_sexo.R

# anova: comparacion de medias para multiples grupos

