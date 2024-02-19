# POR SIMULACIONES

# existen dos urnas. Primera hay dos blancas y una negra y en la segunda hay
# una blanca y tres negras. Se lanza una moneda, si sale cara cogemos de la 
# primera urna

  # 1.- GENERAR UNA FUNCION Q SIMULE CUALQUIER CASO:

  urna_c = c(rep("B", 2), "N")
  urna_x = c(rep("N", 3), "B")
  moneda = c("C", "X")

  sim_all = function(){
    tirada = sample(moneda, 1)
    tirada
    if(tirada == "C"){
      bola = sample(urna_c, 1)
    } else {
      bola = sample(urna_x, 1)
    }
    c(tirada, bola)
  }
  
# ¿prob de negra?

  # 2.- COMPROBAR SI HAY EXITO O NO
  
  N = 5000
  sims = replicate(N, {
    sim = sim_all()
    sim == "N"
  })
  
  # 3.- APLICAR LAPLACE:  (deberia dar mas o menos 13/ 24 )
  
  sum(sims) / N   # SOLUCION: 0.5454
    
      
# ¿prob de cara si ha salido negra?
  
  
  N = 5000
  sims_2 = replicate(N, {
    sim_2 = sim_all()
    cond1 = (sim_2[1] == "C") & (sim_2[2] == "N")
    cond2 = sim_2[2] == "N"
    c(cond1, cond2)
  })
  
  numerador = sum(sims_2[1, ])         # TODAS LAS cond1
  denominador = sum(sims_2[2, ])       # TODAS LAS cond2
  resultado = numerador / denominador  # prob condicionada (formula)
  resultado   # SOLUCION: 0.3084633
  
  
  
  
  
  
  
  