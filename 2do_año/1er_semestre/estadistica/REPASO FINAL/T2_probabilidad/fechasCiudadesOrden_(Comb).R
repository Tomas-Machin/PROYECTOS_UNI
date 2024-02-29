## Durante el mes de Enero, deseas viajar a las ciudades \textit{A, B, C, D} en este
## orden. ¿Cuántas formas distintas de viajar tienes?

  # el orden importa: SI 
  # importa el orden el q vas no el en el q salen los numeros

  # 1.- elijo dia para la ciudad A ----> 1:28
  # 2.- elijo dia para la ciudad B ----> A:29
  # 3.- elijo dia para la ciudad C ----> B:30
  # 4.- elijo dia para la ciudad D ----> C:31
  
  solucion = choose(31, 4)
  solucion # --> 31465
  
  sort(sample(1:31, 4))    # el sort te ordena los numero q salen de menos a mayor
      
  