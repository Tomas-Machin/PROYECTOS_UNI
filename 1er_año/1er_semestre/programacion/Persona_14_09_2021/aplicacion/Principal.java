package aplicacion;

import dominio.Persona;  // permite usar o crear objetos relacionadas con esas carpetas 
import dominio.Localidad;


public class  Principal{
    public static void main(String [] args){ // paso 4 ejercicio 8
        Persona objeto = new Persona();
        // ejercicio 10 parte 1
        objeto.setNombre("objeto");
        //ejercicio 8 paso 4
        objeto.setAnnoDeNacimiento (1984);
        //System.out.println(objeto.annoDeNacimiento);
        //System.out.println(objeto.calcularEdad()); 
        // ejercicio 9 parte 3
        /**Localidad madrid = new Localidad();
        madrid.nombre = "madrid";
        madrid.numeroDeHabitantes = 3500000;*/
        Localidad madrid = new Localidad();
        System.out.println(madrid.getNombre()); // sale null pq no hay nada declarado para esa variable
        madrid.setNombre("Madrid");
        System.out.println(madrid.getNombre());  
        /**objeto.lugarDeNacimiento = madrid;
        System.out.println(objeto.informacion());
        System.out.println(madrid);*/ // se usa con el metodo "toString()"revisar clase localidad
    }
}