// file name: source.cpp
// author: tomas machin
// date: 04/23/2021
// purpose: Write, compile, and run a C++ program to input eight integer numbers into an
//			array named grade.As each number is input, add the numbers to a total.
#include <iostream>
using namespace std;


int main()
{
	// declaration of variables and their values
	const int NUMELS = 8;
	int i, grade[NUMELS], total = 0, average;

	// declaration of two for different statement
	for (i = 1; i <= NUMELS; i++)    // Enter the grades
	{
		cout << "Enter a grade: ";
		cin >> grade[i];
	}
	cout << endl;
	for (i = 1; i <= 8; i++) {   // Print the grades
		cout << grade[i] << " " << endl;
		total = total + grade[i];
		average = total / i;


	}
	// thext show the output to the user
	cout << "The average is " << endl;
	cout << average << endl;

	system("PAUSE");

	return 0;

}/*
 Enter a grade: 81
Enter a grade: 65
Enter a grade: 72
Enter a grade: 23
Enter a grade: 99
Enter a grade: 54
Enter a grade: 41
Enter a grade: 05

81
65
72
23
99
54
41
5
The average is
55
Presione una tecla para continuar . . .*/