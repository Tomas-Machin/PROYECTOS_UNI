
# Sea la VA X: "nº de caras en n lanzamientos de una moneda
# cuya probabilidad de cara es p". Estudia su distribución para el caso
# $p=1/2$, $n=100$ mediante la función de probabilidad.

  p_heads = function(x, n, p){
    choose(n, x) * p ^ x * (1 - p) ^ (n - x)
  }
  
  p_heads(2, 5, 0.3)
  
  all_probs = p_heads(1:100, 100, 0.5)
  plot(all_probs, type = "h", 
       xlab = "x: nº de caras",
       ylab = "P(X = x)")
  