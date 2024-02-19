
/**
* Genera una aproximación al número PI mediante el mé todo de
* Montecarlo. El pará metro ` pasos` indica el número de puntos generados.
* @param calcula la aproximación a PI con respecto al número de puntos introducidos por el usuario.
*/

package mates;

import java.lang.Math;

public class Matematicas{
	public static double generarNumeroPiIterativo(double n){
		
		double x = Math.random();
		double y = Math.random();
		double i = Math.pow(x,2) + Math.pow(y,2);
		double dentro = 0;
		double recuento = n;
		if(i <= 1){
			dentro = dentro + 1;
		}
		recuento = recuento - 1;
		if (recuento > 0) {
			dentro = dentro + generarNumeroPiIterativo(recuento);
		}
		//System.out.println(dentro + "-" + recuento);
		return dentro;
	}
}

