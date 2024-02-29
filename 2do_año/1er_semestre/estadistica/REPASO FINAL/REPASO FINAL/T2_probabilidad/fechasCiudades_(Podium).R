## El próximo Enero vas a visitar las ciudades \textit{A, B, C, D}.
## Si cada visita requiere un día ¿De cuántas formas distintas puedes programar
## tus viajes?

  # importa el orden: SI
  # como el problema del PODIUM

  # elijo q dia visito la ciudad -> 4 numeros diferentes
  dias = sample(1:31, 4)
  
  # 1.- elijo un nº para la ciudad A ---> 31
  # 2.- elijo un nº para la ciudad B ---> 30
  # 3.- elijo un nº para la ciudad C ---> 29
  # 4.- elijo un nº para la ciudad D ---> 28
  
  solucion = 31 * 30* 29 * 28
  solucion # ---> 755160
  
  
  