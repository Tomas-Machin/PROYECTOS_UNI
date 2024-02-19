
library(readr)

#' Section 1: Reading data, data types and indexing
#' =============================================================================
#' * Motivating problem: Download Covid-19 data by country and compare the cumulative
#' number of infections between two different countries.
#' * Topics: data types
#' * Section: "Beyond numbers and data types"-"Formulas" (included)
#' 


#' ### Exercise 1
#' Load data, and create a new data.frame with the following columns:
#' day, month, year, cases, deaths, countriesAndTerritories, Cumulative...
#' Also, since the names are quite long, rename the latest two to 'country' and
#' 'cum_rate'. Tip: do not write all the names! Get the old ones and then override
#' just the latest two.
#' 


# #' comentario de varias lineas

#covid 19 es un data.frame: matriz con tipos de datos distintos
covid19 <- read_csv("covid19.csv")
# View(covid19)

new_covid = covid19[, c("day","month","year","cases","deaths","countriesAndTerritories",
                        "Cumulative_number_for_14_days_of_COVID.19_cases_per_100000")]

colnames(new_covid) = c("day","month","year","cases","deaths","country",
                        "cum_rate") #nombres actuales de las columnas


#' ### Exercise 2
#' Since we want to plot number of cases against time we need a new column.
#' Why? Consider which variable should be used for the x-axis of the plot,
#' day?, month?, year?. Only using one of these variables will not work.
#' We must use these three variables to create a new variable named 'time' 
#' that approximately counts the number of days since the beginning of 2019. 
#' Use the formula: day + (month - 1) * 30 + (year - 2019) * 365
#' (there is an exact and simple way of transforming dates to numbers, but this
#' is not the point of the exercise). Then eliminate day, month and year from the
#' resulting data.frame
#' 
#data = read.csv("https://opendata.ecdc.europa.eu/covid19/casedistribution/csv",na.strings = "", fileEncoding = "UTF-8-BOM")

covid19$day + (covid19$month - 1) * 30 + (covid19$year - 2019) * 365
with(
  covid19,
  day + (month - 1) * 30 + (year - 2019) * 365
)
#añadir una columna
new_covid$time = new_covid$day + (new_covid$month - 1) * 30 + (new_covid$year - 2019) * 365
new_covid$day = NULL #forma de eliminar una columna
#new_covid[ , -1] #el -1 elimina la primera columna
new_covid = new_covid[, c(-1,-2)] #elimina las dos primeras columnas

#' Section 2: logical indexing and plots
#' =============================================================================
#' * Motivating problem: Let's plot the 'cum_rate' variable against time for several
#' countries (Let's say Spain and Portugal), so we can compare their epidemiological 
#' situation
#' * Topics: logicals and logical indexing, plots
#' * Sections: Beyond numbers-formulas (both included), Simple graphics in R
#' 

#' ### Exercise 3 
#' plot the 'cum_rate' variable against 'time' for both Spain and Portugal. Proceed
#' as follows:
#' 1) create a data.frame with the data from Spain (name it 'spain') and then 
#' create another one from Portugal ('portugal').
#' 2) Use the plot function.
#' 



spain = new_covid[new_covid$country == "Spain" , ]
portugal = new_covid[new_covid$country == "Portugal" , ]

plot(spain$time, spain$cum_rate, type = "l",
     xlab = "Time (day since 1/1/2019)",
     ylab = "cumulative inf. rate",
     main =  "covid 19 pandemic")
     #ylim = c(0, 500))

points(portugal$time, portugal$cum_rate, col = "green", type = "l") 
legend("topleft", c("spain", "portugal"), col = c("black", "red"), lty = 1)



#' Section 3: loops 
#' =============================================================================
#' * Motivating problem: Let's plot the 'cum_rate' variable against 'time' for a large
#' list of countries without duplicating code! 
#' situation
#' * Topics: loops
#' * Sections: Programming
#' 

#' ### Exercise 4 
#' Let's plot the 'cum_rate' variable against 'time' for 
#' the following countries: Spain, Portugal, Italy, France and Germany. You must
#' use a for/while loop!
#' 

countries = c("Spain", "Portugal", "Italy", "France", "Germany") #puedo añadir un pais pero el el for tendre que poner [1] 
                                                                # y en la V2 en el if tendria que poner = countries[1]
#crear codigo para spain (plot)

plot(spain$time, spain$cum_rate, type = "l",
     xlab = "Time (day since 1/1/2019)",
     ylab = "cumulative inf. rate",
     main =  "covid 19 pandemic",
     ylim = c(0, 250
              )
     )
i=2

for(country in countries[-1]) {
  #crear codigo para el resto de paises (points)
  #filtrar para cada pais
  #para ir cambiando el color en el bucle:
  #points(...., col = i) y poner un contador para que vaya actualizandose la i
  pais = new_covid[new_covid$country == country, ]
  points(pais$time, pais$cum_rate, col = i, type = "l") 
  i = i + 1
}
legend("topleft", countries, col = 1:5, lty = 1) #en vez de concatenar puedo poner directamente coutries

#legend("topleft", countries, legend = cuontries, 1:length(countries), lty = 1)

##VERSION 2 CON BUCLES
# for(country in countries[-1]) {
#   #crear codigo para el resto de paises (points)
#   #filtrar para cada pais
#   #para ir cambiando el color en el bucle:
#   #points(...., col = i) y poner un contador para que vaya actualizandose la i
#   
#   if(country == "spain"){
#     plot(spain$time, spain$cum_rate, type = "l",
#          xlab = "Time (day since 1/1/2019)",
#          ylab = "cumulative inf. rate",
#          main =  "covid 19 pandemic",
#          ylim = c(0, 250
#          )
#     )
#   } else {
#     pais = new_covid[new_covid$country == country, ]
#   points(pais$time, pais$cum_rate, col = i, type = "l") 
#   }
#   i = i + 1
# }

#' Section 4: functions, packages and scoping
#' =============================================================================
#' * Motivating problem: Let's calculate the total number of cases since the 
#' beginning of data collection for the previous countries. This should be stored
#' in a new data.frame/vector. Then, let's print the information using some ASCII art.
#' * Topics: functions, scoping, packages, apply
#' * Sections: Functions, packages, scoping
#' 

#my_sum = function(x, y){ #puedo poner valores por defecto (y = 1)
#  z = x + y #no debe ser una asignacion que devuelva algo no hace eso
#  z # es igual a return(z) 
#}

#my_sum(3, 4)
#my_sum(3) #si he puesto valores por defecto en la funcion este numero (3) se le sumara el valor de y q tenga por defecto

#' ### Exercise 5 
#' Use a function and sapply to calculate the total number of cases since the 
#' beginning of data collection for the previous countries. This should be stored
#' in a new data.frame/vector. Then, print the information for each country,
#' using the say function from package 'cowsay' so that information is given 
#' by a shark (you must look at the documentation!)
#' 

count_by_country = function(df, country){ #df = data.frame
  #devuelve el numero total de casos por pais
  temporal = df[df$country == country, ]
  sum(temporal$cases)
  #temporal(new_covid, "Spain")
}

cases_by_country = c()

for(country in countries){  #mas parecidos al for each de java
  current_cases = count_by_country(new_covid, country)
  cases_by_country = c(cases_by_country, current_cases)
  print(cases_by_country)
}

names(cases_by_country) = countries
cases_by_country

cases_by_country[3:5]
cases_by_country["Germany"]
  
# programacion funcional --> todo con funciones (todo deberia hacerse con funciones)
# forma mas resumida de hacerlo
sapply(countries, count_by_country, df = new_covid)
#funciones lambda
# sapply(
#   countries,
#   function(country){
#     temporal = new_covid[new_covid$countries == country, ]
#     sum(temporal$cases)
#   }
# )

# vamos a instalar cowsay (liberia)
#install.packages("cowsay") : ejecutarlo solo una vez o se instalara continuamente

cowsay::say("Hello World")

library("cowsay") #cargar la libreria
say("Hello World", by = random) #?say para cambiar las especificaciones que salen

# install.packages("tidyverse") : instalar en casa



