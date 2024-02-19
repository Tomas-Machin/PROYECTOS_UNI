// file name: MAC_QUIZ6B.cpp
// author: Tomás Machín
// date: 12/03/2021
// purpose: display a program that calculates the perimeter and area of a rectangle
#include <iostream>
#include <cmath>
#include <iomanip>
using namespace std;
int main()
{
	// Introduction of the purpose of the program
	cout << "This program will calculate the perimeter and areaof a rectangle" << endl;
	cout << "with a width and height given previously" << endl;
	cout << "Given the values of width = 34.56 and height = 28.48 the results are:" << endl << '\n';
	// Declaration of variables and their values
	double width = 34.56;
	double height = 28.48;

	// declaration of math equations and their decimals for the final answer
	double perimeter = 2 * width + 2 * height;
	cout << '|' << setw(10) << fixed << setprecision(3) << "The perimeter of the rectangle is " << perimeter<<'\n';

	double area = width * height;
	cout << '|' << setw(10) << fixed << setprecision(3) << "The area of the rectangle is "<< area<<'\n';

	system("pause");
	return 0;
}/*
This program will calculate the perimeter and areaof a rectangle
with a width and height given previously
Given the values of width = 34.56 and height = 28.48 the results are:

|The perimeter of the rectangle is 126.080
|The area of the rectangle is 984.269
Presione una tecla para continuar . . .*/
