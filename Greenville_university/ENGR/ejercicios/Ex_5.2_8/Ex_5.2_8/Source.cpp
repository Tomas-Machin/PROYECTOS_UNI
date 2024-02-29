// file name: Source.cpp
// author: Tomás Machín
// date: 03/26/2021	
// purpose: run a program that converts celsius to fahrenheit 

#include <iostream>
using namespace std;
int main()
{
	// declaration of variables
	int StartCelsius;
	int Maxnumber;
	double increment;
	double Celsius, Fahrenheit;

	// text shown to the user to ask for any celsius value, number od¡f conversions and increment between values
	cout << "Enter starting Celsius value" << endl;
	cin >> StartCelsius;
	cout << "Enter the number of conversions to be made" << endl;
	cin >> Maxnumber;
	cout << "Enter the increment between Celsius values" << endl;
	cin >> increment;

	// declaration of starting value
	Celsius = StartCelsius;

	// declaration of a while statement to run the number of times the user asked for
	while (Celsius <= Maxnumber) {

		Fahrenheit = ((9.0 / 5.0) * Celsius + 32.0);
		cout << Celsius << endl;
		cout << Fahrenheit << endl;
		Celsius = Celsius + increment;
	}
	system("PAUSE");
	return 0;
}/*
 Enter starting Celsius value
2
Enter the number of conversions to be made
3
Enter the increment between Celsius values
5
2
35.6
Presione una tecla para continuar . . .*/
