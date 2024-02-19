# EJERCICIO 2.2

# APARTADO A.-
N = 5000
sims = replicate(N, {
  x = sample(0:20, 1)
  y = sample(0:20, 1)
  
  c = 1 / 5.182385
  if(x < 10 && y < 10){
    resultado = c * exp(-x * y)
  } else {
    0
  }
})
print(sum(sims) / N)

# APARTADO B.-
N = 5000
sims = replicate(N, {
  x = sample(0:20, 1)
  y = sample(0:20, 1)

  if(y == 2 * x){
    resultado = TRUE
  } else {
    FALSE
  }
})
print(sum(sims) / N)