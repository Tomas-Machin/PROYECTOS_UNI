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

C:\Users\machi\source\repos\class10_02_21\Debug\class10_02_21.exe (proceso 8688) se cerr� con el c�digo 0.
Para cerrar autom�ticamente la consola cuando se detiene la depuraci�n, habilite Herramientas ->Opciones ->Depuraci�n ->Cerrar la consola autom�ticamente al detenerse la depuraci�n.
Presione cualquier tecla para cerrar esta ventana. . .
*/