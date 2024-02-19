// file name:  source.cpp
// author: tomas machin
// date: 04/23/2021
// purpose: Repeat Exercise 6a, but after the data has been entered, have your program display it in the form given
#include <iostream>
using namespace std;

int main()
{
	// declaration of variables and their values
	const int NUMELS = 9;
	int i, prices[NUMELS];

	// declaration of 4 different for statement
	for (i = 0; i < NUMELS; i++)    // Enter the grades
	{

		cout << "Enter a price: ";
		cin >> prices[i];
	}
	cout << endl;
	for (i = 0; i < 3; i++) {   // Print the grades
		cout << prices[i] << " ";
	}
	cout << endl;
	for (i = 3; i < 6; i++) {   // Print the grades
		cout << prices[i] << " ";
	}
	cout << endl;
	for (i = 6; i < NUMELS; i++) {   // Print the grades
		cout << prices[i] << " ";
	}
	cout << endl;

	system("PAUSE");
	return 0;

}/*
 Enter a price: 168
Enter a price: 34
Enter a price: 68413
Enter a price: 816
Enter a price: 742
Enter a price: 68
Enter a price: 15
Enter a price: 615
Enter a price: 341

168 34 68413
816 742 68
15 615 341
Presione una tecla para continuar . . .*/