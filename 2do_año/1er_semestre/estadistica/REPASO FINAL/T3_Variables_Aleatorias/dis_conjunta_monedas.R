
# Se lanza una moneda $n$ veces (prob. de cara es $p$). Considera las VAs X:
# ''nº de caras'' e  Y: ''nº de caras iniciales (antes de la primera cruz o del fin
# del experimento)''. Halla la distribución conjunta para cualquier $n$ y $p$ y
# luego particulariza para $n=4$,$p=0.5$.

  p_xy = function(x, y, n, p){    # no esta adecuadamente vectorizado por el if
    if(y == n){
      p ^ n
    } else {
      choose(n - (y + 1), x - y) * p ^ x * (1 - p) ^ (n - x)
    }
  }
  
  # vectorizar a mano: 
  ifelse(c(TRUE, FALSE, TRUE), c(1, 2, 3), c(-1, -2, -3)) 
  # chorraco, q debe hacer cuando hay TRUE y luego cunado hay FALSE
  # cuando hay TRUE devuelve 1 o 2 o 3, y si sale FALSE un -1 o -2 o -3
  
  # SALIDA DEL IFELSE: ---> 1 -2  3
  # TRUE  FALSE  TRUE
  #   1    -2     3
  
  p_xy = function(x, y, n, p){    # FUNCION YA VECTORIZADA
    ifelse(
      (y == n),   # condicion
      p ^ n,      # q hacer cuando es true
      choose(n - (y + 1), x - y) * p ^ x * (1 - p) ^ (n - x)  # cuando es false
    )
  }
  
  p_xy(0:1, 0, 5 , 0.5)
  
  # si x o y tienen longitudes distintas:
  p_xy = function(x, y, n, p){    # FUNCION YA VECTORIZADA
    ifelse(
      (y == n) | (x == n), # condicion (dos condiciones para q coja la de mayor tamaño)
      p ^ n,      # q hacer cuando es true
      choose(n - (y + 1), x - y) * p ^ x * (1 - p) ^ (n - x)  # cuando es false
    )
  }
 
  p_xy(0:1, 0, 5 , 0.5)  # 0.03125 0.12500
  
  # n = 4, p = 0.5
  x = 0:4
  y = 0:4
  
  pv = outer(x, y, p_xy, n = 4, p = 0.5) # recive un vector de xs, de ys, una funcion
                                    # ademas de los parametros q falten
  #        [,1]   [,2]   [,3]   [,4]   [,5]
  # [1,] 0.0625 0.0000 0.0000 0.0000 0.0625       # mal pq la columna 5
  # [2,] 0.1875 0.0625 0.0000 0.0000 0.0625       # tiene q ser todos 0
  # [3,] 0.1875 0.1250 0.0625 0.0000 0.0625
  # [4,] 0.0625 0.0625 0.0625 0.0625 0.0625
  # [5,] 0.0625 0.0625 0.0625 0.0625 0.0625
  
  rownames(pv) = paste("X =", x)
  colnames(pv) = paste("Y =", y)
  pv
  
  #        Y = 0  Y = 1  Y = 2  Y = 3  Y = 4
  # X = 0 0.0625 0.0000 0.0000 0.0000 0.0625
  # X = 1 0.1875 0.0625 0.0000 0.0000 0.0625       # para Y = 4 mal pq
  # X = 2 0.1875 0.1250 0.0625 0.0000 0.0625       # tiene q ser todos 0
  # X = 3 0.0625 0.0625 0.0625 0.0625 0.0625
  # X = 4 0.0625 0.0625 0.0625 0.0625 0.0625

  # CORRECION DE FUNCION p_xy
  p_xy = function(x, y, n, p){    # FUNCION YA VECTORIZADA
    ifelse(
      (y == n) & (x == n), # condicion (dos condiciones para q coja la de mayor tamaño)
      p ^ n,      # q hacer cuando es true
      choose(n - (y + 1), x - y) * p ^ x * (1 - p) ^ (n - x)  # cuando es false
    )
  }
  
  pv = outer(x, y, p_xy, n = 4, p = 0.5)
  rownames(pv) = paste("X =", x)
  colnames(pv) = paste("Y =", y)
  pv
  sum(pv) # check recomendado q tiene q dar 1
  
  #        Y = 0  Y = 1  Y = 2  Y = 3  Y = 4
  # X = 0 0.0625 0.0000 0.0000 0.0000 0.0000
  # X = 1 0.1875 0.0625 0.0000 0.0000 0.0000
  # X = 2 0.1875 0.1250 0.0625 0.0000 0.0000
  # X = 3 0.0625 0.0625 0.0625 0.0625 0.0000
  # X = 4 0.0000 0.0000 0.0000 0.0000 0.0625
  