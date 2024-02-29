// file name: source.cpp
// author: Tomás Machín
// date: 03/26/2021
// purpose: modify exercise 9a to request the number of data items to be entered and converted first

#include <iostream>
using namespace std;
int main()
{
	// declaration of variables 
	int MAXNUMS;
	double liters, gallons;

	// text shown to the use to enter a number and a code that runs that
	cout << "Enter number of data items to be enter and converted:" << endl;
	cin >> MAXNUMS;

	// text shown to the user explaining what the user has to do
	cout << "\nThis program wil ask you to enter " << MAXNUMS << " numbers.\n";

	//declaration of for statement to run the program <= MAXNUMS times
	for (gallons = 0; gallons <= MAXNUMS; gallons++)
	{
		//text shown to the user to enter a gallon value
		cout << "\nEnter a number: ";
		cin >> gallons;
		liters = 3.785 * gallons;
		cout << liters << endl;
		cout << gallons << endl;
	}
	system("PAUSE");
	return 0;
}/*
 Enter number of data items to be enter and converted:
8

This program wil ask you to enter 8 numbers.

Enter a number: 1
3.785
1

Enter a number: 2
7.57
2

Enter a number: 3
11.355
3

Enter a number: 4
15.14
4

Enter a number: 5
18.925
5

Enter a number: 6
22.71
6

Enter a number: 7
26.495
7

Enter a number: 8
30.28
8
Presione una tecla para continuar . . .*/
