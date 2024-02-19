#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>

int dato;
int *dir;
long *dir2;

void nolee(int s){
	printf(" no legible\n");
	sleep(1000);
	exit(0);
}

void noescribe(int s){
	printf(" no escribible\n");
	sleep(1000);
	exit(0);
}
void escribe (char* texto, void *dir){
	printf("Direccion de %-4s = 0x%1x\n", texto, (long) dir);
}

int main (int argc, char *argv[]){
	int A;
	
	escribe ("A", &A);
	//escribe ("main", &main);
	
	dir = (unsigned int*) &A;
	//dir = (unsigned int*) &main;
	
	printf("Probando la direccion virtual 0x%1x\n", (long) dir);
	signal(SIGSEGV, nolee);
	dato = *dir;
	printf(" legible\n");
	signal(SIGSEGV, noescribe);
	*dir = dato;
	printf(" escribible\n");
	sleep(1000);
	exit(0);
}
/*
Este codigo puede ejecutarse para comprobar la accesibilidad de dos zonas, de datos y de codigo, de dos direcciones diferentes.
Estas direcciones son: 
	 - Direccion main: Es la primera que comprobamos y la salida del programa es:
	 	'Direccion de main = 0x17afa25a
		 Probando ladireccion virtual 0x17afa25a
		 legible
		 no escribible'
	   Indicando asi que en la direccion main, los archivos se pueden leer pero no escribir,es decir, no se puede editar. 
	   En cambio en la otra direccion:
	 - Direccion A: La segunda que comprobamos y cuta salida del programa es:
	   	'Direccion de A    = 0x71739514
		 Probando ladireccion virtual 0x71739514
		 legible
		 escribible'
	   Indicando asi que en la direccion A, los archivos se pueden leer y editar en ellos.
	   
	   Estos resultados se deben a la comprobacion de la accesibilidad mediante la señal SIGSEGV, para comprobar si se ha direccionado memoria fuera de los limites para su ejecucion. Por ello la direccion main no es escribible.

*/





