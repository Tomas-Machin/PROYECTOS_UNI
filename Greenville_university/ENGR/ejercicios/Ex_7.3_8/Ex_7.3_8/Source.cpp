// file name: source.cpp
// author: tomsa machin
// date: 04/30/2021
// purpose:  run a program that includes two functions named calcavg() and variance().
//			 The calcavg() function should calculateand return the average of values stored
//			  in an array named testvals. The array should be declared in main() and
//			 include the values 89, 95, 72, 83, 99, 54, 86, 75, 92, 73, 79, 75, 82, and 73. The variance()
//			 function should calculate and return the variance of the data.
#include <iostream>
using namespace std;

// definition of the calcavg function
double calcavg(int* testvals) {
	int total = 0;
	int average;
	for (int i = 0; i < 14; i++) {
		total = total + testvals[i];
	}
	average = (total / 14);
	return average;
}
// definition of the variance function
double variance(int* testvals, double a) {
	int total = 0;
	for (int i = 0; i < 14; i++) {
		total = total + ((testvals[i] - a) * (testvals[i] - a));
	}
	return (total / 14);
}

int main() 
{
	// declaration of the array and its values 
	int testvals[] = { 89, 95, 72, 83, 99, 54, 86, 75, 92, 73, 79, 75, 82, 73 };
	double a = calcavg(testvals);

	// text showing the output to the user
	cout << "Your average is " << calcavg(testvals) << endl;
	cout << "Your Variance is " << variance(testvals, a) << endl;

	system("PAUSE");
	return 0;
}/*
 Your average is 80
Your Variance is 124
Presione una tecla para continuar . . .*/
