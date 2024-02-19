// file name: Source.cpp
// author: Tomás Machín
// date: 03/12/2021
// purpose: run a pregram that accepts a number followed by one space and then a letter within some other conditions
#include <iostream>
using namespace std;
int main() {
	// Dlecalring variables
	double number, Celsius, Fahrenheit;
	char letter;

	// Asking the user to enter a number and then a letter
	cout << "Enter a number "<< endl;
	cin >> number;
	cout << "Enter a letter (f or c) " << endl;
	cin >> letter;

	// Math equations for temperature converaion
	Celsius = ((5.0/9.0) * (number - 32.0));
	Fahrenheit = ((9.0 / 5.0) * number + 32.0);

	// Conditions for conversion the temperature
	if (letter == 'f') {
		cout << "The temperature is " << Celsius << " celsius" << endl;
	}
	else if (letter == 'c') {
		cout << "The temperature is " << Fahrenheit << " fahrenheit" << endl;
	}

	// Reminding the user that other letters than f or c won't work 
	else
		cout << "error" << endl;
	system("pause");
	return 0;
}/*
 Enter a number
50
Enter a letter (f or c)
f
The temperature is 10 celsius
Enter a number
45
Enter a letter (f or c)
c
The temperature is 113 fahrenheit
Enter a number
100
Enter a letter (f or c)
h
error
Presione una tecla para continuar . . .
*/