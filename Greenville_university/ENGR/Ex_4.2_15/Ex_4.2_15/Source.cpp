// file name: Source.cpp
// author name: Tomás Machín
// date: 03/03/2021
// short summary: determine whether an entered character is a lowercase or an uppercase letter

#include <iostream>
using namespace std;
int main() 
{
	//declaration of variables
	int position;
	char character;

	cout << "Enter your character" << endl;
	cin >> character;

	//setting the conditions for each case (lowercase or uppercase letter)
	//with some formulas in order to know also the position of the letter used in the code

	if (character >= 'a' && character <= 'z') {
		cout << "The character just entered is a lowercase letter." << endl;

		position = (character - 'a') + 1;
		cout << "the position is " << position << endl;
	}
	else if (character >= 'A' && character<= 'Z') {
		cout << "The character just entered is a uppercase letter." << endl;

		position = (character - 'A') + 1;
		cout << "The position is " << position << endl;
	}
	else { cout << "The character just entered is not a lowercase or uppercase letter." << endl; }
	return 0;
}/*Example
Enter your character
l
The character just entered is a lowercase letter.
the position is 12

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.2_15\Debug\Ex_4.2_15.exe (proceso 336) se cerró con el código 0.
Para cerrar automáticamente la consola cuando se detiene la depuración, habilite Herramientas ->Opciones ->Depuración ->Cerrar la consola automáticamente al detenerse la depuración.
Presione cualquier tecla para cerrar esta ventana. . .
 */