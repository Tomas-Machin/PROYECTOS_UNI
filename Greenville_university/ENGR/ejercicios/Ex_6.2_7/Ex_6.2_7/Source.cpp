// file name: source.cpp
// author: tomas machin
// date: 04/16/2021
// purpose: Write a function named totamt() that uses four parameters named quarters,
//			dimes, nickels, and pennies, which represent the number of each of these coins in a piggybank. 
//			Then include in a working program.

#include <iostream>
using namespace std;

double totamt(double, double, double, double); // the function prototype
int main()
{
	// declaration of variables 
		double num, num2, num3, num4;

		// texts shown to the user asking what he needs to do (x4)
		cout << "Enter your number" << endl;
		cin >> num;
		cout << "Enter your other number" << endl;
		cin >> num2;
		cout << "Enter your third number" << endl;
		cin >> num3;
		cout << "Enter your forth number" << endl;
		cin >> num4;
		
		// tet shown to the user of the calculated volume
		cout << "The volume of a cylinder is  " << totamt(num, num2, num3, num4) << endl;

		system("PAUSE");
		return 0;

}
// definition if the totamt( ) statement 
double totamt(double quarters, double dimes, double nickels, double pennies)
{
		double value = (quarters * .25) + (dimes * .10) + (nickels * .05) + (pennies * .01);

		return value;
}
/*
Enter your number
2
Enter your other number
45
Enter your third number
8
Enter your forth number
3
The volume of a cylinder is  5.43
Presione una tecla para continuar . . .*/
