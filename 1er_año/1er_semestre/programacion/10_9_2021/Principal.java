
public class Principal {
    public static void main(String[] args) // siempre se pone el main()
    {
        System.out.println("-------------------------------------------------------------");
        String saludo = "¡Hola mundo!";    // nos ayuda a trabajar con contexto 
        System.out.println(saludo);    // decir el texto escrito    (en vez de hola mundo "" puedes poner saludo en este caso)  
        Asignatura programacion = new Asignatura ();  // crear clase con new normbre() minusculas 
        System.out.println(programacion.nombre); // en () pones lo q quieras de despues de asignatura, el .nombre dira lo definido en asignatura
        saludo = "adios"; // modificar la variable
        System.out.println(saludo);
        programacion.nombre = "Programacion 1"; // modificar texto 
        System.out.println(programacion.nombre);
        programacion.grupo = 101; // con comillas salta error pq no valen numeros en variables string siendo de int
        System.out.println(programacion.grupo);
        // programacion.informacion();  este al tener String en vez de void no muestra nada de informacion
        Asignatura matematicas = new Asignatura ();
        matematicas.nombre = "matematicas";
        System.out.println(matematicas.nombre);
        matematicas.grupo = 101;
        System.out.println(matematicas.informacion()); // este se imprime pq esta en el formato para que pueda devolver esa informacion
        //matematicas.informacion();  no se puede poner el system.out.println() pq no se puede imprimir un void
    
    }
}
