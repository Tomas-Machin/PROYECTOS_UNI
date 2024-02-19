package interfaz;

import dominio.*;

public class Interfaz {
	public static void procesarPeticion(String sentencia) {
		String [] args = sentencia.split(" ");
		Libreta libreta = new Libreta();
		if(args[0].equals("help")){
			printHelp();
		} else if (args[0].equals("list")){
			System.out.println(libreta);
		} else if (args[0].equals("add")){
			Vehiculo v = new Vehiculo(args[1], args[2], Integer.parseInt(args[3]), Integer.parseInt(args[4]));
			libreta.annadirVehiculo(v);
			System.out.println("HECHO");
		} else if (args[0].equals("remove")){
			Vehiculo vh = new Vehiculo(args[1], args[2], Integer.parseInt(args[3]), Integer.parseInt(args[4]));
			libreta.borrarVehiculo(vh);
			System.out.println("HECHO");
		} else if (args[0].equals("mod")){
			Vehiculo vhAnt = new Vehiculo(args[1], args[2], Integer.parseInt(args[3]), Integer.parseInt(args[4]));
			Vehiculo vhNv = new Vhehiculo(args[5], args[6], Integer.parseInt(args[7]), Integer.parseInt(args[8]));
			libreta.cambiarVehiculo(vhAnt, vhNv);
			System.out.println("HECHO");
		}
	}

	public static void printHelp(){
		System.out.println("Los comandos que se pueden usar:\n" +
                "- Para mostrar la lista de vehiculos:\n" + 
		"\tjava -jar libreta.jar list\n" +
                "- Para añadir un vehiculo:\n" +
		"\tjava -jar libreta.jar add <Modelo> <Tipo> <Plazas> <Año>\n" +
                "- Para borrar una television:\n" + 
		"\tjava -jar libreta.jar remove <Modelo> <Tipo> <Plazas> <Año>\n" +
                "- Para modificar un vehiculo de la lista:\n" + 
		"\tjava -jar tienda.jar editar <Modelo> <Tipo> <Plazas> <Año> <ModeloNuevo> <Tipo Nuevo> <plazasNuevas> <NuevoAño>\n");
	}
}
