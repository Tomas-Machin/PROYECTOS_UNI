// file name: MAC_QUIZ4.CPP
// programmer name: Tomas Machin
// date created: 03-03-2021
// short description: calculate the volume of a circular swimming pool
#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;
int main()
{
	//declaration of variables
	const double PI = 3.14;
	double radius;
	cout << "enter radius value:" << endl;
	cin >> radius;
	if (radius <= 0) {
		cout << "There is no pool" << endl;
	}
	//second declaration of variables
	double average_depth;
	cout << "enter average depth value:" << endl;
	cin >> average_depth;
	if (average_depth <= 0) {
		cout << "There is no pool" << endl;
	}
	//declaration of math equation
	double volume = PI * pow(radius, 2) * average_depth;
	cout << '|' << setw(10) << fixed << setprecision(2) << "The volume of the swimming pool is "<< volume// Setting two decimal accuracy to the number calculated
		<< '|' << endl;
	
	system("pause");
	return 0;
}/*
 enter radius value:
4.23
enter average depth value:
5.7
|The volume of the swimming pool is 320.25|
Presione una tecla para continuar . . .
 */