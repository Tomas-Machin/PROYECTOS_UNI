public class Asignatura {
    String nombre = ""; // definir asignatura, añadir mas info a asignatura
    int grupo = 0;      // escribir numeros enteros
    
    public String informacion(){ //void que no devuelva nada de info (tipo de datos que va a devolver)
        String informacion = "la asignatura se llama ";
        informacion = informacion + nombre;
        informacion = informacion + " y el grupo es ";
        informacion = informacion + grupo;
        return informacion;
        //System.out.println(informacion);  este ya no sirve pq se ha convetido en  String y no es void
    }
}