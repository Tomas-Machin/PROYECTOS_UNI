### DISTRIBUCIONES NOTABLES

# EJERCICIOS DIAPO 11

# En cierto hospital, un 12 % de los pacientes no acude a su cita. Si un equipo
# medico es capaz de atender 100 personas en un dıa, cual es la probabilidad de
# que una persona se quede sin atender si se dan 110 citas en un dıa. ¿Cuantas
# citas se pueden dar sin que dicha probabilidad exceda el 5 %?
 
  ### A.-
  #' X = num de personas atendidas --- IGUAL Q LA Z
  #' Y = citas en un dia ------------- MAL
  #' Z = personas sin atender -------- MAL
  #' W = personas q asisten ---------- BIEN

  #' PREGUNTA = P(W > 100)
  #'   ASUMIENDO INDEPENDENCIA
  #' W ~ Binom(110, 0.88)
  #' P(W > 100) = 1 - P(W <= 100) = 1 - F(100) = 1 - pbinom(100, 110, 0.88) ----> ~0.1366599
  
  ### B.-
  #`n = num de citas`
  #' W ~ B(n, 0.88)
  #' P(W > 100) <= 0.05
  #' 1 - pbinom(100, n, 0.88) <= 0.05     crear un vector de n para ir comprobando la prob
n = 1:110
vector = 1 - pbinom(100, n, 0.88) <= 0.05
solucion = sum(vector)
solucion 

# De 2000 familias con 4 ninos cada una, cuantos te esperarıas que tuviesen a) al
# menos 1 nino (masculino) y b) 2 ninas

  #### A.-
  #' X = num de niños en una familia de 4
  #' X ~ B(4, 0.5)

  #' Y = numde familias con al menos 1 niño
  #' Y ~ B(2000, P(X >= 1))

  #' PREGUNTA = ¿E[Y]? 

  #' E[Y] = 2000 * P(X >= 1)
  #' P(X >= 1) = 1 - P(X < 1) = 1 - P(X <= 0) = 1 - F(0) = 1 - P(0)     #' F(x) = P(X <= x)
  #' P(X <= 1) = 1 - P(X = 0) = 1 - dbinom(0, 4, 0.5) ---> 0.9375
  #' E[Y] = 2000 * 0.9375 ---> ~ 1875 

  ### B.-
  #' X = num de niñas por familia de 4 niñ@s
  #' Y = num de familias con 2 niñas
  
  #' X ~ Binom(4, 0.5)
  #' Y ~ Binom(2000, P(X = 2))

  # P(X = 2)  por simulaciones
N = 5000
n_girls = rbinom(N, size = 4, prob = 0.5)
n_girls == 2
resultado = sum(n_girls == 2) / N
resultado  # ---->  0.3716

  # problemas de la esperanza (E[Y]) por simulaciones
mean(rbinom(N, size = 2000, resultado))  # ----> 743.2876

# Un enfermero necesita 10 radiografıas de la pierna de un nino. Hay un 70 % de
# probabilidad de que el nino este quieto durante la prueba. ¿Cual es la
# probabilidad de que se necesiten mas de 15 pruebas?



