// file name: source.cpp
// author: tomas maschin
// date: 04/09/2021
// purpose: Write a function called mult() that accepts two double-precision numbers as
//			parameters, multiplies these two numbers, and displays the result
  
#include <iostream>
using namespace std;
// declaration of variables
double mult(double num1, double num2)
{
	// texts shown to the user ex`plaining what to do in both cases
	cout << "Enter a number: ";
	cin >> num1;
	cout << "Enter a second number: ";
	cin >> num2;
	
	// declarating more variables
	double r;
	r = num1 * num2;
	return (r);
}
// amin function
int main()
{
	// declaration of variables
	double z;
	z = mult(0, 0);
	cout << "The result is " << z << endl;

	system("pause");
	return 0;
}/*
 Enter a number: 12
Enter a second number: 90
The result is 1080
Presione una tecla para continuar . . .*/