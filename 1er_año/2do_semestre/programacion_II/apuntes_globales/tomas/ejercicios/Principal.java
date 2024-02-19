package aplicacion;

import java.util.Scanner;
//import java.util.ArrayList;
import java.util.InputMismatchException;
import java.lang.Math;

public class Principal {
	public static void main(String[] args){
		System.out.println("----------------------------------------------------------------------------");
		printHelp();
		System.out.println("----------------------------------------------------------------------------");
		Scanner sc = new Scanner(System.in);
		System.out.println("Si desea realizar alguna operacion, por favor indique [SI], en caso contrario [NO]");
		String decision = sc.next();
		//int i = 0;
		//while(i <= 0){
		try{
			switch(decision){
				case "si":
					System.out.println("¡Que comiencen las matemáticas!");
					System.out.println("----------------------------------------------------------------------------");
					System.out.println("Soy una especie de calculadora y puedo hacer ciertas operaciones básicas.\n [1] SUMATORIO, [2] FACTORIAL, [3] POTENCIA, [4] SUMAS, [5] MEDIA, [6] DES.TIPICA\n Por favor introduzca un número para realizar esa operación.");
					System.out.println("----------------------------------------------------------------------------");
					int numero = sc.nextInt();
					switch (numero){
						case 1:
							System.out.println("Ha elegido la suma, ahora le pediré que escriba un numero");
							sumatorio();
							break;
						case 2: 
							System.out.println("Ha elegido el factorial, ahora le pediré por un número y se calculará el factorial de este.");
							factorial();
							break;
						case 3: 
							System.out.println("Ha elegido la potencia, ahora le pediré por un número para la base.");
							potenciales();
							break;
						case 4:
							System.out.println("Ha elegido las sumas, por lo que le pedire que escriba un número de momento");
							sumasSucesivas();
							break;
						case 5:
							System.out.println("Has elegido hacer la media de números, indique el primero de ellos por favor:");
							media();
							break;
						case 6:
							System.out.println("Ha elegido calcula la desviación típica, por favor introduzca el primer valor");
							desviacionTipica();
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
				"Lo primero seria escribir un número para indicar qué tipo de operacion quiere realizar.\n" + 
				"Despues se le pedira que escriba paso a paso cada número que se le vaya pidiendo.\n" + 
				"Por favor no escriba ninguna letra a menos que se le pida lo contrario. Muchas gracias.");
	}

	public static void sumatorio(){
		Scanner sc = new Scanner(System.in);
		int numero;
		int sumaTotal = 0;
		numero = sc.nextInt();
		if(numero == 0){
			sumaTotal = 0;
		}
		while((numero - 1) >= 0) {
			sumaTotal += numero + (numero - 1);
			numero = numero - 2;
		}sc.close();
		System.out.println("El resultado del sumatorio es: " + sumaTotal);
	}

	public static void factorial(){
		Scanner sc = new Scanner(System.in);
		int numero = sc.nextInt();
		long fac = 1;
		if(numero == 0){
			fac = 1;
		} 
		while((numero - 1) > 0){ 
			fac *= numero * (numero - 1);
			numero = numero - 2;
		}
		System.out.println("El resultado del factorial es: " + fac);
	}

	public static void potenciales(){
		Scanner sc = new Scanner(System.in);
		int numero = sc.nextInt();
		System.out.println("Ahora por favor indique a la potencia a la que quiere eevar el número");
		int pot = sc.nextInt();
		double resultado = Math.pow(numero,pot);
		System.out.println("La potencia " + pot + " de " + numero +" es: " + resultado);
	}

	public static void sumasSucesivas(){
		Scanner sc = new Scanner(System.in);
		int numero;
		String decision = "";
		int i = 0;
		numero = sc.nextInt();
		while (i == 0){
			System.out.println("¿Quiere sumarle algún número? [SI] [NO]");
			decision = sc.next();
			switch(decision){
				case "si":
					System.out.println("Por favor introduzca el número que quiera sumarle:");
					numero += sc.nextInt();
					break;
				case "no":
					System.out.println("El resultado de la suma de los números escritos es: " + numero);
					i = 1;
					break;
				default:
					System.out.println("Por favor introduzca un número");
					sc.nextInt();
					break;
			} 
		}sc.close();
	}

	public static void media(){
		Scanner sc = new Scanner(System.in);
		double numero;
		String decision = "";
		int i = 0;
		double total = 1;
		numero = sc.nextInt();
		while (i == 0){
			System.out.println("¿Quiere sumarle algún número? [SI] [NO]");
			decision = sc.next();
			switch(decision){
				case "si":
					System.out.println("Por favor introduzca el número que quiera sumarle:");
					numero += sc.nextInt();
					total++;
					break;
				case "no":
					System.out.println("El resultado de la suma de los números escritos es: " + numero / total);
					i = 1;
					break;
				default:
					System.out.println("Por favor introduzca un número");
					sc.nextInt();
					break;
				}
		}sc.close();
	}

	public static void desviacionTipica(){
		Scanner sc = new Scanner(System.in);
		double numero;
		String decision = "";
		int i = 0;
		double total = 1;
		double media;
		double resultado = 0;
		numero = sc.nextInt();
		while (i == 0){
			System.out.println("¿Quiere sumarle algún número? [SI] [NO]");
			decision = sc.next();
			switch(decision){
				case "si":
					System.out.println("Por favor introduzca el número que quiera sumarle:");
					int num = sc.nextInt();
					numero = numero + num;
					//numero += sc.nextInt();
					total++;
					media = numero / total;
					double parte2 = Math.pow(num - media,2);
					double primer_valor = 0;
					int a = 1;
					if(a == 1){
						primer_valor = parte2;  // estoy al macenando el segundo valor no el primero yo creo, hacer este if antes de actualizar el valor de "numero"
						a = 0;
					}
					int j = 0;
					if(j > 0){
						parte2 += parte2;
					}
					j++;
					resultado = Math.sqrt((1 / (total - 1)) * (parte2 + primer_valor));    // el fallo esta en que no hago la parte2 para el primer valor que es "numero" no "num"
					System.out.println("- " + media + "; - " + resultado);
					break;
				case "no":
					//media = numero / total;
					//double resultado = Math.sqrt((1 / (total - 1)) * Math.pow(numero - media,2));
					System.out.println("La desviación típica es de: " + resultado);
					i = 1;
					break;
				default:
					System.out.println("Por favor introduzca un número");
					sc.nextInt();
					break;
			}
		}
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
