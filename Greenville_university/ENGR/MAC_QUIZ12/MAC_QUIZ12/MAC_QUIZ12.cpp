// file name: MAC_QUIZ12.cpp
// author: tomas machin
// date: 04/28/2021
// purpose: 

#include <iostream>
using namespace std;

void time (double, double, double, double);
int main()
{
	// declaration of variables
	double hours, min, sec, seconds;

	// texts shonw to the user to ask for different values
	cout << "Enter a positive non 0 value " << endl;
	cin >> hours;
	cout << "Enter other positive non 0 value " << endl;
	cin >> min;
	cout << "Enter other positive non 0 value " << endl;
	cin >> sec;

	// decalration of math formula to calculate the amount of seconds
	seconds = hours * 3600+ min * 60 + sec;
	time(hours, min, sec, seconds);

	// text shown to the user with the final output
	cout << hours << " hours " << min << " min " << sec << " sec are " << seconds << " seconds " << endl;

	system("pause");
	return 0;
}
// definition of the time ( ) function
void time(double hours, double min, double sec, double seconds)
{
	seconds = hours * 3600;
	seconds = min * 60;
	seconds = sec;
	return ;
}/*
 Enter a positive non 0 value
1
Enter other positive non 0 value
1
Enter other positive non 0 value
20
1 hours 1 min 20 sec are 3680 seconds
Presione una tecla para continuar . . .*/