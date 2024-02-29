// file name: MAC_QUIZ7.cpp
// author: Tomás Machín
// date: 03/22/2021
// purpose:
#include <iostream>
#include <iomanip>
using namespace std;
int main()
{
	//declaration of variables
	double pints;
	double gallons;
	double liters;
	double quarts;
	char letter;

	// text shown to the user to enter a number and then a letter within some instructions
	cout << " Enter a number and then a letter" << endl;
	cout << " L or l for liters" << endl;
	cout << " Q or q for quarts" << endl;
	cout << " G or g for gallons" << endl;
	cin >> pints >> letter;

	// math equations for conversion between pints, litters, gallons and quarts
	liters = pints * 0.473167;
	cout << setw(10) << fixed << setprecision(3); // setting decimal accuracy to three decimal places
	quarts = pints / 2;
	cout << setw(10) << fixed << setprecision(3);
	gallons = quarts / 4;
	cout << setw(10) << fixed << setprecision(3);

	// declarin switch statement for the text to show up depending on the letter entered
	switch (letter){
	case 'q': // text show if the letter q is entered
		cout << pints << " pints is equal to " << quarts << " quarts" << endl;
		break;
	case 'l': // text shown if the letter l is entered
		cout << pints << " pints is equal to " << liters << " liters" << endl;
		break;
	case'g': // text shown if the letter g is entered 
		cout << pints << " pints is equal to " << gallons << " gallons" << endl;
	}
	
	system("pause");
	return 0;
}