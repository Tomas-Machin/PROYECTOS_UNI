/*Copyright [2021] [Juan Cordero]
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.*/

/**
 * Es la clase
 *
 * @author Juan Cordero
 * @version 1.0 16/1/22
 */
package dominio;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class Tienda {
    private ArrayList<Television> coleccionTelevisores = new ArrayList<>();
    private String FICHERO_TXT = "fichero.txt";

    public Tienda() {
        inicializarTienda();
    }

    public void annadirTelevision(Television television) {
        coleccionTelevisores.add(television);
        inicializarFichero();
    }

    public void borrarTelevision(Television televisionABorrar) {
        String modelo = televisionABorrar.getModelo();
        String tipoDePantalla = televisionABorrar.getTipoDePantalla();
        int pulgadas = televisionABorrar.getPulgadas();
        int anno = televisionABorrar.getAnno();
        int i = 0;
        boolean encontrado = false;
        while (i <= coleccionTelevisores.size() && !encontrado) {
            if (coleccionTelevisores.get(i).getModelo().equals(modelo) && coleccionTelevisores.get(i).getTipoDePantalla().equals(tipoDePantalla)
                    && coleccionTelevisores.get(i).getPulgadas() == pulgadas && coleccionTelevisores.get(i).getAnno() == anno) {
                encontrado = true;
                break;
            }
            i++;
        }
        if (encontrado) {
            coleccionTelevisores.remove(i);
            inicializarFichero();
            System.out.println("Se ha eliminado correctamente");
        } else {
            System.out.println("No se ha encontrado el marisco");
        }
    }

    public void reemplazarTelevision(Television televisionAntigua, Television televisionNueva) {
        String modelo = televisionAntigua.getModelo();
        String tipoDePantalla = televisionAntigua.getTipoDePantalla();
        int pulgadas = televisionAntigua.getPulgadas();
        int anno = televisionAntigua.getAnno();
        int i = 0;
        boolean encontrado = false;
        while (i <= coleccionTelevisores.size() && !encontrado) {
            if (coleccionTelevisores.get(i).getModelo().equals(modelo) && coleccionTelevisores.get(i).getTipoDePantalla().equals(tipoDePantalla)
                    && coleccionTelevisores.get(i).getPulgadas() == pulgadas && coleccionTelevisores.get(i).getAnno() == anno) {
                encontrado = true;
                break;
            }
            i++;
        }
        if (encontrado) {
            coleccionTelevisores.set(i, televisionNueva);
            inicializarFichero();
            System.out.println("Se ha reemplazado");
        } else {
            System.out.println("No se ha encontrado el marisco");
        }
    }

    private void inicializarFichero() {
        try {
            FileWriter fw = new FileWriter(FICHERO_TXT);
            fw.write(toString());
            fw.close();
        } catch (IOException e) {
            System.out.println(e);
            System.out.println("No se ha podido guardar el archivo");
        }
    }

    private void inicializarTienda() {
        try {
            File file = new File(FICHERO_TXT);
            Scanner sc = new Scanner(file);

                while (sc.hasNext()) {
                    String a = sc.next();
                    String modelo = sc.next();
                    String b = sc.next();
                    String tipoDePantalla = sc.next();
                    String c = sc.next();
                    int pulgadas = Integer.parseInt(sc.next());
                    String e = sc.next();
                    int anno = Integer.parseInt(sc.next());
                    Television television = new Television(modelo, tipoDePantalla, pulgadas, anno);
                    annadirTelevision(television);
                }
                sc.close();
        } catch (FileNotFoundException e) {
            System.out.println("A");
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Television television : coleccionTelevisores) {
            sb.append(television.toString() + "\n");
        }
        return sb.toString();
    }
}
