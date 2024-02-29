#include <iostream>
#include <iomanip>
#include<cmath>
using namespace std;
int main()
{
	double area, radius, PI;
	radius = 3.3;
	PI = 3.14;
	area = PI * pow(radius,2);
	cout << '|' << setw(10) << fixed << setprecision(2) << area << '|' << endl;
	system("pause");
	return 0;
}
/*|     34.19|
Presione una tecla para continuar . . .*/