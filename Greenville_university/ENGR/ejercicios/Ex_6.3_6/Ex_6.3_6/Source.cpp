// file name: source.cpp
// author: tomas machin
// date: 04/16/2021
// purpose:Write a function named yearCalc() that has an integer parameter representing
//		   the total number of days from the date 1 / 1 / 2000 and reference parameters named year, month, and day.

#include <iostream>
using namespace std;

void yearCalc(int, int&, int&, int&); // the function prototype
int main()
{
	// declaration of integers
	int num, num2, num3, num4;

	//text shown to the user asking for a value
	cout << "Enter your number" << endl;
	cin >> num;

	// declaration of the functuon yearCalc( ) ad texts shown to the user
	yearCalc(num, num2, num3, num4);
	cout << "You get back " << num2 << " years" << endl;
	cout << "You get back " << num3 << " months" << endl;
	cout << "You get back " << num4 << " days" << endl;




	system("PAUSE");
	return 0;

}
// definitin of the functin yearCalc( )
void yearCalc(int total, int& year, int& month, int& days)
{                    // start of function body

	year = total / 365;
	total %= 365;
	month = total / 30;
	total %= 30;
	days = total;

	return;            // return statement
}
/*
Enter your number
8248
You get back 22 years
You get back 7 months
You get back 8 days
Presione una tecla para continuar . . .*/