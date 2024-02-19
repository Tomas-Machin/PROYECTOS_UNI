demo = function(x){
  x = 1
  x
}
# java: paso por referencia, lo que cambia dentro, cambia fuera
# R: paso por copia, lo que cambia dentro, NO cambia fuera
x = 5
demo(x)
print(x)