// file name: Source.cpp
// author: Tomás Machín 
// date: 03/19/2021
// purpose: run a program that show the deprecitation of a machine for 7 years. 
#include <iostream>
#include <iomanip>
using namespace std;
int main()
{
	// declaration of constant variables and other variables
	double const MAX = 7;
	double const STARTVAL = 1;
	double const STEPSIZE = 1;
	double year, End_year_value;
	double depreciation, Accumulated_Depreciation;

	// text shown to the user when the program runs
	cout << "YEAR     DEPRECIATION     END-OF-YEAR VALUE     ACCUMULATED DEPRECIATION \n"
		<< "------ / -------------- / ------------------- / -------------------------- \n";
	year = STARTVAL;
	// set output formats for floating-point numbers only
	cout << setw(10)<< fixed<< setprecision(2);
	// declaration of values of deprecitacion for those 7 years
	while (year <= MAX)
	{
		double End_year_value = 28000;
		depreciation = 4000;
		Accumulated_Depreciation = year * depreciation;
		End_year_value = End_year_value - Accumulated_Depreciation;
		cout << setw(5) << year
			<< setw(15) << depreciation
			<< setw(17) << End_year_value
			<< setw(26) << Accumulated_Depreciation << endl;
		year = year + STEPSIZE;

	}
	system("PAUSE");
	return 0;
}/*
 YEAR     DEPRECIATION     END-OF-YEAR VALUE     ACCUMULATED DEPRECIATION
------ / -------------- / ------------------- / --------------------------
 1.00        4000.00         24000.00                   4000.00
 2.00        4000.00         20000.00                   8000.00
 3.00        4000.00         16000.00                  12000.00
 4.00        4000.00         12000.00                  16000.00
 5.00        4000.00          8000.00                  20000.00
 6.00        4000.00          4000.00                  24000.00
 7.00        4000.00             0.00                  28000.00
Presione una tecla para continuar . . .*/