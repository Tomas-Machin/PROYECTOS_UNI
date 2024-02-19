
#include <stdio.h>

void main(){
	int edad = 20;
	int* pEdad = &edad;
	
	printf("%d\n", edad);
	printf("%p\n", &edad);
	printf("%p\n", pEdad);
	printf("%d\n", *pEdad);
}



/*
	primero te imprime el valor de la variable edad de tipo int cuyo valor es 20.
	segundo imprime la direccion de memoria de la variable edad
	tercero imprime la direccion de memoria a la q esta apuntando el puntero pEdad de tipo entero
	finalmente se imprime el valor de la direccion de memoria a la q esta apuntando el puntero pEdad.
*/
