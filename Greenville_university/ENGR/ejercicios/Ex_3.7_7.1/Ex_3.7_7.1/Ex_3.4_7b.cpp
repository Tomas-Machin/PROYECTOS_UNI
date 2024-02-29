// file name: 3.4_7b.pp
// programmer name: Tomas Machin
// date created: 03-01-2021
// short description: same as in part a but also use the variable sum for the sum of the numbers
#include <iostream>
using namespace std;
int main()
{
	//declaration of variables
	double number, average, sum = 0;
	//code and its conditions
	cout << "Enter a number:" << endl;
	cin >> number;
	sum = sum + number;
	cout << "Enter a second number:" << endl;
	cin >> number;
	sum = sum + number;
	cout << "Enter a third number:" << endl;
	cin >> number;
	sum = sum + number;
	cout << "Enter a fourth number:" << endl;
	cin >> number;
	sum = sum + number;
	average = sum / 4;
	cout << "\n" << average << endl;
	system("PAUSE");
	return 0;
}/*Enter a number:
92
Enter a second number:
98
Enter a third number:
79
Enter a fourth number:
85

88.5
Enter a number:
86
Enter a second number:
84
Enter a third number:
75
Enter a fourth number:
86

82.75
Enter a number:
63
Enter a second number:
85
Enter a third number:
74
Enter a fourth number:
82

76
Presione una tecla para continuar . . .
 */