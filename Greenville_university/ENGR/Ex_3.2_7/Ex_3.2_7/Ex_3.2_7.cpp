#include <iostream>
#include <iomanip>
using namespace std;
int main()
{

	double change, paid, check;
	paid = 10;
	check = 6.07;
	change = (paid - check) * 100; 
	double dollars = (change / 100);  
	double quart = (change / 25);     
	double dim = (change / 10);         
	double nick = (change / 5);       
	double pen = (change / 1);        

	cout << "Total change " << change << endl;
	cout << "Total dollars " << dollars << endl;
	cout << "Total quarters " << quart << endl;
	cout << "Total dimes " << dim << endl;
	cout << "Total nickles " << nick << endl;
	cout << "Total pennies " << pen << endl;
	system("PAUSE");
	return 0;
}
/*Total change 393
Total dollars 3.93
Total quarters 15.72
Total dimes 39.3
Total nickles 78.6
Total pennies 393
Presione una tecla para continuar . . .*/
