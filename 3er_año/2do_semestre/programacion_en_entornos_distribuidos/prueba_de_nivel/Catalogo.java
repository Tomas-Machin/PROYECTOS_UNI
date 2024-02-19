
import java.util.ArrayList;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.FileReader;
import java.io.IOException;
import java.io.File;

import java.util.Scanner;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;

public class Catalogo{

    ArrayList<Producto> elementos;

    public Catalogo(){
        elementos = new ArrayList<>();
    }

    // FUNCION PARA AGREGAR UN ELEMENTO AL CATALOGO

    public void agregarElemento(String nombre, float precio){
        Producto elemento = new Producto(nombre, precio);
        elementos.add(elemento);
        System.out.println("\n\tEl elemento ha sido annadido correctamente al catalogo");
    }

    // FUNCION PARA ELIMINAR UN ELEMENTO AL CATALOGO

    public void eliminarElemento(String nombre){
        for(int i = 0; i < elementos.size(); i++){
            if(elementos.get(i).nombre.equals(nombre)){
                elementos.remove(i);
                System.out.println("\n\tEl elemento ha sido removido correctamente del catalogo");
            }
            else System.out.println("\n\tEl elemento consultado no esta en el catalogo");
        }
    }

    // FUNCION PARA PODER MODIFICAR EL PRECIO DE UN ELEMENTO DEL CATALOGO

    public void modificarElemento(String nombre, float nuevoPrecio){
        for(Producto producto : elementos){
            if(producto.nombre.equals(nombre)){
                producto.precio = nuevoPrecio;
                System.out.println("\n\tEl elemento ha sido modificado correctamente");
            }
        }
    }

    // FUNCION ÀRA PODER MOSTRAR EL LISTADO DE PRODUCTOS ALMACENADOS

    public void mostrarCatalogo(){
        if(elementos.isEmpty()) System.out.println("\n\tEl catalogo esta vacio actualmente");
        else {
            System.out.println("\n\t\t --- CATALOGO DE PRODUCTOS ---\n");
            for(Producto producto : elementos){
                System.out.println("Nombre: " + producto.nombre + " | Precio: " + producto.precio);
            }
        }
    }

    public void guardarCatalogo() {
        try (FileWriter writer = new FileWriter("Catalogo.txt")) {
            for (Producto producto : elementos) {
                writer.write(producto.nombre + "\t" + producto.precio + "\n");
            }
            System.out.println("Catalogo guardado correctamente en Catalogo.txt");
        } catch (IOException e) {
            System.out.println("Error al guardar el catálogo: " + e.getMessage());
        }
    }

    public void cargarCatalogo() {
        try (BufferedReader reader = new BufferedReader(new FileReader("Catalogo.txt"))) {
            String linea;
            while ((linea = reader.readLine()) != null) {
                String[] partes = linea.split(",");
                if (partes.length == 2) {
                    String nombre = partes[0];
                    float precio = Float.parseFloat(partes[1]);
                    agregarElemento(nombre, precio);
                }
            }
            System.out.println("Catálogo cargado correctamente desde Catalogo.txt");
        } catch (IOException e) {
            System.out.println("Error al cargar el catálogo: " + e.getMessage());
        }
    }

    public void abrirCatalogoEnExcel() {
        try {
            Runtime.getRuntime().exec("cmd /c start excel Catalogo.txt");
        } catch (IOException e) {
            System.out.println("Error al abrir el catálogo en Excel: " + e.getMessage());
        }
    }

}