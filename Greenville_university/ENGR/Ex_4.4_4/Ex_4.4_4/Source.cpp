// file name: Source.cpp
// autjor: Tomás Machín
// date: 03/12/2021
// purpose: Rewrite a code using switch statement
#include <iostream>
using namespace std;
int main() 
{
	// Declaring integer and code
	char marcode;
	
	// Asking the user to enter a letter
	cout << "Enter a capital letter (M,S,D or W) " << endl;
	cin >> marcode;

	switch (marcode) { // start of compound statement 

	case 'M': // Terminated with a colon
		cout << "Individual is married." << endl; // Text shown if the condition is true
		break;
	case 'S': // Terminated with another colon
		cout << "Individual is single" << endl; // Text shown if the condition is true
		break;
	case 'D': // Terminated with another colon
		cout << "Individual is divorced" << endl; // Text shown if the condition is true
		break;
	case 'W': // Terminated with another colon
		cout << "Individual is widowed" << endl; // Text shown if the condition is true
		break;
		// Text shown if none of the other condition are met
	default:
		cout << "Nothing" << endl;
	}
	return 0;
} /*
  Enter a capital letter (M,S,D or W)
M
Individual is married.

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.4_4\Debug\Ex_4.4_4.exe (proceso 1568) se cerró con el código 0.
Para cerrar automáticamente la consola cuando se detiene la depuración, habilite Herramientas ->Opciones ->Depuración ->Cerrar la consola automáticamente al detenerse la depuración.
Presione cualquier tecla para cerrar esta ventana. . .

Enter a capital letter (M,S,D or W)
S
Individual is single

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.4_4\Debug\Ex_4.4_4.exe (proceso 15100) se cerró con el código 0.
Presione cualquier tecla para cerrar esta ventana. . .

Enter a capital letter (M,S,D or W)
D
Individual is divorced

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.4_4\Debug\Ex_4.4_4.exe (proceso 11352) se cerró con el código 0.
Presione cualquier tecla para cerrar esta ventana. . .

Enter a capital letter (M,S,D or W)
W
Individual is widowed

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.4_4\Debug\Ex_4.4_4.exe (proceso 14488) se cerró con el código 0.
Presione cualquier tecla para cerrar esta ventana. . .

Enter a capital letter (M,S,D or W)
R
Nothing

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.4_4\Debug\Ex_4.4_4.exe (proceso 8440) se cerró con el código 0.
Presione cualquier tecla para cerrar esta ventana. . .*/