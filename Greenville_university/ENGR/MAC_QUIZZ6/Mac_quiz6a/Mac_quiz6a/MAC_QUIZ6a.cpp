// file name: MAC_QUIZa6.CPP
// programmer name: Tomas Machin
// date created: 08-03-2021
// short description: compile a program that asks the user how fast he or she drives.
#include <iostream>	
#include <iomanip>
using namespace std;
int main()
{
	// declaration of variable
	double speed;
	//text shown to the user to enter a number
	cout << "Enter a number" << endl;
	// code to run the number the user enters
	cin >> speed;
	// conditions the number has to take in order to run the different texts
	if (speed > 80) {
		cout << "(Gets pulled over)" << endl;
		cout << "You're driving too fast, you're getting a fine." << endl;
	}
	else if (speed > 55) {
		cout << "(Gets pulled over)" << endl;
		cout << "Be careful, this is not the freeway, you may leave." << endl;
	}
	else if (speed > 35) {
		cout << "(nothing happens)" << endl;
	}
	else if (speed > 0) {
		cout << "(Gets pulled over)" << endl;
		cout << "What are you doing in the middle of the street!!" << endl;
	}

	system("pause");
	return 0;
}/*
 */