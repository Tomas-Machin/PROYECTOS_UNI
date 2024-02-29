
## EJERCICIO 5 DEL PDF
# En una clase de estadıstica hay 6 alumnos de ADE y 4 informaticos. Los alumnos reciben un ranking
# dependiendo de su nota en un examen. Asumiendo que no hay notas repetidas,

# ¿Cuantos ranking posibles hay? 

  solucion = factorial(10) # 3628800

# ¿Cual es la probabilidad de que los 4 informaticos obtengan los 4 primeros puestos del
# ranking?
  
  N = 5000
  sims = replicate(N, {
    estudiantes = c(rep("ADE", 6), rep("I", 4))
    ranking = sample(estudiantes, 10)  
    ranking  
    
    all(ranking[1:4] == c(rep("I", 4)))
  })
  
  sum(sims) / N  # SOLUCION: 0.0042