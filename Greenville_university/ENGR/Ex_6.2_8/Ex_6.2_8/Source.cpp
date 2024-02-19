// fille name: source.cpp
// author: tomas machin
// date: 04/16/2021
// purpose: Write a function named daycount() that accepts a month, day, and year as its
//			input arguments; calculates an integer representing the total number of days from the turn of
//			the century to the date that’s passed;and returns the calculated integer to the calling function
//			Then include the function on a working program.
#include <iostream>
using namespace std;

double daycount(int, double, double); // the function prototype
int main()
{
	// declaration of variables
	double num, num2, num3;

	// text shown to the user asking for different values (x3)
	cout << "Enter your month" << endl;
	cin >> num;
	cout << "Enter your day " << endl;
	cin >> num2;
	cout << "Enter the year" << endl;
	cin >> num3;

	// text shown to the user input of the daycount( ) statement
	cout << "The total number of day passed since the first of the year is " << daycount(num, num2, num3) << endl;

	system("PAUSE");
	return 0;

}
// definition of the daycount() satement
double daycount(int month, double day, double year)
{
	if (month % 30 == 0) {
		month = 30;
	}
	else if (month == 1) {
		month = 0;
	}
	else { month = (month - 1) * 30; } // only one I needed *facepam* lol

	double value = (day)+(month)+(year * 365);

	return value;
}
/*
Enter your month
2
Enter your day
1
Enter the year
50
The total number of day passed since the first of the year is 18281
Presione una tecla para continuar . . .*/
