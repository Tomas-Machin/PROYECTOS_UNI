
# En cierto hospital, un 12% de los pacientes no acude a su cita. Si un equipo 
# médico es capaz de atender 100 personas en un día, 

# cuál es la probabilidad de que una/alguna persona se quede sin atender si se dan 
# 110 citas en un día.

  # X ~ pacientes q asisten
  # P(X > 100) --> 1 - P(X <= 100) --> 1 - F(100) 
  # asumiendo independencia --> B(110, 0.88)

  1 - pbinom(100, 110, 0.88) # --> 0.1366599

# ¿Cuántas citas se pueden dar sin que dicha probabilidad exceda el 5%?

  # X ~ B(n?, 0.88)
  # P(X > 100) <= 0..05
  sum((1 - pbinom(100, 1:110, 0.88)) <= 0.05)  #--> 108
  