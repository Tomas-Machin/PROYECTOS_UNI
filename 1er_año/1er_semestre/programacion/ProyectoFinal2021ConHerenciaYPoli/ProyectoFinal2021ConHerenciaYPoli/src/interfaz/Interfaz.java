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

package interfaz;

import dominio.Samsung;
import dominio.Television;
import dominio.Tienda;

public class Interfaz {

    public static void procesarPeticion(String sentencia) {
        String[] args = sentencia.split(" ");
        Tienda tienda = new Tienda();
        if (args[0].equals("help")) {
            printHelp();
        } else if (args[0].equals("list")) {
            System.out.println(tienda);
        } else if (args[0].equals("add")) {
            Television tele = new Television(args[1], args[2], Integer.parseInt(args[3]), Integer.parseInt(args[4]));
            tienda.annadirTelevision(tele);
            System.out.println("Se ha añadido la television");
        } else if (args[0].equals("remove")) {
            Television television = new Television(args[1], args[2], Integer.parseInt(args[3]), Integer.parseInt(args[4]));
            tienda.borrarTelevision(television);
        } else if (args[0].equals("modificar")) {
            Television teleAntigua = new Television(args[1], args[2], Integer.parseInt(args[3]), Integer.parseInt(args[4]));
            Television teleNueva = new Television(args[5], args[6], Integer.parseInt(args[7]), Integer.parseInt(args[8]));
            tienda.reemplazarTelevision(teleAntigua, teleNueva);
        } else if (args[0].equals("addSamsung")) {
            Samsung samsung = new Samsung(args[1], Integer.parseInt(args[2]), Integer.parseInt(args[3]), Integer.parseInt(args[4]));
            tienda.annadirTelevision(samsung);
            System.out.println("Se ha añadido bien");
        }
    }

    public static void printHelp() {
        System.out.println("Los comandos que se pueden utilizar son los siguientes:" + "\n" +
                "- Para mostrar la información de todas las televisiones: java -jar tienda.jar list" + "\n" +
                "- Para añadir una television cualquiera: java -jar tienda.jar add <Modelo> <Tipo-De-Pantalla> <Pulgadas> <Año>" + "\n" +
                "- Para borrar una television: java -jar tienda.jar remove <Modelo> <Tipo-De-Pantalla> <Pulgadas> <Año>" + "\n" +
                "- Para modificar una television: java -jar tienda.jar editar <Modelo> <Tipo-De-Pantalla>" +
                " <Pulgadas> <Año> <modeloNuevo> <tipo-De-Pantalla-Nueva> <pulgadasNuevas> <nuevoAño>" + "\n" +
                "- Para generar el csv: java -jar tienda.jar csv");
    }
}

