// file name: source.cpp
// author: tomas machin
// date: 04/09/2021
// purpose: run a program to reverse the digits of a positive integer number

#include <iostream>
using namespace std;
int main()
{
	// declaration of variables
	int num, rev;
	//text shown to the user to explain what he need to do
	cout << "Enter your number to reverse" << endl;
	cin >> num;
	// declaration od+f do ststement for different values
	do {

		rev = (num % 10);
		cout << rev;
		num = (num / 10);
	} while (num != 0);


	system("PAUSE");
	return 0;
}/*
 Enter your number to reverse
61665510
01556616
Presione una tecla para continuar . . .*/

