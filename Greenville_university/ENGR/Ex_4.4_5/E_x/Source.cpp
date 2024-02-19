// file name: Source.cpp
// author: Tomás Machín
// date: 03/19/2021
// puspose: Enter a number, then a letter and follow certain conditions given beforehand.

#include <iostream>
using namespace std;
int main() {
	// declaration of variables and char code
	double number, Celsius, Fahrenheit;
	char letter;

	// text shown to the user to enter a number 
	cout <<"Enter a number:"<< endl;
	cin >> number;
	cout << "Enter a letter (f or c)" << endl;
	cin >> letter;

	// declaration of math equations of conversion from celsius to fahrenheit and viceversa
	Celsius = ((5.0/9.0) * (number - 32));
	Fahrenheit = ((9.0/5.0) * number + 32.0);

	// declaration of switch statements/conditions of the program to run
	switch (letter) {
	case 'f': // text shown if f letter was entered
		cout <<"The temperature is "<< Celsius << " Celsius" << endl;
	case 'c': // text shown if c letter was entered  
		cout <<"The temperature is " << Fahrenheit << " Fahrenheit" << endl;
	}
	system("pause");
	return 0;
}/*Enter a number:
45
Enter a letter (f or c)
c
The temperature is 113 Fahrenheit
Enter a number:
158
Enter a letter (f or c)
f
The temperature is 70 Celsius
The temperature is 316.4 Fahrenheit (I don't know why it is also calculating the temperature in fahrenheit could you please tell me why?)
Enter a number:
45
Enter a letter (f or c)
e
Presione una tecla para continuar . . .
 */