
/**
 * Descripción general del programa: calcula una aproximación al número PI posible, 
 * cuanto mayor número de puntos usados al azar, más cercano será a PI.
 * @param Este código imprime el valor de PI con respecto a los puntos que introduce el usuario.
 * @author Tomás Machín
 */

package aplicacion;

import mates.Matematicas;

public class Principal{

        public static void main(String[] args){
        	System.out.println("El número PI es " +
	        Matematicas.generarNumeroPiIterativo(Integer.parseInt(args[0])));
        }
}

