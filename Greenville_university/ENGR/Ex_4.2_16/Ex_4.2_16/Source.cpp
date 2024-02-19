// file name: Source.cpp
// author name: Tomás Machín
// date (test date): 03/03/2021
// purpose: ask the user to imput two numbers and run the different
//			conditions depending on the numbers entered
#include <iostream>
using namespace std;
int main()
{
	// declaration of variables

	double number1, number2;

	// text shown asking the user to enter the first number
	cout << "Enter your first number" << endl;
	cin >> number1;
	// text shown to ask the user to enter the second number
	cout << "Enter your second number" << endl;
	cin >> number2;
	// texts shown to the user depending on wich statement was true (if or else)
	if (number1 > number2) {
		cout << "The first number is greater" << endl;
	}
	else { cout << "The first number is not greater than the second" << endl; }
	return 0;
}
/*Example:
Enter your first number
-1
Enter your second number
0
The first number is not greater than the second

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.2_16\Debug\Ex_4.2_16.exe (proceso 3980) se cerró con el código 0.
Para cerrar automáticamente la consola cuando se detiene la depuración, habilite Herramientas ->Opciones ->Depuración ->Cerrar la consola automáticamente al detenerse la depuración.
Presione cualquier tecla para cerrar esta ventana. . .
 */
