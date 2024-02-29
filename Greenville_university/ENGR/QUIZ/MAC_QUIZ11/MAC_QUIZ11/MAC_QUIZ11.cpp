// file name: MAC_QUIZ11.cpp
// author: tomas machin
// date: 04/21/2021
// purpose: calculate the hypotenuse, area and perimeter of a triangle with to leg given by the user
#include <iostream>
using namespace std;
double RightTriangle(double,double);
double RTarea(double,double);
double RTperim(double, double);
void displayData(double, double, double);
int main()
{
	//declaration of varaibles
	double a, b, area, perim,c;

	// text shown to the user asking for what we need
	cout << "Enter a positive non 0 value: " << endl;
	cin >> a;
	cout << "Enter another number within the same parameters: " << endl;
	cin >> b;

	// declaration of function in ordder to calcuate what needed
	area = RTarea(a, b);
	perim = RTperim(a, b);
	c = sqrt((a * a) + (b * b));

	//statement to display certain info
	displayData(area, perim,c);
	system("pause");
	return 0;

}
// definition of the statement
double RightTriangle(double a, double b)
{
	double c;
	c = sqrt((a * a) + (b * b));
	return c;
}
// definition of the statement
double RTarea(double a, double b)
{
	double s;
	s = 0.5 * a * b;
	return s;
}
// definition of the statement
double RTperim(double a, double b)
{
	double p;
	p = a + b + RightTriangle (a, b);
	return p;
}
void displayData(double area, double perim, double c)
{
	cout << "The area of the triange with hypotenuse: "<< c <<" is: " << area << " and it's perimeter: " << perim << endl;
	return;
}/*
Enter a positive non 0 value:
1
Enter another number within the same parameters:
2
The area of the triange with hypotenuse: 2.23607 is: 1 and it's perimeter: 5.23607
Presione una tecla para continuar . . .

C:\Users\machi\Downloads\GU EEUU\ENGR\MAC_QUIZ11\Debug\MAC_QUIZ11.exe (proceso 2096) se cerró con el código 0.
Presione cualquier tecla para cerrar esta ventana. . .*/