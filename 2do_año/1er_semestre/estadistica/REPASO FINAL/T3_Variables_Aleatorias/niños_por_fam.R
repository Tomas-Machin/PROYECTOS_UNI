
## De 2000 familias con 4 niñ@s cada una, cuántos te esperarías que tuviesen

# X ~ nº de niños en una fam
# Y ~ nº de fams con al menos un niño

## a) al menos 1 niño (masculino) 

  # E[Y]? 
  # Y ~ B(2000, P(X >= 1)) = 1 - P(X = 0)
  # X ~ B(4, 0.5)  --> ASUNCION LOGICA DE 50% DE POSIBILIDAD DE NIÑO O NIÑA
  
  # n * p (siendo el tope de la distr. y p la prob. de exito)
  # E_y = 2000 * P(X >= 1) --> 2000 * (1 - P(X < 1)) --> 2000 * (1 - P(X <= 0)) --> 
  # --> 2000 * (1 - F(0)) --> 2000 * (1 - P(0))
  
  # B(2000, P(X >= 1)) = 1 - P(X = 0)
  1 - dbinom(0, 4, 0.5) # --> 0.9375
  E_y = 2000 * 0.9375  # --> 1875


## b) 2 niñas.
  
  # POR SIMULACIONES:  ( rbinom(mº de sims q queremos, tope, prob. de exito) )
  # Y ~ B(2000, P(X = 2))
  # X ~ B(4, 0.5)
  
  # P(X = 2) por simulaciones:
  N = 5000
  n_girls = rbinom(N, 4, 0.5)
  p_success = sum(n_girls == 2) / N  # --> 0.3968
  
  
  # problema de la esperanza por simulaciones:
  # E[Y]
  mean(
    rbinom(N, 2000, p_success)
  )  # --> 773.4806
  