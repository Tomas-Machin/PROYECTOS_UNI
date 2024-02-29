#include <iostream> 
#include <iomanip>
using namespace std;
 
int main()
{
   int number;
    // If the number is less than zero, then multiply by (-1)
    if (number < 0)
    {
        number = (-1) * number;
    }
    cout << " " << number;
    system("pause");
    return 0;
}
