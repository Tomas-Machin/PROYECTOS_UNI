// file nema: Source.cpp
// author: Tomas Machin
//date: 04/09/2021
// purpose: run aprogram that continuously requests a grade to be entered

#include <iostream>
using namespace std;
int main()
{
	// declaration of variables
	int grade, total = 0;

	// declaration of statements to show the proper output
	do {
		for (int i = 1; i <= 5; i++) {
			cout << "Enter your grade" << endl;
			cin >> grade;
			if (grade > 0 && grade <= 100) {
				total = total + grade;
				cout << total << endl;
			}
			else if (grade == 999) {
				grade = 20;
			}
			else { cout << "invalid number" << endl; }
		}
	} while (true);


	system("PAUSE");
	return 0;
}/*
 Enter your grade
999
Enter your grade
999
Enter your grade
120
invalid number
Enter your grade
99
99
Enter your grade
49
148
Enter your grade
4
152
Enter your grade
56456
invalid number
Enter your grade*/