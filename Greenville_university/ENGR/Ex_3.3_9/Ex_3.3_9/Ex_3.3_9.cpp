#include <iostream>
#include <cmath>
using namespace std;
int main() {

	float height, angle, velocity;
	angle = 45 * (3.14 / 180);
	velocity = (7 * 1609);
	height = (.5 * pow(velocity, 2) * pow(sin(angle), 2)) / 9.8;
	cout << "The maximun height reached by the ball is "<< height <<" meters"<< endl;
	return 0;
}
/*The maximun height reached by the ball is 3.23352e+06 meters

C:\Users\machi\source\repos\Ex_3.3_9\Debug\Ex_3.3_9.exe (proceso 18448) se cerr� con el c�digo 0.
Para cerrar autom�ticamente la consola cuando se detiene la depuraci�n, habilite Herramientas ->Opciones ->Depuraci�n ->Cerrar la consola autom�ticamente al detenerse la depuraci�n.
Presione cualquier tecla para cerrar esta ventana. . .*/