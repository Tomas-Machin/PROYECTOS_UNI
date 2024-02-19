
#include <stdio.h>
#include <stdlib.h>

void main(int argc, char *argv[]){
	int op1 = atoi(argv[1]);
	    //ascii to integer (como un parseInt.Integer())
	int op2 = atoi(argv[2]);
	int resultado = op1 * op2;
	printf("El resultado de la multiplicacion es: %i", resultado);
	printf("\n");
}
