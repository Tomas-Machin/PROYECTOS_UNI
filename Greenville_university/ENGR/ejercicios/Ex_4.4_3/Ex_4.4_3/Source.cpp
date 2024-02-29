// file name: Source.cpp
// author: Tomás Machín
// date: 03/12/2021
// purpose: run a program that accepts the code number as an imput and 
//		    based on the value entered, displays the correct storage drive capacity
#include <iostream>
using namespace std;
int main()
{
	// Decalration of integer
	int code;
	cin >> code;
	switch (code) { //start of compound statement
	case 1: // terminated with a colon 
		cout << 2 << "GB" << endl;
		break;
	case 2: // terminated with another colon
		cout << 4 << "GB" << endl;
		break;
	case 3: // terminated with another colon
		cout << 16 << "GB" << endl;
		break;
	case 4: // terminated with another colon
		cout << 32 << "GB" << endl;
		break;
	default: // terminated with another colon
		cout << "Nothing" << endl;
	}
	// End of switch and compound statment
	return 0;
}
/*
1
2GB

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.4_3\Debug\Ex_4.4_3.exe (proceso 2284) se cerró con el código 0.
Para cerrar automáticamente la consola cuando se detiene la depuración, habilite Herramientas ->Opciones ->Depuración ->Cerrar la consola automáticamente al detenerse la depuración.
Presione cualquier tecla para cerrar esta ventana. . .

2
4GB

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.4_3\Debug\Ex_4.4_3.exe (proceso 5252) se cerró con el código 0.
Presione cualquier tecla para cerrar esta ventana. . .

3
16GB

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.4_3\Debug\Ex_4.4_3.exe (proceso 1528) se cerró con el código 0.
Presione cualquier tecla para cerrar esta ventana. . .

4
32GB

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.4_3\Debug\Ex_4.4_3.exe (proceso 10040) se cerró con el código 0.
Para cerrar automáticamente la consola cuando se detiene la depuración, habilite Herramientas ->Opciones ->Depuración ->Cerrar la consola automáticamente al detenerse la depuración.
Presione cualquier tecla para cerrar esta ventana. . .

5
Nothing

C:\Users\machi\Downloads\GU EEUU\ENGR\Ex_4.4_3\Debug\Ex_4.4_3.exe (proceso 9200) se cerró con el código 0.
Presione cualquier tecla para cerrar esta ventana. . .*/