
/**
* Genera una aproximación al número PI mediante el mé todo de
* Montecarlo. El pará metro ` pasos` indica el número de puntos generados.
* @param calcula la aproximación a PI con respecto al número de puntos introducidos por el usuario.
*/

package mates;

import java.lang.Math;

public class Matematicas{
        public static double generarNumeroPiIterativo(long pasos){
                double dardos = 0;
                double x;
                double y;
                double dentro = 0;
                while(dardos <= pasos){
                        x = Math.random();
                        y = Math.random();
                        if ((Math.pow(x,2) + Math.pow(y,2)) <= 1){
                                dentro += 1;
                        }dardos++;
                }
                double pi = (4 * dentro) / pasos;

                return pi;
        }
}

