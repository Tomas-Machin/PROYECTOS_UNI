package dominio;

public class Localidad{ // ejercicio 9
    private int numeroDeHabitantes; // simplemente declarar variable, java le asigna un valor base 0 (creo)
    private String nombre; // si los pones public y quitas los get y set funciona tmb
    
    public int getNumeroDeHabitantes(){
        return numeroDeHabitantes;
    }
    public void setNumeroDeHabitantes(int numeroDeHabitantes){
        // comprobar que habitantes es >= 0
        this.numeroDeHabitantes = numeroDeHabitantes; // "this.(loqsea)" permite convertir en objeto algo
    }
    public String getNombre(){
         return nombre;
    }
    public void setNombre(String nombre){
        this.nombre = nombre; // "this.(lo-q-sea)" permite convertir en objeto algo
    }
    public String toString() {
        return nombre + " con " + numeroDeHabitantes + " habitantes";
    
    }
}