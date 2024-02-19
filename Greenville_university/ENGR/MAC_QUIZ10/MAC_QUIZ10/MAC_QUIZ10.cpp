// file name: MAC_QUIZ10
// author: tomas machin
// date: 04/15/2021
// purpose: calculate the are aof a triangle within the parameters given

#include <iostream>
using namespace std;

double calcArea(double, double);
void displayData(double);

int main()
{
	// declaration of variables and values
	double leg1, leg2, area;
	leg1 = 10.25;
	leg2 = 4.385;

	//calculate the area of the triangle
	area = calcArea(leg1, leg2); {
		area = leg1 * leg2
			;
		return 0;
	}

	// display the data area to the user
	displayData(area); 

	system("pause");
	return 0;
}

double calcArea(double leg1, double leg2)
{
	double area;
	area = leg1 * leg2;
	return 0.0;
}

void displayData(double area)
{
		cout << "The area of the triangle is: " << area << endl;
		return ;
}

