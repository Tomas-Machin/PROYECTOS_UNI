
## ¿De cuántas formas distintas pueden sentarse en 6 butacas consecutivas
## tres chicas y tres chicos, de forma que no haya dos chicas ni dos chicos
## consecutivos?

  # el orden importa: SI
  # todos los elementos son distintos

  # elijo si es chico o chica ----> 2
  # eligo chico para la 1º -------> 3
  # elijo chica para la 2º -------> 3
  # elijo chico para la 3º -------> 2
  # elijo chica para la 4º -------> 2
  # elijo ultimo chico -----------> 1
  # elijo ultima chica -----------> 1

  solucion = 2 * 3 * 3 * 2 * 2 * 1 * 1
  solucion   # ----> 72 formas
  
  ###########################################################################
  
  chicos = c("1", "2", "3")
  chicas = c("A", "B", "C")
  
  # 1.- elijo sexo primera posicion   ---> 2
  # 2.- reordeno chicos al azar ---------> 3!      
  # 3.- reordeno chicas al azar ---------> 3!
  
  # y basicamente es como antes
  
  
  
  
  
  