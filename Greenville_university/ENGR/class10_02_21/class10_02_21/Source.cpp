#include <iostream>
#include <iomanip>
using namespace std;
int main()
{
	cout << '|' << setw(10) << fixed << setprecision(3) << 151.
		<< '|' << endl;
			//| 151.000|
	cout << '|' << setw(10) << left << 151. << '|' << endl;
			//|151.000 |
	cout << '|' << setw(10) << right << 151. << '|' << endl;
	cout << '|' <<setw(10) << setprecision(2) << 151. << '|'<< endl;
	cout << '|' << setw(10) << setprecision(4) << 151 << '|' << endl;
	return 0;
}
/*
|   151.000|
|151.000   |
|   151.000|
|    151.00|
|  151.0000|

C:\Users\machi\source\repos\class10_02_21\Debug\class10_02_21.exe (proceso 8688) se cerró con el código 0.
Para cerrar automáticamente la consola cuando se detiene la depuración, habilite Herramientas ->Opciones ->Depuración ->Cerrar la consola automáticamente al detenerse la depuración.
Presione cualquier tecla para cerrar esta ventana. . .
*/