
## En un bar, cinco amigos han pedido tres cafés con leche y dos cañas. ¿De cuántas formas
## pueden repartirse las bebidas?
  
# -> si el orden importa: SI
# -> si hay elementos repetidos: SI

# problema BITS o MISSISSIPPI? -> MISSISSIPPI

solucion = factorial(5) / (factorial(3) * factorial(2))
solucion  # --> 10

# tambien es una combinacion sin importar el orden = choose(5, 3) --> 10
