// file name. MAC_QUIZ6B.cpp
// author name: Tomás Machín
// date: 03/12/2021
// purpose:

#include <iostream>
#include <iomanip>
using namespace std;
int main()
{
	double b;
	cin >> b;
	if (b == 5) {
		cout << "cat" << endl;
	}
	else if (b == 3) {
		cout << "dog" << endl;
	}
	else if (b){
		cout <<"unknown" << endl;
	}
	return 0 ;
}