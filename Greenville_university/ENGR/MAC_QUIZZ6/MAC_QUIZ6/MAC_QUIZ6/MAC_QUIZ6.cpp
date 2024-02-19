// file name: MAC_QUIZ6.CPP
// programmer name: Tomas Machin
// date created: 08-03-2021
// short description: compile a program that asks the user how fast he or she drives.
#include <iostream>	
#include <iomanip>
using namespace std;
int main()
{
	double speed;
	cout << "Enter a number" << endl;
	cin >> speed;
	if (speed > 80) {
		cout << "You're driving too fast, you're getting a fine." << endl;
	}
	else if (speed > 55) {
		cout << "Be careful, this is not the freeway, you may leave." << endl;
	}
	else if (speed > 35) {
		cout << "(nothing happens)" << endl;
	}
	else if (speed > 0) {
		cout << "What are you doing in the middle of the street!!" << endl;
	}

	system("pause");
	return 0;
}