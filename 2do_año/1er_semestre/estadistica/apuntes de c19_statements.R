
#ctrl + shift + c: seleccionas las lineas que quieras y las comenta

##notas ejercicio 1

#new_covid es un data.frame
#cambiar el nombre de las columnas:
colnames(new_covid)
colnames(new_covid)[6:7] = c("country", "cum_rate") #para cambiar el numbre de solo esas columnas

covid19[2,2] # en r se empieza a contar desde 1
covid19[2,c(2,3)] #puedo contatenar informacion para imprimir por pantalla
#todo es vecto asi q puedo usar vectores para indexar
covid19[1:nrow(covid19), 2] #accedemos a toda la columna 
covid19[ , 2] #igual q la anterior
covid19[, "day"]
covid19[, c("day", "year")] #los dos puntos solo se pueden usar en valores numericos


day = covid19$day #solo puede ponerse una pero accedes a esa informacion
day[3:5]

#ejercicio pablesco
#covid19[ , 1:10]
#covid19[ , seq(1, 10, by = 2)]
#covid19[3, ]


##notas ejercicio 2

notes = c(10, 9, 8, 4, 0)
notes > 5 #devuelve trues y falses para aquellos que cumplan y no la funcion
sum(notes > 5) #te dice la cantidad de trues que hay (los q cumplen la funcion)
#convierte trues a 1 y falses a 0 y los suma
notes[c(TRUE, FALSE, TRUE, FALSE, FALSE)] #dice que notas cumplen los trues y losfalses dan igual
notes[notes >= 5] #enseña las notas q cumplan la condicion
notes[notes < 5]
notes[(notes > 9) | (notes < 1)] #existen && y || (no funcionan con vectores)

#data = c(new_covid$country)
#new_covid[c("Spain","Portugal"), ]

#chorraco = new_covid$country == "Spain"
#new_covid[chorraco , ]
constant = rep(150, length(spain$time))
points(spain$time, constant,col = "red") #col es el color de los datos representado

