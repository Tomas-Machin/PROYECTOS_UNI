// file name: MAC_FINALP1.cpp
// author: Tomás Machín
// date: 06/05/2021
// purpose:
#include <iostream>
#include <iomanip>
using namespace std;

void time(double, double, double, double);

int main()
{
	// declaration of varables
	double sec, seconds, min, hours;

	// text shown to the user to enter a number
	cout << "Enter a number of seconds:" << endl;
	cin >> seconds;
	hours = seconds / 3600;

	// condition to not create unimaginalbe number for time 
	if (hours < 1) {
		hours = 0;
	}
	min = seconds / 60;

	cout << setw(10)<< fixed << setprecision(0) << endl;

	if (min >= 60) {
		hours += 0;
		min = min - 60;
	}
	else if (min < 1) {
		min = 0;
	}
	sec = seconds - ((hours * 3600) + (min * 60));
	if (sec >= 60) {
		min += 0;
	}
	time(sec, seconds, min, hours);

	// text shown to the user with the output
	cout << " The amount of: " << seconds << " seconds are: " << hours << " hours, " << min << " min, " << sec << " seconds." << endl;

	system("PAUSE");
	return 0;
}
// definion os time () function
void time(double sec, double min, double hours, double seconds)
{
	hours = seconds / 3600;
	if (hours <= 0) {
		hours = 0;
	}
	min = seconds / 60;
    if (min >= 60){
		hours += 1;
	}
	else if (min <= 0) {
		min = 0;
	}
	sec = seconds - ((hours * 3600) + (min * 60));
	if (sec >= 60) {
		min += 0;
	}
	return;
}/*
Enter a number of seconds:
3027

 The amount of: 3027 seconds are: 0 hours, 50 min, 0 seconds.

Enter a number of seconds:
4750

 The amount of: 4750 seconds are: 1 hours, 19 min, -1150 seconds.
Presione una tecla para continuar . . ..*/