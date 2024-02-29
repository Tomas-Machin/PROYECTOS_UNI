// file name: source.cpp
// author; tomas machin
// date: 04/30/2021
// purpose: run a program that uses an array declaration statement to initialize the given numbers in an array.
#include <iostream>
using namespace std;

int main()
{

	// declaration of variables and values od the array
	double slopes[] = { 17.24,25.63,5.94,33.92,3.71,32.84,35.93,18.24,6.92 };
	double max = slopes[0];

	// declaration of two for statement
	for (int i = 0; i < 8; i++) {
		if (slopes[i] > max) {
			max = slopes[i];

		}

	}
	double min = slopes[0];
	for (int i = 0; i < 8; i++) {
		if (slopes[i] < min) {
			min = slopes[i];
		}

	}
	// output of the code shown to the user
	cout << max << endl;
	cout << min << endl;

	system("PAUSE");

	return 0;
}/*
 35.93
3.71
Presione una tecla para continuar . . .*/
