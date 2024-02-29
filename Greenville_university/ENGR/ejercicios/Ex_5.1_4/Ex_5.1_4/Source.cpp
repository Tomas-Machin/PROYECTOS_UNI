// file name: Source.cpp
// author: Tomás Machín
// date 03/19/2021
// purpose: convert gallons into liters
#include <iostream>
#include <iomanip>
using namespace std;
int main()
{
	// decldration of constant variables and other variables
	double const MAXCELSIUS = 20;
	double const STARTVAL = 10;
	double const STEPSIZE = 1;
	double gallons;
	double liters;

	// text shown to the user when the program runs
	cout << "GALLONS   LITERS\n"
		<< "------ / ----------\n";
	gallons = STARTVAL;

	// set output formats for floating-point numbers only
	cout << setw(10) << fixed << setprecision(2);

	// declaring the range of numbers of gallons and it's litters value
	while (gallons <= MAXCELSIUS)
	{
		liters = (gallons * 3.78541178);
		cout << setw(4) << gallons << setw(13) << liters << endl;
		gallons = gallons + STEPSIZE;
	}
	system("PAUSE");
	return 0;
}/*
 GALLONS   LITERS
------ / ----------
10.00        37.85
11.00        41.64
12.00        45.42
13.00        49.21
14.00        53.00
15.00        56.78
16.00        60.57
17.00        64.35
18.00        68.14
19.00        71.92
20.00        75.71
Presione una tecla para continuar . . .*/