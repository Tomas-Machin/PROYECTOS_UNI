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

	// reminding the user that negative number won't work
	if (speed < 0) {
		cout << "A car cannot go backwards, you dummy." << endl;
	}
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
		cout << "(Officer gets out of the car)" << endl;
		cout << "What are you doing in the middle of the street!!" << endl;
		cout << "Get out of there!!" << endl;
	}

	system("pause");
	return 0;
}
/*TEST 1:
 Enter a number
86
(Gets pulled over)
You're driving too fast, you're getting a fine.
TEST 2:
Enter a number
60
(Gets pulled over)
Be careful, this is not the freeway, you may leave.
TEST 3:
Enter a number
40
(nothing happens)
TEST 4:
Enter a number
10
(Officer gets out of the car)
What are you doing in the middle of the street!!
Get out of there!!
Presione una tecla para continuar . . .
 */