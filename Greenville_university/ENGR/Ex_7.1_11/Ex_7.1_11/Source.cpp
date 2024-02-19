// file name: source.cpp
// author: tomas machin
// date: 04/23/2021
// purpose: run a program that specifies three one-dimensional arrays named price, amount, and total.
#include <iostream>
#include <iomanip>
using namespace std;


int main()
{
	// declaration of variables and their values
	const int SIZE = 10;
	const int MAX = 10;
	const int MAX2 = 10;
	int i, price[SIZE], amount[MAX], total[MAX2];

	// declaration of two different for statements
	for (i = 0; i < SIZE; i++)
	{
		cout << "Enter price" << endl;
		cin >> price[i];

	}
	for (i = 0; i < MAX; i++) {
		cout << "Enter amount" << endl;
		cin >> amount[i];

	}
	// text show to the user used fot the structure of the output+
	cout << "Total " << setw(15) << " Price " << setw(15) << " Amount " << endl;
	cout << "---------  " << "   ----------   " << " -----------   " << endl;

	// declaration of a third for statement
	for (i = 0; i < SIZE; i++) {
		total[i] = (price[i] * amount[i]);

		cout << total[i] << setw(15) << price[i] << setw(15) << amount[i] << endl;
	}

	system("PAUSE");

	return 0;
}/*
 Enter price
168
Enter price
742
Enter price
12
Enter price
028
Enter price
852
Enter price
90
Enter price
942
Enter price
684
Enter price
348
Enter price
521
Enter amount
5
Enter amount
12
Enter amount
0
Enter amount
65
Enter amount
90
Enter amount
7
Enter amount
20
Enter amount
8
Enter amount
11
Enter amount
84
Total          Price         Amount
---------     ----------    -----------
840            168              5
8904            742             12
0             12              0
1820             28             65
76680            852             90
630             90              7
18840            942             20
5472            684              8
3828            348             11
43764            521             84
Presione una tecla para continuar . . .*/

