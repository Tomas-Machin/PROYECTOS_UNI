package dominio;

import java.util.ArrayList;
import java.io.File;
import java.io.FileWriter;
import java.util.Scanner;
import java.io.IOException;
import java.io.FileNotFoundException;

public class Libreta {
	private ArrayList<Vehiculos> listaVehiculos = new ArrayList<>();
	private String FICHERO_TXT = "fichero.txt";

	public ArrayList <Vehiculos> getListaVehiculos(){
		return listaVehiculos;
	}
	public void setListaVehiculos(ArrayList<Vehiculos> listaVehiculos){
		this.listaVehiculos = listaVehiculos;
	}

	public Libreta(){
		inicializarLibreta();
	}

	public void annadirVehiculo(Vehiculo vehiculo){
		listaVehiculos.add(vehiculo);
		inicializarFichero();
	}

	public void borrarVehiculo(Vehiculo vehiculo){
		String modelo = vehiculoBr.getModelo();
		String tipo = vehiculoBr.getTipo();
		int plazas = vehiculoBr.getPlazas();
		int anno = vehiculoBr.getAnno();
		int i = 0;
		boolean found = false;
		while(i <= listaVehiculos.size() && !found){
			if(listaVehiculos.get(i).getModelo().equals(modelo) && listaVehiculo.get(i).getTipo().equals(tipo) && listaVehiculos.get(i).getPlazas() == plazas && listaVehiculos.get(i).getAnno() == anno){
				found = true;
				break;
			}
			i++;
		}if (encontrado){
			listaVehiculos.remove(i);
			inicializarFichero();
			System.out.println("CONSEGUIDO");
		} else {
			System.out.println("CAGASTE");
		}

	}

	public void cambiarVehiculo(Vehiculo vehiculoAnt, Vehiculo vehiculoNv){
		String modelo = vehiculoAnt.getModelo();
		String tipo = vehiculoAnt.getTipo();
		int plazas = vehiculoAnt.getPlazas();
		int anno = vehiculo.getAnno();
		int i = 0;
		boolean found = false;
		while(i <= listaVehiculos.size() && !found){
			if(listaVehiculos.get(i).getModelo().equals(modelo) && listaVehiculos.get(i).getTipo().equals(tipo) && listaVehiculos.get(i).getPlazas() == plazas && listaVehiculos.get(i).getAnno() == anno){
				encontrado = true;
				break;
			}
			i++;
		}
		if (encontrado){
			listaVehiculos.set(i, vehiculoNv);
			inicializarFichero();
			System.out.println("CONSEGUIDO");
		}else {
			 System.out.println("CAGASTE WEY");
		}
	}

	private void inicializarFichero() {
		try{
			FlieWriter fw = new FileWwriter(FICHERO_TXT);
			fw.writer(sString());
			fw.close();
		} catch (IOException e){
			System.out.println("No se ha podido guardar");
		}
	}

	private void inicializarLibreta(){
		try {
			File f = new File(FICHERO_TXT);
			Scanner sc = new Scanner(file);
			while (sc.hasNext()){
				String modelo = sc.next();
				String tipo = sc.next();
				int plazas = Integer.parseInt(sc.next());
				int anno = Integer.parseInt(sc.next());
				Vehiculo vehiculo = new Vehiculo(modelo, tipo, plazas, anno);
				annadirVehiculo();
			} sc.close();
		}catch(FileNotFoundException e){
				System.out.println("ALGO NO FUE BIEN");
		 } 
	}
	
	public String toString(){
		StringBuilder mensaje = new StringBuilder();
		if(listaVehiculos.size == 0){
			mensaje.append("La lista esta vacía");
		} else {
			for(Vehiculo vehiculo : listaVehiculos){
				mensaje.append(vehiculo + "\n");
			}
		}
		return mensaje.toString();
	}
}
