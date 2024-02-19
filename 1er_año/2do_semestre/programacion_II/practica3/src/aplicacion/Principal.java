
/**
 * Descripción general del programa: calcula una aproximación al número PI posible, 
 * cuanto mayor número de puntos usados al azar, más cercano será a PI.
 * @param Este código imprime el valor de PI con respecto a los puntos que introduce el usuario.
 * @author Tomás Machín
 */

package aplicacion;

import java.lang.Math;
import java.util.Scanner;
import interfaz.*;

public class Principal{

        public static void main(String[] args){
		System.out.println("Introduzca un número de dardos");
		Scanner sc = new Scanner(System.in);
		double dardos = sc.nextDouble();
		Interfaz calculo = (n) -> {double recuento = n; double dentro = 0;
			while(recuento >= 1){
				double x = Math.random();
				double y = Math.random();
				double i = Math.pow(x,2) + Math.pow(y,2);
				if(i <= 1){
					dentro += 1;
				}
				recuento -=1;
			}System.out.println(4 * dentro / n);
		};
		System.out.println("La aproximación de los dardos a Pi es: "); 
		calculo.calcularPiLambda(dardos);
	}
}
