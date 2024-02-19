/*Copyright [2021] [Juan Cordero, Javier Martinez]
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
 * Clase que contiene los parámetros que tiene la television con sus constructures, getters y setters
 *
 * @author Juan Cordero
 * @author Javier Martinez
 * @version 1.0 25/11/21
 */
package dominio;

public class Television {
    protected String modelo;
    protected String tipoDePantalla;
    protected int pulgadas;
    protected int anno;

    public Television(String tipoDePantalla, int pulgadas, int anno) {
        this.tipoDePantalla = tipoDePantalla;
        this.pulgadas = pulgadas;
        this.anno = anno;
    }

    public Television(String modelo, String tipoDePantalla, int pulgadas, int anno) {
        this.modelo = modelo;
        this.tipoDePantalla = tipoDePantalla;
        this.pulgadas = pulgadas;
        this.anno = anno;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getTipoDePantalla() {
        return tipoDePantalla;
    }

    public void setTipoDePantalla(String tipoDePantalla) {
        this.tipoDePantalla = tipoDePantalla;
    }

    public int getPulgadas() {
        return pulgadas;
    }

    public void setPulgadas(int pulgadas) {
        this.pulgadas = pulgadas;
    }

    public int getAnno() {
        return anno;
    }

    public void setAnno(int anno) {
        this.anno = anno;
    }

    @Override
    public String toString() {
        return "Modelo: " + modelo + " " + "Tipo-De-Pantalla: "
                + tipoDePantalla + " " + "Pulgadas: " + pulgadas + " " + "Año: " + anno;
    }
}


