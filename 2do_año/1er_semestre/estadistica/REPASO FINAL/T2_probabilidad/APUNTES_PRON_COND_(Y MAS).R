
## PROB. CONDICIONADA (lo q ocurre a condicion de q)

# P(B | A) = P(B n A) / P(A)  <----- prob de q ocurra B habiendo ocurrido A
# P(B | A) = nº casos fav de A y B / nº casos fav de A
# P(B n A) = P(B | A) * P(A) || P(A | B) * P(B)

# ------------------------------------------------------------------------------
## PROB TOTAL (LAPLACE) (ARBOL DE PROBABILIDADES)

# B = (B n A) U (B n A ^ c) ----> como dividir en dos un conjunto (son excluyente 
#                               por lo q podemos aplicas el axioma 3 de kolmogorov)
# P(B) = P(B n A) + P(B n A ^ c) = P(A) * P(B | A) + P(A ^ c) * P(B | A ^ c)

# ------------------------------------------------------------------------------
## calcular q A ha ocurrido si tenemos B ---> ARBOLITO (T. BAYES)

# P(C | N) = P(C n N) / P(N) = (P(C) * P(N | C)) / (P(C) * P(N | C) + P(x) * P(N | X))
# ES DECIR: (ARBOLITO)
# P(C n N) = (P(C) * P(N | C))
# P(N) = (P(C) * P(N | C) + P(x) * P(N | X))

# ------------------------------------------------------------------------------
## INDEPENDENCIA DE SUCESOS

# P(B) = P(B | A)
#  si es asi entonces: P(B n A) = P(B) * P(A)







