#' EJERCICIO DIAPO 32
#' ENUNCIADOS:
 
# Tres hermanos van a comer a casa de su abuelita. El 99.7 % de las veces, cada
# hermano come una cantidad de comida comprendida entre 1.2 y 1.8 Kg. ¿Cual
# es la probabilidad de que logren acabar los 5 Kg de carne que su abuela ha
# preparado?
  
  #' X = kilos de carne comidos (en total)
  #' X1 = kilso de carne comidos por el hermano 1
  #' X2 = kilso de carne comidos por el hermano 2
  #' X3 = kilso de carne comidos por el hermano 3
  
  #' X = X1 + X2 + X3
  #' PREGUNTA: P(X >= 5) como estamos en continua da igual poner el =
  
  #' Xi ~ (distribucion normal) N(1.5, sigma = 0.1)   1.(1.5 = (1.8 + 1.2) / 2)
  #'                                                 2. regla del 99.7 y demas --> desv. tipica = 0.1 (30 = 0.3 <- 1.5 + 30 = 1.8)
  #' X ~ (asuminedo independencia(razonable)) N(4.5, desv = raiz(3 * 0.1))
  #' solucion = P(X > 5) = 1 - P(X <= 5) = 1- F(5) (funcion de densidad acumulada/funcion de distribucion)
  #'          = 1 - pnorm(5, 4.5, sd = sqrt(3) * 0.1) ---->  0.001946209
    
# Has programado un robot asesino para acabar con tu profesor de estadıstica. El
# robot dispara al centro de su frıo corazon, pero comete un error
# aproximadamente normal en cada una de las coordenadas x e y. La media de
# ambas normales es 0 y tiene desviacion tıpica 5 cm. ¿Cual es la probabilidad de
# que el disparo acabe a menos de 1 cm del centro del corazon? Resuelve por
# simulaciones

  #' D = distancia al centro del corazon        
  #' X = distancia al corazon en eje x (error)  X ~ N(0, sigma = 5cm)
  #' Y = distancia al corazon en eje y (error)  Y ~ N(0, sigma = 5cm)
  
  #' PREGUNTA: P(D < 1cm)  D = sqrt(X ^ 2 + Y ^ 2)
  #' asumismos independencia entre VA
N = 5000
x = rnorm(N, 0, sd = 5)
y = rnorm(N, 0, sd = 5)
d = sqrt(x ^ 2 + y ^ 2)
sum(d < 1) / N

