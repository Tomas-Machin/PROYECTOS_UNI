package aplicacion;

import java.util.Scanner;
//import java.util.ArrayList;
import java.util.InputMismatchException;
import java.lang.Math;

public class Principal {
	private static Scanner sc = new Scanner(System.in);
	private static double numero;
	public static void main(String[] args){
		System.out.println("----------------------------------------------------------------------------");
		printHelp();
		System.out.println("----------------------------------------------------------------------------");
		System.out.println("Si desea realizar alguna operación, por favor indique [SI], en caso contrario [NO]");
		String decision = sc.next();
		//int i = 0;
		//while(i <= 0){
		try{
			switch(decision){
				case "si":
					System.out.println("¡Que comiencen las matemáticas!");
					System.out.println("----------------------------------------------------------------------------");
					System.out.println("Soy una especie de calculadora y puedo hacer ciertas operaciones básicas.\n [1] SUMATORIO, [2] FACTORIAL, [3] POTENCIA, [4] SUMAS, [5] MEDIA, [6] DES.TIPICA\n [7] SUMA.PARES\n Por favor introduzca un número para realizar esa operación.");
					System.out.println("----------------------------------------------------------------------------");
					int numero = sc.nextInt();
					switch (numero){
						case 1:
							System.out.println("Ha elegido la suma, ahora le pediré que escriba un número");
							sumatorioR();
							break;
						case 2: 
							System.out.println("Ha elegido el factorial, ahora le pediré por un número y se calculará el factorial de este.");
							factorialR();
							break;
						case 3: 
							System.out.println("Ha elegido la potencia, ahora le pediré por un número para la base.");
							potencialesR();
							break;
						case 4:
							System.out.println("Ha elegido las sumas, por lo que le pediré que escriba un número de momento");
							sumasSucesivasR();
							break;
						case 5:
							System.out.println("Has elegido hacer la media de números, indique el primero de ellos por favor:");
							mediaR();
							break;
						case 6:
							System.out.println("Ha elegido calcula la desviación típica, por favor introduzca la cantidad de número de los que quiere calcularla");
							desviacionTipicaR();
							break;
						case 7:
							System.out.println("Ha elegido hacer la suma de pares, por favor introduzca un número y se calculará la suma");
							sumaParesR();
							break;
						default:
							System.out.println("Por favor indique un número: [1] SUMATORIO, [2] FACTORIAL, [3] POTENCIA, [4] SUMAS, [5] MEDIA");
							sc.nextInt();  //  si escribo un numero que no es y luego si me sale como el case no de abajo
							break;
					}sc.close();
				case "no":
					System.out.println("Vuelva a escribir `make ejecutar` si quiere hacer alguna operación más tarde");
					//i = 1;
					break;
				case "sino":// falta algo para que no pare de preguntar hasta que diga si o no
					System.out.println("Por favor escriba o el uno o el otro pero no los dos juntos, gracias");
					sc.next();
					break;
				default:   //  igual que en el case "no"
					System.out.println("Por favor escriba: [SI] o [NO]");
					sc.next();  // no funciona
					break;
			} sc.close();
		} catch (InputMismatchException e){ // ns como funciona bien esta excepcion ahora
			System.out.println("Por favor introduzca un número");
			sc.next(); //no funciona
		}
		//}
	}

	public static void printHelp(){
		System.out.println(" ¡Hola!\n" + 
				"Soy el asistente y estoy para ayudarte o recordarte lo que puedes hacer al ejecutar el programa.\n" + 
				"Lo primero sería escribir un número para indicar qué tipo de operacion quiere realizar.\n" + 
				"Despues se le pedirá que escriba paso a paso cada número que se le vaya pidiendo.\n" + 
				"Por favor no escriba ninguna letra a menos que se le pida lo contrario. Muchas gracias.");
	}

	public static void sumatorioR(int n){
		n = sc.nextInt();
		if (n <= 0){
			return 0;
		}
		else {
			return n + sumatorioiR(n - 1);
		}
	}

	public static void factorialR(long n){
		n = sc.nextInt();
		if(n == 0){
			return 1;
		}
		else {
			return n * factorial(n - 1);
		}
		/*
		   public static int factorial(int producto, int i, int n){
		 	  if(i > n){
		 		  return producto;
			   }
			   else {
				   return factorial(producto * i; i +1, n);
			   }
	   	*/
	}

	public static void potencialesR(int n, int p){
		n = sc.nextInt();
		System.out.println("Ahora un número para la potencia");
		p = sc.nextInt();
		if(p == 0){
			return 1;
		}
		if(p >= 0){
			return n * potenciales(n, p - 1);
		}
	}	

	public static void sumasSucesivasR(int n){
		String decision = "";
		int i = 0;
		int j = 0;
		while( i == 0){
			System.out.println("¿Quiere añadir algún número?");
			decision = sc.next();
			j++;
			switch(decision){
				case "si":
					System.out.println("Introduzca un número");
					return (n + sumasSucesivas(n)) / j;
					break;
				case "no":
					return (n / j);
					break;
				default:
					System.out.println("Por favor introduzca un número");
					sc.nextInt();
					break;
			}
		} sc.close();
	}

	public static void mediaR(){
		// a completar
	}

	public static void desviacionTipicaR(){
		// a completar
	}

	public static void sumaParesR(){
		// a completar
	}
}
// 						MEJORAS
// hacer que vuelva a preguntar si quiere hacer más operaciones para que no se acabe el programa.
// no funciona el primer default para repetirse continuamente, tmp funciona aun si pongo lo que pide
// no funciona el catch que hay al principio
// se ejecuta "case "no"" del primer switch aun sin haberlo puesto, tmp funciona si hago lo que me pide en el default+
// no funcionan los default de los switch basicamente  (faltan los default el los metodos == "hecho")
// falta en caso de usar if y while el caso de usar una letra en vez de un número para poder "reiniciar" el metodo 
//  
