#include <iostream>
#include <iomanip>
using namespace std;
int main() {
	double x1, y1, x2, y2, slope;
	x1 = 3;
	x2 = 8;
	y1 = 7;
	y2 = 12;
	slope = (y2 - y1) / (x2 - x1);
	cout << "The value of the slope is" << setw(5) << setiosflags(ios::fixed) << setprecision(2) << slope << endl;
	return 0;
}/*The value of the slope is 1.00

C:\Users\machi\source\repos\Ex_3.2_5\Debug\Ex_3.2_5.exe (proceso 1328) se cerr� con el c�digo 0.
Para cerrar autom�ticamente la consola cuando se detiene la depuraci�n, habilite Herramientas ->Opciones ->Depuraci�n ->Cerrar la consola autom�ticamente al detenerse la depuraci�n.
Presione cualquier tecla para cerrar esta ventana. . .*/