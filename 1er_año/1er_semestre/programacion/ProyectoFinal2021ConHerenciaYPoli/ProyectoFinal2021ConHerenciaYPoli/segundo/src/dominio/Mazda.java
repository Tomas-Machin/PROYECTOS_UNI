package dominio;

public class Mazda extends Vehiculo {
	private int numeroDeSerie;

	public Mazda(String tipo, int plazas, int anno, int numeroDeSerie){
		super(tipo, plazas, anno);
		super.modelo = "Mazda";
		this.numeroDeSerie = numeroDeSerie;
	}

	public int getNumeroDeSerie(){
		return numeroDeSerie;
	}
	public void setNumeroDeSerie(int numeroDeSerie){
		this.numeroDeSerie;
	}

	public String toString(){
		return "Modelo: " + getModelo() + "; tipo: " + getTipo() + ", con plazas: " + getPlazas() + " del año: " + getAnno() + " y numero de serie: " + getNumeroDeSerie();
	}
}

