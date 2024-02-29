// file name: Source.cpp
// author name: Tomás Machín
// date (etst date): 03/03/2021
// purpose: calculate the grade (in letters) of a student following a schedule given
//			Greater than or equal to 90 A
//			Less than 80 but greater than or equal to 70 C
//			Less than 70 but greater than or equal to 60 D
//			Less than 60 F

#include <iostream> 
using namespace std;
int main() 
{
	// text shown to the user to enter a number
	cout << "Enter a number:" << endl;

	// declaration of variables 
	double grade;
	cin >> grade;
	// stating the conditions in order to calculate the grade
	// getting an A grade
	if (grade >= 90) {
		cout << 'A' << endl;
		cout << "Your grade is an A" << endl;
		cout << "Excellent" << endl;
	}
	// getting a B grade
	else if (grade < 90 && grade >= 80) {
		cout << "B" << endl;
		cout << "Your grade is a B" << endl;
		cout << "You can still do better" << endl;
	}
	// getting a C grade
	else if (grade < 80 && grade >= 70) {
		cout << 'C' << endl;
		cout << "Your grade is a C" << endl;
		cout << "You can do better" << endl;
	}
	// getting a D grade
	else if (grade < 70 && grade >= 60) {
		cout << 'D' << endl;
		cout << "Your grade is a D" << endl;
		cout << "You can do much better" << endl;

	}
	// gettiing an F grade
	else if (grade < 60) {
		cout << 'F' << endl;
		cout << "Your grade is an F" << endl;
		cout << "You failed man :(" << endl;
	}
	return 0;
}/*Example:
Enter a number:
21
F
Your grade is an F
You failed man :(

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.3_3\Debug\Ex_4.3_3.exe (proceso 8224) se cerró con el código 0.
Para cerrar automáticamente la consola cuando se detiene la depuración, habilite Herramientas ->Opciones ->Depuración ->Cerrar la consola automáticamente al detenerse la depuración.
Presione cualquier tecla para cerrar esta ventana. . .
 */