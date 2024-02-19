package dominio;

public class Vehiculo {
	protected String modelo;
	protected String tipo;
	protected int plazas;
	protected int anno;
	
	public Vehiculo(){
		modelo = " ";
		tipo = " ";
		plazas = 0;
		anno = 0;
	}

	public Vehiculo(String modelo, String tipo, int plazas, int anno){
		this.modelo = modelo;
		this.tipo = tipo;
		this.plazas = plazas;
		this.anno = anno;
	}

	public String getModelo(){
		return modelo;
	}
	public void setModelo(String modelo){
		this.modelo = modelo;
	}

	public String tipo(){
		return tipo;
	}
	public void setTipo(String tipo){
		this.tipo = tipo;
	}

	public int plazas(){
		return plazas;
	}
	public void setPlazas(int plazas){
		this.plazas = plazas;
	}

	public int getAnno(){
		return anno;
	}
	public void setAnno(int anno){
		this.anno = ano;
	}

	public String toString(){
		return "Modelo: " + getModelo() + ", tipo: " + getTipo() + ", con número de plazas: " + getPlazas() + " y del año: " + getAnno();
	}
}
