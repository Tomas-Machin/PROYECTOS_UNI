import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Catalogo catalogo = new Catalogo();
        Scanner scanner = new Scanner(System.in);
        boolean cargar = true;
        while (true) {
            if(cargar){
                catalogo.cargarCatalogo();
                cargar = false;
            }
            System.out.println("\nAqui tiene las diferentes operaciones disponibles a realizar:");
            System.out.println("\n1. Agregar producto");
            System.out.println("2. Eliminar producto");
            System.out.println("3. Modificar precio de producto");
            System.out.println("4. Mostrar catalogo");
            System.out.println("5. Mostrar catalogo");
            System.out.println("6. Salir");

            System.out.print("Selecciona una opcion: ");
            int opcion = scanner.nextInt();
            scanner.nextLine(); // Consumir la nueva línea después de nextInt()

            switch (opcion) {
                case 1:
                    System.out.print("Ingrese el nombre del producto: ");
                    String nombre = scanner.nextLine();
                    System.out.print("Ingrese el precio del producto: ");
                    float precio = Float.parseFloat(scanner.nextLine());
                    catalogo.agregarElemento(nombre, precio);
                    break;
                case 2:
                    System.out.print("Ingrese el nombre del producto a eliminar: ");
                    String nombreEliminar = scanner.nextLine();
                    catalogo.eliminarElemento(nombreEliminar);
                    break;
                case 3:
                    System.out.print("Ingrese el nombre del producto cuyo precio desea modificar: ");
                    String nombreModificar = scanner.nextLine();
                    System.out.print("Ingrese el nuevo precio: ");
                    float nuevoPrecio = Float.parseFloat(scanner.nextLine());
                    catalogo.modificarElemento(nombreModificar, nuevoPrecio);
                    break;
                case 4:
                    catalogo.mostrarCatalogo();
                    break;
                case 5:
                    catalogo.abrirCatalogoEnExcel();
                    break;
                case 6:
                    catalogo.guardarCatalogo();
                    System.out.println("Saliendo...");
                    scanner.close();
                    System.exit(0);
                default:
                    System.out.println("Opción no valida. Por favor, seleccione una opcion valida.");
            }
        }
    }
}
