// file name: source.cpp
// author: tomas machin
// date: 04/23/2021
// purpose: Write a function named liquid() that has an integer number parameter and
//		    reference parameters named gallons, quarts, pints, and cups
#include <iostream>
using namespace std;

// declaration of void function
void liquid(int, int&, int&, int&, int&); // the function prototype
int main()
{
	// declaration of variabes
	int num, num2, num3, num4, num5;

	// texts shown to the user
	cout << "Enter your number" << endl;
	cin >> num;

	liquid(num, num2, num3, num4, num5);
	cout << "You get back " << num2 << " gallons" << endl;
	cout << "You get back " << num3 << " quarts" << endl;
	cout << "You get back " << num4 << " pints" << endl;
	cout << "You get back " << num5 << " cups" << endl;




	system("PAUSE");
	return 0;

}
// definition of the void statement
void liquid(int total, int& gallons, int& quarts, int& pints, int& cups)
{                    // start of function body

	gallons = total / 16;
	total %= 16;
	quarts = total / 4;
	total %= 4;
	pints = total / 2;
	total %= 2;
	cups = total;

	return;            // return statement
}/*
 Enter your number
156
You get back 9 gallons
You get back 3 quarts
You get back 0 pints
You get back 0 cups
Presione una tecla para continuar . . .*/
