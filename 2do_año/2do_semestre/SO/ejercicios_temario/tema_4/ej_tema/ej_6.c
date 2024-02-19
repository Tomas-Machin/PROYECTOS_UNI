#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

void * process(void * args){
	int num = * (int*)args;
	printf("%d", num);
	pthread_exit(0);
}

int main(void){
	pthread_t th[8];
	for(int i = 0; i < 8; i++){
		pthread_create(&th[i], NULL, process, (void *) &i);
		sleep(1);
	}
}

// Crea un array de hilos con un total de 8 de ellos, se imprimen los numeros del 0 al 7 en orden porque a la funcion le da tiempo a ejecutarse e imprimir asi los numeros en ese orden.
