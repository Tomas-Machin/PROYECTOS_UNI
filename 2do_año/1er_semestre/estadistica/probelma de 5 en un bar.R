#' Enunciado
#' En un bar5 amigos han pedido 3 cafes con leche y 2 cañas
#' ¿de cuantas formas pueden repartirse las bebidas?

# tino sera la posicion uno y la salida para gauss la dos
c("cana", "cafe", "cafe")
##c("cafe", "caña")  #son distintos por lo q el orden importa 
# si el orden importa: si
# si hay elementos repetidos: si
# 5! / (3! 2!)

## quien se toma cafe:
# elegir de entre 5 nº, 3, y estos representan  a las personas que toman cafe
choose(5, 3)