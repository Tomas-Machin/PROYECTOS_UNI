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

package dominio;

public class Samsung extends Television {
    private int numeroSerie;

    public Samsung(String tipoDePantalla, int pulgadas, int anno, int numeroSerie) {
        super(tipoDePantalla, pulgadas, anno);
        super.modelo = "Samsung";
        this.numeroSerie = numeroSerie;
    }

    public int getNumeroSerie() {
        return numeroSerie;
    }

    public void setNumeroSerie(int numeroSerie) {
        this.numeroSerie = numeroSerie;
    }

    @Override
    public String toString() {
        return "Modelo: " + getModelo() + " " + "Tipo-De-Pantalla: "
                + getTipoDePantalla() + " " + "Pulgadas: " + getPulgadas() + " "  + "Año: " + anno + " " + "NumeroDeSerie: " + numeroSerie;
    }
}
