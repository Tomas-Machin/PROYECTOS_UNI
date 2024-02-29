// file name: MAC_QUIZ9.cpp
// author: Tomás Machín
// date: 04/07/2021
// purpose:

#include <iostream>
#include <cmath>
using namespace std;
int main()
{
	// declaration of variables
	double number,number0, number1;
	cout << "Enter a number" << endl;
	cin >> number1;
	// if statement for values wanted
	if (number1 <= 0) {
		cout << "Enter a positive value this time please" << endl;
		cin >> number1;

	}// while staement for a "product" loop
	while (number1 > 0) {
		cout<<"Enter another number"<<endl;
		cin >> number;
		if (number <= 0) {
			cout << "Enter a positive value this time please" << endl;
			cin >> number;
		}
		number0 = number1 * number;
		cout << "The product is: " << number0 << endl;
		cout << "Enter another number" << endl;
		cin >> number;
		if (number <= 0) {
			cout << "Enter a positive value this time please" << endl;
			cin >> number;
		}
		number0 = number0 * number;
		cout << "The product is: "<< number0 << endl;
		cout << "Enter another number" << endl;
		cin >> number;
		if (number <= 0) {
			cout << "Enter a positive value this time please" << endl;
			cin >> number;
		}
		number0 = number0 * number;
		cout << "The product is: " << number0 << endl;
		cout << "Enter another number" << endl;
		cin >> number;
		if (number <= 0) {
			cout << "Enter a positive value this time please" << endl;
			cin >> number;
		}
		number0 = number0 * number;
		cout << "The product is: " << number0 << endl;
		cout << "Enter another number" << endl;
		cin >> number;
		if (number <= 0) {
			cout << "Enter a positive value this time please" << endl;
			cin >> number;
		}
		number0 = number0 * number;
		cout << "The product is: " << number0 << endl;
		cout << "Enter another number" << endl;
		cin >> number;
		if (number <= 0) {
			cout << "Enter a positive value this time please" << endl;
			cin >> number;
		}
		number0 = number0 * number;
		cout << "The product is: " << number0 << endl;

		system("pause");
		return 0;
	}
}/*
 Enter a number
0
Enter a positive value this time please
1
Enter another number
-8
Enter a positive value this time please
2
The product is: 2
Enter another number
5
The product is: 10
Enter another number
-10
Enter a positive value this time please
8
The product is: 80
Enter another number
-3
Enter a positive value this time please
5
The product is: 400
Enter another number
8
The product is: 3200
Enter another number
-7895
Enter a positive value this time please
6
The product is: 19200
Presione una tecla para continuar . . .*/