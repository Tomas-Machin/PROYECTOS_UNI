
## Un producto homeopático afirma que "gracias a su uso, perderás **al menos** 2 Kg 
## en dos semanas"... ¿Es creíble esta afirmación?

# 1.-
  # H0: mu >= 2      (da igual donde poner las igualdades)
  # Ha: mu < 2

# 2.- hayar estadistico, cuyas distr. conozcamos:
# ASUNCIONES: (todo si pq seguimos con los mismos datos)
  #  - NORMALIDAD
  #  M.A.S/POB. INF. 

# (X - mu) / (sd / sqrt(n)) ~ T_(n - 1)
my_test = t.test(homeo_weight_loss$weight_loss_Kg, mu = 2, alternative = "less") 
# siempre se pone de la alternativa, como dice el parametro
my_test$p.value  # --> 1.602736e-06

# aceptamos Ha: los datos apoyan q la perdida de peso es menor q 2 kg. la 
#               afiracion del homeopata no se sostiene.

pt(t_contraste, 49)  # --> 1.602736e-06 (NO HACE FALTA x2)
# t_contraste en homeo.R 