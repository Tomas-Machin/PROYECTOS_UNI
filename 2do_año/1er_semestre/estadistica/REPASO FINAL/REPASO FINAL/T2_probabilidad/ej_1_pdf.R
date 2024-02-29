
## EJERCICIO 1 DEL PDF:
# La combinacion de una caja fuerte consiste en 5 cifras distintas 

# ¿Cuantas combinaciones tendras que probar como maximo para abrirla?

  numeros = c(1:9)
  combinacion = sample(numeros, 5, replace = TRUE)
  combinacion
  
  # _ _ _ _ _
  # 9 8 7 6 5
  
  solucion = 10 * 9 * 8 * 7 * 6    # ---> 30240
  
# ¿Y si cada cifra solo tuviese que ser distinta de la anterior? 

  # _ _ _ _ _
  # 9 8 8 8 8
  
  solucion = 10 * 9 * 9 * 9 * 9   # ---> 65610

# ¿Y si pudieses repetir cualquier cifra?

  # combianciones --> 0:99999 = 1 (todo 0) + 99999 = 100000
  solucion = 100000
