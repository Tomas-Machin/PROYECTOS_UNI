// file name: Ex_4.3_13
// programmer name: Tomas Machin
// date created: 02-26-2021
// short description: display the following two prompts (enter a month and a dayof the month)
#include <iostream>
using namespace std;
int main() 
{
	// declaration of variables
	int month, day;
	cout << "Enter a month (use a 1 for Jan, etc.):" << endl;
	cin >> month;
	cout << "Enter a day of the month:" << endl;
	cin >> day;
	if (month > 12 || month < 1) {
		cout << "invalid month has been entered" << endl;
	}
	else if (day < 1 || day > 31) {
		cout << "invalid day has been entered" << endl;
	}
	return 0;
}/*
 Enter a month (use a 1 for Jan, etc.):

Enter a day of the month:


C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.2_13\Debug\Ex_4.2_13.exe (proceso 17748) se cerró con el código 0.
Para cerrar automáticamente la consola cuando se detiene la depuración, habilite Herramientas ->Opciones ->Depuración ->Cerrar la consola automáticamente al detenerse la depuración.
Presione cualquier tecla para cerrar esta ventana. . .*/