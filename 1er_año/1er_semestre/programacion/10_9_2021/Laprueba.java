public class Laprueba {
    public static void main(String[] args){
        String saludo = "Hola muy buenas";
        System.out.println(saludo);
        Hijoprueba examen = new Hijoprueba();
        System.out.println(examen.prueba +" sorpresa"); // el + es como el << en C++
        saludo = "cagaste";
        System.out.println(saludo);
        examen.prueba = "vuelve a intertarlo perdedor";
        System.out.println(examen.prueba);
        
        
    }
}