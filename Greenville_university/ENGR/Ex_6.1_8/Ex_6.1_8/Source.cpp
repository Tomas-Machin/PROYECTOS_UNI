// file name: source.cpp
// author: tomas machin
// date: 04/09/2021
// purpose: Modify the function written for Exercise 7a to accept the starting value of the
//			table, the number of values to be displayed, and the increment between values

#include <iostream>
using namespace std;

// void statement and text/solution shown to the user automatically
void sqrtfun(int start, int maxnum, int increment) {
	cout << "SQUARE           CUBE" << endl;
	cout << "-------- - ------------" << endl;

	// declaration of for statement and variables
	for (double num = start; num <= (start + maxnum * increment) - 1; num = num + increment) {

		cout << num * num << "            "
			<< num * num * num << endl;


	}
}

// main function
int main() {

	sqrtfun(6, 5, 2);


	system("PAUSE");
	return 0;
}
/*
SQUARE           CUBE
-------- - ------------
36            216
64            512
100            1000
144            1728
196            2744
Presione una tecla para continuar . . .*/