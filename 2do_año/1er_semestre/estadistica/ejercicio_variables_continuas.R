# ejercicio variables continuas

#' un call-center recibe llamadas durante todo el dia. el tiempo T (en min) 
#' entre llamadas se modela la siguiente funcion de densidad:
#'        {  c * e ^ (-t / 4.5)  0 <= t < inf
#' f(x) = {
#'        {  0  en otro caso (e.o.c)   (en otro caso)
#'        
#' 1.- dibuja la funcion de densidad
 
f <- function(t){
  exp(-t / 4.5)
}


integral_result = integrate(f, 0, Inf)
print(integral_result$value)

#' 2.- acabar de llegar un llamada. ¿cual es la prob de q no se reciba ninguna
#' llamada en los proximos 5 mins?