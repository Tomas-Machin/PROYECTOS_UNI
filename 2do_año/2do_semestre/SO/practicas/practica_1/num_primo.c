
#include <stdio.h>
#include <stdlib.h>

void main(int argc, char *argv[]){
	int conteo = 0;
	if(argc != 2) printf("No hay la cantidad de operandos necesarios\n");
	for(int num = 2; num < atoi(argv[1]); num++){
		if(atoi(argv[1]) % num == 0){
			printf("El numero: %s no es primo\n", argv[1]); 
			conteo = conteo + 1;
			break;
		}
	} if(conteo == 0){
			printf("El numero: %s es primo\n", argv[1]);
	}

}
