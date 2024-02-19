public class noidea{
    public static void main( String[] args){
        Asignatura programacion = new Asignatura();
        System.out.println(programacion.nombre);
        programacion.nombre = "programacion 1";
        System.out.println(programacion.nombre);
        Asignatura matematicas = new Asignatura();
        matematicas.nombre = "matematicas";
        System.out.println(matematicas.nombre);
    }
}