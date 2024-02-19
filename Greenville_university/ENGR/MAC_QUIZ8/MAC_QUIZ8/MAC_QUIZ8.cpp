// file name: MAC_QUIZ8
// author: Tomás Mahín
// date: 03/31/2021
// purpose:

#include <iostream>
#include <iomanip>
using namespace std;
int main()
{
	// declaration of variables
	double number,number1;
	double start = 1;
	double end = 999;
	double increment = 1;
	// asking the using to enter the first number
	cout << "Enter a number" << endl;
	cin >> number;
	cout << "You entered " << number << endl;
	cout << "Total is " << number << endl;

	// statement that stops the progrma if the number entered is above 999
	if (number >= 1000) {
	}

	//while statement that loops the question to the using till the number entered is above 999
	while (number <= 999) {
		cout << "Enter a number" << endl;
		cin >> number1;
		cout << "You entered " << number1 << endl;
		number = number1 + number;
		cout << "Total is " << number << endl;
	}
	
	//text shown to the user to sumarize the total number and the average of all of them 
	cout << "The final total is " << number-number1 << endl;
	cout << "The average of the numbers enterd is " << abs((number1 + number) / 2 - number) << endl;
	system("pause");
	return 0;
}/*
 Enter a number
25
You entered 25
Total is 25
Enter a number
25
You entered 25
Total is 50
Enter a number
25
You entered 25
Total is 75
Enter a number
84
You entered 84
Total is 159
Enter a number
516
You entered 516
Total is 675
Enter a number
1000
You entered 1000
Total is 1675
The final total is 1675
The average of the numbers enterd is 337.5
Presione una tecla para continuar . . .*/