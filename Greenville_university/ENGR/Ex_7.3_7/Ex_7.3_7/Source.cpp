// file name: source.cpp
// author: tomas machin
// date: 04/30/2021
// purpose:  run a program that declares three one-dimensional arrays named price,
//		     quantity, and amount. Each array should be declared in main() and be
//			 capable of holding 10 double - precision numbers. The numbers to store in price are 10.62,
//			 14.89, 13.21, 16.55, 18.62, 9.47, 6.58, 18.32, 12.15, and 3.98. The numbers to store in quantity
//			 are 4, 8.5, 6, 7.35, 9, 15.3, 3, 5.4, 2.9, and 4.8.
#include <iostream>
using namespace std;

// definition of the extend function 
void extend(double* price, double* quantity) {
	const int NUM = 10;
	double amount[NUM];
	for (int i = 0; i < 10; i++) {
		amount[i] = price[i] * quantity[i];
		cout << amount[i] << endl;
	}
	return;
}



int main() 
{
	// declaration of variables and values of the array
	const int NUM = 10;
	double price[] = { 10.62, 14.89,13.21,16.55,18.62,9.47,6.58,18.32,12.15,3.98 };
	double quantity[] = { 4, 8.5,6,7.35,9,15.3,3,5.4,2.9,4.8 };

	// declaration of the extend function
	extend(price, quantity);


	system("PAUSE");
	return 0;
}/*
 42.48
126.565
79.26
121.642
167.58
144.891
19.74
98.928
35.235
19.104
Presione una tecla para continuar . . .*/