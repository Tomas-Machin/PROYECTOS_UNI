#include <iostream>
using namespace std;

int main()
{
    int number;

    cout << "Enter an integer: ";
    cin >> number;

    if (number % 2 == 0)
        cout << number << " is even.";
    else
        cout << number << " is odd.";

    system("pause");
    return 0;
}
/*Enter an integer: 
     is    .
  Presione una tecla para continuar . . .*/