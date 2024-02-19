  
## TEST TEMA 3:

  # RESPUESTAS: 1.-[20], 2.-[0.7611], 3.-[0.2038], 4.-[0.5674], 5.-[7.0]

# El número medio de pacientes que llega a las urgencias de cierto hospital es 50
# personas. Cada paciente tiene probabilidad 0.25 de requerir hospitalización. 
# Calcula mediante simulaciones cuántas camas debe tener el hospital para que la 
# probabilidad de que algún paciente se quede sin cama sea menor que 0.015.
  # POSIBLES RESPUESTAS: [21] [22] [20] [19]

  # media de pacientes: 50
  # X ~ numero de camas 

  sim_all = function(){
    # todos los pacientes (la media) son hospitalizados
    # se cumple: 50 * 0.25 ---> 12.5% q si o si se quedan
      # N = 5000
      # sum(rbinom(N, 50, 0.25)) / N
    50
  }
  
  sim_fav = function(){
    x = 1:100
    dnbinom(x, 50, 0.25)
  }
  
  # RESPUESTA: [20]

# Si tomas la píldora roja, el próximo invierno tendrás, de media, 1 resfriado. 
# Si tomas la pastilla azul, el número medio  de resfriados será 4. La elección 
# de la pastilla es aleatoria y equiprobable. Supongamos que el próximo invierno 
# tienes 3 resfriados. ¿Cuál es la probabilidad de que hayas tomado la pastilla
# azul?
    # POSIBLES RESPUESTAS: [0.0320] [0.3806] [0.1954] [0.7611]

  pastillas = c(0, 1)  # (0) roja = 1 resfriado / (1) azul = 4 resfriados (de media)
  sample(pastillas, 1)
  # X ~ numero de resfriados (diria yo)
  # En caso concreto: X = 3.
  # prob(azul)?
  # condicional (diria ori y yo)
  # P(AZUL | 3 resfis) = P(AZUL, 3 resfis) / P(3 resfis)
    # p(3 resfis)?
  n = rpois(x, 3)
  # sum(n == 3) / 5000
  # juntar vectores y hacer matriz y marginalizar
  
  
## otro: igual q el de las impresoras
  0.5 * dpois(3, 4) /(0.5 * dpois(3, 4) +  0.5 * dpois(3, 1))
  
  # RESPUESTA: [0.7611]
  
  
# La instalación de algún paquete de software requiere la descarga de 82 archivos.
# En promedio, se tarda 15 segundos en descargar un archivo, con una varianza de 
# 16 segundos^2. La distribución del tiempo de descarga es acampanada y simétrica.
# ¿Cuál es la probabilidad de que el software se instale en menos de 20 minutos?
    # POSIBLES RESPUESTAS: [0.4636] [0.4909] [0.2038] [0.3571]

  # X ~ tiempo de descarga
  #' P(X < 20) = P(Z < (20 - 20.5) / 4) = P(Z < -0.125) = ??
  #' pnorm(-0.125)
  pnorm(20 * 60, 15 * 82, 4 * sqrt(82))
  
  # RESPUESTA: [0.2038]

# Un laboratorio de computación tiene dos impresoras. La impresora I maneja el 
# 40% de todos los trabajos. Su tiempo de impresión es exponencial con una media 
# de 2 minutos. La impresora II maneja el 60% restante de los trabajos. Su tiempo 
# de impresión es uniforme entre 0 minutos y 5 minutos. Se imprime un trabajo en 
# menos de 1 minuto. ¿Cuál es la probabilidad de que haya sido impreso por la 
# impresora I?
    # POSIBLES RESPUESTAS: [0.4112] [0.5674] [0.6630] [0.3934]
  
  # prob de impresoras: 0.4 y 0.6
  # I ~ exponencial, mu: 2min (media = 1 / lambda) ---> lambda = 0.5
  # II ~ dist. uniforme, parametros: 0, 5min
  # condiconal
  # P(X = x | Y = y) = P(X, Y) / P(Y) 
  # P( I | X < 1) = P(X < 1 inters, impresora I) * P(X < 1)
  
  # plantearlo en forma de arbol.
  
## con ori
  # X ~ tiempo de impresion (para x = 1)
  0.6 * punif(1, 0, 5)
  0.4 * pexp(1, 0.5) /(0.4 * pexp(1, 0.5) +  0.6 * punif(1, 0, 5))
  
   
  # RESPUESTA: [0.5674]

# Cierta computadora se encarga del envío de mensajes militares desde un submarino. 
# Debido a las condiciones extremas en las que opera el submarino, un mensaje no 
# llega a su destino con probabilidad 0.7. Por otra parte, y para asegurarse que 
# el contenido del mensaje es correcto, es necesario recibir 3 veces el mensaje 
# para considerar una transmisión como exitosa. ¿Cuál es el número esperado de 
# mensajes fallidos hasta conseguir una transmisión exitosa?
    # POSIBLES RESPUESTAS: [5] [1.3] [7.0] [2.1]

  # CON MORAGON:
  # VA discreta: de esas es la binom neg pq cuento fallos hasta el r exito
  n = 1000
  sum(rnbinom(n, 3, 0.3))  / n  # media no se sabe
  # esperanza? ---> sum(xP(x))
  
  
  # MI MANERA:
  mensaje = c(rep("exito", 3), rep("fallido", 7))
  exitos = c()
  fallos = c()
  
  trans = sample(mensaje, 1)
  # if(exitos == c(rep("exito", 3))){
  #   sum(fallos)
  # } else{
  if(trans == "exito"){
    exitos = c(exitos, trans)
  } else{
    fallos = c(fallos, trans)
  }
  #}
  exitos
  # if(exitos == c(rep("exito", 3))){
    sum(fallos == "fallido")
  # }
  
    # RESPUESTA: [7.0]
  