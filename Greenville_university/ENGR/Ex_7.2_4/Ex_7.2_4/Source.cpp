// file name: source.cpp
// author: tomas machin
// date: 04/30/2021
// purpose: run a program that stores the following numbers in an
//			array named prices : 9.92, 6.32, 12.63, 5.95, and 10.29.The program should also create two
//			arrays named units and amounts, each capable of storing five double - precision numbers.

#include <iostream>
#include <iomanip>
using namespace std;

int main()

{
	// declaration of variables and values of the array
	const int NUM = 5;
	double prices[] = { 9.92, 6.32, 12.63, 5.95, 10.29 };
	double units[5];
	double amounts[5];
	double total = 0;

	// declaration of two for statements
	for (int i = 0; i < NUM; i++) {
		cout << "Enter number of units" << endl;
		cin >> units[i];
		amounts[i] = prices[i] * units[i];
		total = total + amounts[i];

	}

	// structure of the output
	cout << "Price          Units         Amount" << endl;

	for (int i = 0; i < NUM; i++) {
		cout << prices[i] << setw(15) << units[i] << setw(15) << amounts[i] << endl;
	}
	// output shown to the user
	cout << "Total:" << total << endl;

	system("PAUSE");

	return 0;
}/*
Enter number of units
9.92
Enter number of units
6.32
Enter number of units
12.63
Enter number of units
5.95
Enter number of units
10.29
Price          Units         Amount
9.92           9.92        98.4064
6.32           6.32        39.9424
12.63          12.63        159.517
5.95           5.95        35.4025
10.29          10.29        105.884
Total:439.152
Presione una tecla para continuar . . . */