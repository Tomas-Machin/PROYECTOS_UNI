// file name: MAC_FINAL2.cpp
// author: Tomás Machín
// date: 06/05/2021
// purpose: read a single dimensional array, display the content, find and sisplay the minimun valued stored		
# include <iostream>
using namespace std;

// definition of the findMin () function 
int findMin(int array[], int n) 
{
    int temp = array[0];
    for (int i = 0; i < n; i++) {
        if (temp > array[i]) {
            temp = array[i];
        }
    }
    return temp;
}
int main() 
{
// text shown to the user to enter the numbers the array up to 10 different values
    int array[10];
    cout << "Enter array elements: ";
    for (int i = 0; i < 10; i++) {
        cin >> array[i];
    }
    int smallest = findMin(array, 10);
    cout << "Smallest Element is: " << smallest;
    return 0;
}/*
 Enter the size of array: Enter array elements: 1 3 4 -1 0 12 5 14 6 9
Smallest Element is: -1
C:\Users\machi\Downloads\GU EEUU\ENGR\MAC_FINAL2\Debug\MAC_FINAL2.exe (proceso 928) se cerró con el código 0.
Presione cualquier tecla para cerrar esta ventana. . .*/