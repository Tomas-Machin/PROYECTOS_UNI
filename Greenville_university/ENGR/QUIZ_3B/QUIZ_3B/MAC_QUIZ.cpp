#include <iostream>
#include <iomanip>
using namespace std;
int main()
{
	double total;
	total = 4.2 + 19.02 + 122.07;
	cout << '|' << setw(10) << fixed << setprecision(2) << 4.2 //places another a second decimal number in order to make the number mach the other
		<< '|' << endl;
	cout << '|' << setw(10) << fixed << 19.02
		<< '|' << endl;
	cout << '|' << setw(10) << fixed << 122.07
		<< '|' << endl;
	cout << '|' << setw(10) << fixed << "------" << '\n';
	cout << '|' << setw(10) << fixed << total
		<< '|' << endl; 
	system("pause");
	return 0;
}
/*
|      4.20|
|     19.02|
|    122.07|
|    ------
|    145.29|
Presione una tecla para continuar . . .*/