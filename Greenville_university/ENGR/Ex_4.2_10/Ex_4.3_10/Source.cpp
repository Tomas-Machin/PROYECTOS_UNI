// file name: Ex_4.3_10
// programmer name: Tomas Machin
// date created: 02-26-2021
// short description: compute and display a person’s week salary

#include <iostream> 
using namespace std;
int main() {
	// declaration of variables
	double hours, total;
	cout << "Enter hours worked" << endl;
	cin >> hours;
	if (hours > 40) {
		total = (12*40) + 480 * (18 * (hours - 40));
		cout << " Your earned this much " << total <<endl;
	}
	else if (hours <= 40) {
		total = (12 * hours);
		cout << "You earned this much " << total << endl;
	}
	return 0;
}
/* 
(examples):
Enter hours worked
10
You earned this much 120

Enter hours worked
50
 Your earned this much 86880

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.3_10\Debug\Ex_4.3_10.exe (proceso 20584) se cerró con el código 0.
Presione cualquier tecla para cerrar esta ventana. . .*/