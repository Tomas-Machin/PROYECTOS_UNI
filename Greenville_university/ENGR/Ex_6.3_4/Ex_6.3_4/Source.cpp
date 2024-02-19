// file name: source.cpp
// author: tomas machin
// date: 04/16/2021
// purpose: Write a function named change() that has an integer parameter and six integer
//			reference parameters named hundreds, fifties, twenties, tens, fives, and ones.
//			 Then include it on a working program.

#include <iostream>
using namespace std;

void change(int, int&, int&, int&, int&, int&, int&); // the function prototype
int main()
{
	// declaration of integers
	int num, num2, num3, num4, num5, num6, num7;

	//text shown to the user asking for a number
	cout << "Enter your number" << endl;
	cin >> num;

	// declaration of the function chaneg() requested
	change(num, num2, num3, num4, num5, num6, num7);
	cout << "You get back " << num2 << " hundreds" << endl;
	cout << "You get back " << num3 << " fifties" << endl;
	cout << "You get back " << num4 << " twenties" << endl;
	cout << "You get back " << num5 << " tens" << endl;
	cout << "You get back " << num6 << " fives" << endl;
	cout << "You get back " << num7 << " ones" << endl;




	system("PAUSE");
	return 0;

}
// definitin of the function change()
void change(int parameter, int& hundreds, int& fifties, int& twenties, int& tens, int& fives, int& ones)
{                    // start of function body

	hundreds = parameter / 100;
	parameter %= 100;
	fifties = parameter / 50;
	parameter %= 50;
	twenties = parameter / 20;
	parameter %= 20;
	tens = parameter / 10;
	parameter %= 10;
	fives = parameter / 5;
	parameter %= 5;
	ones = parameter;

	return;            // return statement
}
/*
Enter your number
1564
You get back 15 hundreds
You get back 1 fifties
You get back 0 twenties
You get back 1 tens
You get back 0 fives
You get back 4 ones
Presione una tecla para continuar . . .*/
