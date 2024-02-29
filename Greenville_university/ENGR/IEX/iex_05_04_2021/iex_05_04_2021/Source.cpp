#include <iostream>
using namespace std;
int main()
{
	float radius, area;
	double const PI = 3.14;
	cout << "Enter a radius for your circle:" << endl;
	cin >> radius;
	area = PI * pow(radius, 2);
	cout << "The area of the circle with radius " << radius << " is " << area << endl;
	system("pause");
	return 0;
}