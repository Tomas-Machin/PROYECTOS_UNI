#' Section 1: Reading data, data types and indexing
#' =============================================================================
#' * Motivating problem: Download Covid-19 data by country and compare the cumulative
#' number of infections between two different countries.
#' * Topics: data types
#' * Section: "Beyond numbers and data types"-"Formulas" (included)
#' 

#' ### Exercise 1
#' Load data, and create a new data.frame with the following columns:
#' day, moth, year, cases, deaths, contriesAndTerritories, Cumulative...
#' Also, since the names are quite long, rename the latest two to 'country' and
#' 'cum_rate'. Tip: do not write all the names! Get the old ones and then override
#' just the latest two.
#' 

  library(readr)
  covid19 <- read_csv("covid19.csv")
  # View(covid19)
  
  new_covid = covid19[ , c("day", "month", "year", "cases", "deaths", "countriesAndTerritories",
                  "Cumulative_number_for_14_days_of_COVID.19_cases_per_100000")]
  colnames(new_covid) = c("day", "month", "year", "cases", "deaths", "country",
                          "Cum_rate")
  
      
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
# data = read.csv("https://opendata.ecdc.europa.eu/covid19/casedistribution/csv",
                # na.strings = "", fileEncoding = "UTF-8-BOM")

  new_covid$time = new_covid$day + (new_covid$month - 1) * 30 + (new_covid$year - 2019) * 365
  new_covid$year = NULL # elimina la comuna indicada
  new_covid = new_covid[, c(-1, -2)] # borrar columnas 1 y 2


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

  # chorraco = new_covid$country == "Spain"
  # new_covid[chorraco, ]
  spain = new_covid[new_covid$country == "Spain", ]
  plot(spain$time, spain$Cum_rate, type = "l",
       xlab = "time (days since 1/1/2019)",
       ylab = "cumulative inf. rate",
       main = "covid 19 pandemic")
  # points(spain$time, rep(150, length(spain$time)), type = "l", col = "red")
  # 
  portugal = new_covid[new_covid$country == "Portugal", ]
  # plot(portugal$time, portugal$Cum_rate, type = "l")
  # points(portugal$time, rep(50, length(portugal$time)), type = "l", col = "red")
  points(portugal$time, portugal$Cum_rate, type = "l", col = "red")
  legend("topleft", c("Spain", "Portugal"), col = c("black", "red"), lty = 1)
  
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

  # SPAIN, PORTUGAL, ITALY, GERMANY and FRANCE
  countries = c("Spain", "Portugal", "Italy", "France", "Germany", "Venezuela")
  spain = new_covid[new_covid$country == "Spain", ]
  plot(spain$time, spain$Cum_rate, type = "l",
       xlab = "time (days since 1/1/2019)",
       ylab = "cumulative inf. rate",
       main = "covid 19 pandemic")
  i = 2
  for (country in countries[-1]){
    current_df = new_covid[new_covid$country == country, ]
    points(current_df$time, current_df$Cum_rate, type = "l", col = i)
    i = i + 1
  }
  legend("topleft", legend = countries, col = 1:length(countries), lty = 1)
  

#' Section 4: functions, packages and scoping
#' =============================================================================
#' * Motivating problem: Let's calculate the total number of cases since the 
#' beginning of data collection for the previous countries. This should be stored
#' in a new data.frame/vector. Then, let's print the information using some ASCII art.
#' * Topics: functions, scoping, packages, apply
#' * Sections: Functions, packages, scoping
#' 

  
  
#' ### Exercise 5 
#' Use a function and sapply to calculate the total number of cases since the 
#' beginning of data collection for the previous countries. This should be stored
#' in a new data.frame/vector. Then, print the information for each country,
#' using the say function from package 'cowsay' so that information is given 
#' by a shark (you must look at the documentation!)
#' 

  count_by_country = function(df, country){
    df = new_covid 
    # country = "Spain"
    # devuelve el numero total de casos por pais
    current_country = df[df$country == country, ]
    sum(current_country$cases)
  }
  
  count_by_country(new_covid, "Pakistan") # pruebas
  
  cases_by_country = c()
  for(country in countries){
    current_cases = count_by_country(new_covid, country)
    cases_by_country = c(cases_by_country, current_cases)
  }
  print(cases_by_country)
  
  names(cases_by_country) = countries
  cases_by_country
  
  cases_by_country[4:6]
  cases_by_country["Germany"]  
  
  
  ## PROGRAMACION FUNCIONAL
  new_result = sapply(countries, count_by_country, df = new_covid)
  new_result
  # te coge elementos del primero y los pasa por la funcion (segundo) y los junta en un solo vector 
  
  ## EXPRESIONES LAMBDA
  new_result = sapply(
    countries,
    function(country){
      current_country = new_covid[new_covid$country == country, ]
      sum(current_country$cases)
    }
  )
  