#include <iostream>
using namespace std;
int main()
{
    int num1 = 15;
    int num2 = 18;
    double total;
    double average;
    total = num1 + num2;
    average = total / 2;
    cout << "The average of " << num1
        << " and "<< num2 << " is "
        << average << endl;
    return 0;
}
//The varable total should be declared a floating point.
/*The average of 15 and 18 is 16.5

C:\Users\machi\source\repos\Ex_2.3_12\Debug\Ex_2.3_12.exe (proceso 16588) se cerr� con el c�digo 0.
Para cerrar autom�ticamente la consola cuando se detiene la depuraci�n, habilite Herramientas ->Opciones ->Depuraci�n ->Cerrar la consola autom�ticamente al detenerse la depuraci�n.
Presione cualquier tecla para cerrar esta ventana. . .
*/