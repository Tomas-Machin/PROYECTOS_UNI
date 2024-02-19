
### EJERCICIO DE RAZONAMIENTO

# libreria = c(1:100)
# libreria
# libro = sample(libreria, 1)
# libro
# libreria[libro] = "X"
# libreria

primera_f = function(k, n){
  libreria = (1:n)
  libro = sample(libreria, 1)
  # libreria[libro] = "X"
  resultado = (factorial(k) / factorial(n - k))
  resultado
}

