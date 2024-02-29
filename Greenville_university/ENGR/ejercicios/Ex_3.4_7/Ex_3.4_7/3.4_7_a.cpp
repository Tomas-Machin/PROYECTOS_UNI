// file name: 3.4_7_a.pp
// programmer name: Tomas Machin
// date created: 03-01-2021
// short description: compile and run a C++ program that displays the following prompts: 
	//enter a number, enter a second number, enter a third number, enter a fourth number.
#include <iostream>
using namespace std;
int main() 
{
	//declaration of variables
	double number, second_number, third_number, fourth_number, average;
	//code and its conditions
	cout << "Enter a number:" << endl;
	cin >> number;
	cout << "Enter a second number:" << endl;
	cin >> second_number;
	cout << "Enter a third number:" << endl;
	cin >> third_number;
	cout << "Enter a fourth number:" << endl;
	cin >> fourth_number;
	//declaration of math equation
	average = (number + second_number + third_number + fourth_number) / 4;
	cout << "\n" << average << endl;
	return 0;
}
/*Enter a number:
100
Enter a second number:
100
Enter a third number:
100
Enter a fourth number:
100

100
Enter a number:
100
Enter a second number:
0
Enter a third number:
100
Enter a fourth number:
0

50

C:\Users\machi\source\repos\Project1\Debug\Project1.exe (proceso 9652) se cerró con el código 0.
Para cerrar automáticamente la consola cuando se detiene la depuración, habilite Herramientas ->Opciones ->Depuración ->Cerrar la consola automáticamente al detenerse la depuración.
Presione cualquier tecla para cerrar esta ventana. . .

C:\Users\machi\source\repos\Ex_3.4_7\Debug\Ex_3.4_7.exe (proceso 1420) se cerró con el código 0.
Para cerrar automáticamente la consola cuando se detiene la depuración, habilite Herramientas ->Opciones ->Depuración ->Cerrar la consola automáticamente al detenerse la depuración.
Presione cualquier tecla para cerrar esta ventana. . .*/