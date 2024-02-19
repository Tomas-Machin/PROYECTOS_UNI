// file name:  source.cpp
// author: tomas machin
// date: 04/23/2021
// purpose: Write, compile, and run a C++ program to input the following values into an
//			array named prices : 10.95, 16.32, 12.15, 8.22, 15.98, 26.22, 13.54, 6.45, and 17.59.
#include <iostream>
using namespace std;


int main()
{
	// declaration of variables and their values
	const int NUMELS = 9;
	int i, prices[NUMELS];

	// declaration of for statement
	for (i = 0; i < NUMELS; i++)    // Enter the grades
	{
		cout << "Enter a price: ";
		cin >> prices[i];
	}
	cout << endl;

	// declaration of a second for statement
	for (i = 0; i < NUMELS; i++)    // Print the grades
		cout << "price [" << i << "] is " << prices[i] << endl;

	system("PAUSE");
	return 0;

}/*
 Enter a price: 918
Enter a price: 61
Enter a price: 66
Enter a price: 18
Enter a price: 656
Enter a price: 186
Enter a price: 172
Enter a price: 25
Enter a price: 37

price [0] is 918
price [1] is 61
price [2] is 66
price [3] is 18
price [4] is 656
price [5] is 186
price [6] is 172
price [7] is 25
price [8] is 37
Presione una tecla para continuar . . .*/