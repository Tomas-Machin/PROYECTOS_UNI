
# sacar 25 caras de 50 tiradas por simulaciones

sim_tirada = function(){
  sample(c("CARA", "CRUZ"), 50, replace = TRUE)
  
}

# comprobar si es un caso exitoso (25 caras)
event = sim_all()
sum(event == "CARA")

N = 5000
exitos = replicate(N, { 
  event = sim_tirada()
  n_caras = sum(event == "CARA")
  n_caras == 25
})

sum(exitos) / N   # <------------ SOLUCION: 0.1126

