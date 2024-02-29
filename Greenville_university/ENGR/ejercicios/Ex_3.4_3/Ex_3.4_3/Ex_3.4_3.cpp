#include <iostream> 
using namespace std;
int main(){
int length, width, average;
cout << "Enter the length of the swimming pool:" <<endl;
cin >> length; 
cout << "Enter the width of the swimming pool:" <<endl;
cin >> width;
cout << "Enter the average depth of the swimming pool: "<< endl;
cin >> average;
double volume = length * width * average;
cout << " The volume of the swimming pool is " << volume << endl;
system("pause");
return 0;
}
/*Enter the length of the swimming pool:

Enter the width of the swimming pool:

Enter the average depth of the swimming pool:

 The volume of the swimming pool is 
Presione una tecla para continuar . . .*/