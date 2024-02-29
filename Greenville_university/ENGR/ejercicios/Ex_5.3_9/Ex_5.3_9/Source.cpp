// file name: source.cpp
// author: Tomás Machín
// date: 03/26/2021
// purpose: run a program that accepts five values of gallons, one at a time and converts each
//			value entered to its liter equivalent before the next value requested

#include <iostream>
using namespace std;
int main()
{
	// declaration of varaiables and values
	int MAXNUMS = 5;
	double liters, gallons;

	// text shown to the user to explain up to how many number the user can eneter at a time
	cout << "\nThis program wil ask you to enter up to " << MAXNUMS << " numbers.\n";

	// declaration of for statement and their respect values
	for (gallons = 0; gallons <= MAXNUMS; gallons++)
	{
		// text shown to the user to enter a number
		cout << "\nEnter a number: ";
		cin >> gallons;
		liters = 3.785 * gallons;
		cout << gallons <<" gallons"<< endl;
		cout << liters <<" litters"<<endl;
		
	}
	system("PAUSE");
	return 0;
}/*
 This program wil ask you to enter up to 5 numbers.

Enter a number: 1
1 gallons
3.785 litters

Enter a number: 2
2 gallons
7.57 litters

Enter a number: 3
3 gallons
11.355 litters

Enter a number: 4
4 gallons
15.14 litters

Enter a number: 5
5 gallons
18.925 litters
Presione una tecla para continuar . . .*/