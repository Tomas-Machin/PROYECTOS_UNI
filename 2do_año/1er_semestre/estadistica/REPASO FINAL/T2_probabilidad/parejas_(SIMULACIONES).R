# Se extraen tres cartas de una baraja española.
# ¿Cuál es la probabilidad de obtener una pareja (dos cartas del mismo valor)?

    # baraja = paste(1:10, rep(c("B", "C", "E", "O"), each = 10))
    
    # trial = sample(baraja, 3)

# separador de strings: el q queremos separar y sobre q referencia
    # strsplit(trial, " ")  

# me quiero quedar con el primer elemento del vetor

### (MANERA DIFICIL)

# funcion q recive un vector y obtiene el primero
    # numeros = sapply(strsplit(trial, " "), function(vec) vec[1])   

### (MANERA FACIL?)
# purr::map(strsplit(trial, " "), n)  # n es un numero, este es: el n elemento q haya en la lista

# table cuenta cuantas veces ocurre un evento
      # counts = table(numeros)  
# compruebas q salen solo 2 tipos de cartas y asi sabes q hay una pareja
      # length(counts) == 2
## mas comprobaciones:
      # (length(counts) == 2) && (all(counts == c(1, 2)) || all(counts == c(2, 1)))

### RESOLUCION FINAL:

N = 5000
cositas = replicate(N, {
  baraja = paste(1:10, rep(c("B", "C", "E", "O"), each = 10))
  trial = sample(baraja, 3)
  numeros = sapply(strsplit(trial, " "), function(vec) vec[1])
  counts = table(numeros)
  (length(counts) == 2) && (all(counts == c(1, 2)) || all(counts == c(2, 1)))
})

sum(cositas) / N   # <--------- SOLUCION: 0.2162
