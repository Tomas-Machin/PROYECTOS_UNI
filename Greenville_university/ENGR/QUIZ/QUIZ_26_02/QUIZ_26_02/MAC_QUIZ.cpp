//file name : MAC_QUIZ.cpp
// programmer name : Tomas Machin
// date created : 02-26-2021
//date of last revision : 02-26-2021
//details of the revision : none
//short description : calculate the volume of a cylinder

#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;
int main()
{ 
	// Program description

	cout << "This program will calculate the volume of a cylinder" << endl;

	// Declaration of the variables and their respect value

	const double PI = 3.14;
	double radius = 3.1;
	double height = 12.4;

	// Declaration of variable and math equation that will calculate the area of the base

	double baseArea = PI * pow(radius, 2);

	cout << "The area of the base of the cylinder is ";
	cout << '|' << setw(10) << fixed << setprecision(2) << baseArea // Setting two decimal accuracy to the number calculated
		<< '|' << endl; 
	

	//Declaration of the variable and math equation that will calculate the volume

	double volume = baseArea * height;
	cout << "The volume of the cylinder is ";
	cout << '|' << setw(10) << fixed << setprecision(2) << volume // Setting two decimal accuracy to the number calculated
		<< '|' << endl; 
	
	system("pause");
	return 0;
}
/*
This program will calculate the volume of a cylinder
The area of the base of the cylinder is |     30.18|
The volume of the cylinder is |    374.17|
Presione una tecla para continuar . . .
*/