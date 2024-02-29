
library("tidyverse")
library("effectsize")
library(readr)
iq_spanish <- read_csv("data_2/iq_spanish.csv")
# View(iq_spanish)

## Los test de cociente intelectual (CI) están diseñados para que la desviación 
## típica poblacional sea de 15 puntos. Sin embargo, en los procesos de traducción de
## un test "oficial" de CI pueden surgir desajustes.
##
## Por ejemplo, "iq_spanish.csv" tiene los resultados de un test de CI
## traducido del inglés al español. ¿Hay evidencia de que la desviación típica
## es distinta de 15 y de que, por tanto, debe revisarse la traducción? Usa un 
## nivel de significación del 5%.

# 1.-
  # H0: sigma ^ 2 = 15 ^ 2
  # Ha: sigma ^ 2 != 15 ^ 2

# 2.- buscar estadistico de contraste
X = mean(iq_spanish$iq)  # --> 101.1429
# COMO SE DISTRIBUYE? --> distribucion chi_cuadrado
# ASUNCIONES:
#  - INDEPENDENCIA ENTRE LAS MUESTRAS
#  - M.A.S O POB. INF. --> las personas (30) q has tomado el test es muy peq 
#                          comparado con la poblacion española (hispanohablantes)
#  - normalidad de las muestras -->

bins = nclass.FD(iq_spanish$iq)
ggplot(iq_spanish, aes(x = iq)) + geom_histogram(bins = bins)
# asumo normalidad por el histograma

# asumimos la H0 cierta -->
# ((n - 1) * S ^ 2) / sigma ^ 2 ~ X ^ 2_(n - 1) --> 
# --> ((29) * S ^ 2) / 15 ^ 2 ~ X ^ 2_(n - 1)

# 3.- calcular el p_valor
  # S ^ 2 = var(iq_spanish$iq)  # --> 388.6902
((29) * 388.6902) / 15 ^ 2  # --> 50.09785

# p_valor = P(X ^ 2_(29) > 50.09785) = 2 * (1 - P(X ^ 2_(29) <= 50.09785)) = 
# = 2 * (1 - pchisq(50.09785, 29))
# es x2 pq es de DOS COLAS
p_valor = 2 * (1 - pchisq(50.09785, 29))  # --> 0.01762978

# 4.- alpha = 0.05; 0.018 < 0.05
# CONCLUSION: rechazamos la H0 -> sigma ^ 2 = 15 ^ 2, y ademas es evidencia fuerte
# de q los datos apoyan la Ha -> sigma ^ 2 != 15 ^ 2. Es decir, se debe revisar la
# traduccion de los documentos entre idiomas.

# En cambio si alpha = 0.01, aceptamos la H0 -> sigma ^ 2 = 15 ^ 2, es decir 
# no haria falta revisar la traduccion de los documentos. (No aportan suficiente
# evidencia para afirmar sigma ^ 2 != 15 ^ 2.


# RECOMENDABLE REPETIR EXPERIMENTO PERO CON MAS MUESTRAS. pero con cuantas??

# P(aceptar Ha | sigma ^ 2 != 15 ^ 2)
# CON SIMULACIONES
# 1.- simular sigma ^ 2 != 15 ^ 2. elijo la mejor explicacion acerca de 
# sigma ^ 2 = 388.7
# 2.- calculo la prob de rechazar la Ha.

power_var_test <- function(n, H0_sigma2 = 15 ^ 2, true_sigma2 = 388.6902,
                           significance = 0.05, N = 5000) {
  sims <- replicate(N, {
    data <- rnorm(n, sd = sqrt(true_sigma2)) # datos donde la Ha es cierta
    var_stat <- (n - 1) * var(data) / 15 ^ 2
    p_value <-  2 * (1 - pchisq(var_stat, df = n - 1))
    p_value < significance  # TRUE si rechazo la H0 (acepto la Ha)
  })
  mean(sims)# --> 0.0074 --> P(acepatr HA | Ha es cierta (sigma ^ 2 = 388.6902))
}
power_var_test = Vectorize(power_var_test)
ns = seq(10, 80, by = 10)
power_values = power_var_test(ns) 

plot(ns, power_values, type = "o")
abline(h = 0.9, col = 2, lty = 2)

# SE NECESITAN 70 MUESTRAS PARA PODER CONSEGUIRLO.
