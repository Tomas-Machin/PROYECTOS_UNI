package aplicacion;

import interfaz.Interfaz;

public class Principal {
	public static void main(String[] args) {
		String sentencia = " ";
		for (String arg : args){
			sentencia += arg + " ";
		}
		Interfaz.procesarPeticion(sentencia);
	}
}
