## Un alumno tiene 10 libros: 4 de mates, 3 de programación, 2 de historia y uno
## de inglés. ¿De cuántas formas se pueden ordenar los libros si el alumno quiere
## mantenerlos agrupados por temática?

  # orden de grupos de libreos = factorial(4)
  
  factorial(4) * factorial(4) * factorial(3) * factorial(2) * factorial(1)
  #  orden     *   mates      *   progra     *  historia    *  ingles