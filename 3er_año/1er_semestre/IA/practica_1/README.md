# Inteligencia Aritificial.
## Práctica 1:
___
### **Nombre:** Juego de números.

### **REGLAS:**

1. Se escogen 4 números, cada usuario elige 2. 
2. De esos números, los primeros 2 tienen que estar comprendidos entre 5 y 10, los otros 2 deberán estar comprendidos entre 0 y 5.
3. El primer número elegido por cada usuario es el objetivo a acercarse y seran dichos en voz alta por cada jugador al mismo tiempo para no desbalancear el juego. Los llamaremos ***numeros objetivo***.
4. El segundo de los números escogidos por los usuarios deberán estar comprendidos entre 0 y 5 (_simulando los dedos de una mano_).
5. Los números resultantes de los dedos de cada jugador se sumarán dejando un número comprendido en 0 y 10.
6. Para poder salir victorioso, la suma de los dedos deberá acercarse lo mayor posible a su número objetivo sin pasarse.
7. En caso de que la suma sobrepase los números objetivos de cada jugador, ganará el número objetivo más grande (_el que hubiera ganado sin la regla de: "sin pasarse"_). 
8. El juego se basa en el jugador 1, es decir, en base a la primera apuesta o primer número a acercarse elegido. Explicaremos mejor este punto en el funcionamiento.

### FUNCIONAMIENTO:
- #### Estructura del comando a ejecutar en el terminal de swi-prolog:  

> **numeros(X, Y, Z, W).**
>
> **X**: número objetivo del jugador 1.
> 
> **Y**: número objetivo del jugador 2.
>
> **Z**: número de dedos sacados de la mano del jugador 1.
> 
> **W**: número de dedos sacados de la mano del jugador 2.


- #### **CASOS (en base al jugador 1):**

    - **Caso de victoria:** Para que el jugador 1 gane tienen q ocurrir las siguientes condiciones: 
        - Condición 1: Es **obligatorio** que la suma de los dedos de los jugadores sea **menor** al número objetivo de este jugador. 
        - Condición 2.1: El número objetivo del jugador 1 tiene que ser **menor** al número objetivo del jugador 2.
        - Condición 2.2: El número objetivo del jugador 2 tiene que ser **mayor** a la suma de los dedos de ambos juagadores.
        - Para que se muestre el mensaje de victoria, tendrá que haberse cumplido la condición **1** y la **2.1** o **2.2**. Este mensaje será: 
        > ¡¡¡HAS GANADOO!!!
        > 
        > **true.**
              
    - **Caso de derrota:** Para que el jugador 1 sea derrotado se tienen que cumplir estas condiciones:
        - Condición 1: Que la suma de los dedos de ambos jugadores sea mayor al número objetivo del jugador 1.
        - Condicion 2: Que el número objetivo del jugador 2 sea **mayor** que el del jugador 1 y además, que la suma de los dedos de ambos jugadores sea menor al número objetivo del jugador 2.
        - Al cumplirse una de las dos condiciones, se mostrará el siguiente mensaje por el terminal.
        > Has perdido...
        > 
        > **true.** 
    - **Caso de empate:** Para que ocurra un empate solo tiene que cumplirse una condición:
      - Condición: Que el número objetivo de cada jugador sea el mismo.
      - En caso de ocurrir, se mostrará el siguiente mensaje:
      > Ha habido un empate.
      > 
      > **true.** 


