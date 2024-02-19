package com.how2java;

import java.util.function.BiFunction;
/**
 * Hello world!
 *
 */
public class App {

	// funcion que calcula los cambios entre dos Strings para que sean iguales

	public static int distancia(String patron, String cadena){
		
		BiFunction<Integer, Integer, Integer > minimo = (x,y) -> {
			if(x < y){
				return x;
			}
			else if(x > y){
				return y;
			}
			else {
				return y;
			}
		};

		// int n = 4;
		// int m = 6;
		patron = " " + patron;
		cadena = " " + cadena;
		
		int[][] distancias = int [cadena.lenght][patron.lenght];
		int cambiar = 0;
		for(i = 1; i <= cadena.length; i++){
			for(int j = 1; j <= patron.length; j++){
				if(patron[j].equals(cadena[j]){
					cambiar = distancias[i - 1][j - 1];
				} else {
					cambiar = 2 + distancias[i - 1][j - 1];
				}
				distancias [i][j] = minimo.apply(minimo.apply(1 + distancias[i - 1][j], 1 + distancias[i][j - 1], cambiar));
		}
	}
	return distancias [cadenas.lenght - 1][patron.lenght - 1];

	private static void inicializar(int[][] x, int cadena, int patron){
		for(int i = 0, i < cadena;i++){
			x[i][0] = i;
		}
		for(int j; j < patron; j++){
			x[0][j] = j;
		}
	}

	// hacer:
	
	// - 0 1 2 3 4 5 6 7
	// 0 - p e p a p i g
	// 1 p
	// 2 e 
	// 3 p 
	// 4 e

	// e ir comparando 3 a tres (casillas mas cercanas) y sacar el minimo de los 3 sumandoles 1 (CREO)
	
	// 0 1 2 3 4 5 6 7
	// 1 0 1 2 3 4 5 6
	// 2 1 1 2 3 4 5 6
	// 3 2 2 2 3 4 5 6 
	// 4 3 3 3 3 4 5 6
