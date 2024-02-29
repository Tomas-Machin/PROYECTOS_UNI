
## Según la estadísticas oficiales, la media de peso de las mujeres de cierto país
## es de 63.5 Kg (con desviación típica 4.1). Sin embargo, un equipo de 
## investigadores cree que debido a cambios en la alimentación la media se ha 
## incrementado. ¿Cuántas muestras necesitarán para poder detectar un incremento de
## medio Kg con un nivel de significación del 1\% y una potencia del 90\%? Usa 
## *power.t.test*.

power.t.test(
  delta = 0.5, # medio kg de incremento
  sd = 4.1, # en el enunciado
  sig.level = 0.01, # enunciado
  power = 0.9, # enunciado
  type = "one.sample",
  alternative = "one.sided"  # Ha: mu > 63.5kg
  )
# One-sample t test power calculation 
# 
# n = 877.9675  <------- Nº DE MUESTRAS Q TENDRIAMOS Q USAR
# delta = 0.5
# sd = 4.1
# sig.level = 0.01
# power = 0.9
# alternative = one.sided

