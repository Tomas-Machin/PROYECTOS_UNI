#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

void * process(void * args){
	printf("%s", (char *)args);
	fflush(stdout);
	pthread_exit(0);
}

int main(void){
	pthread_t th_a, th_b; 
	
	pthread_create(&th_a, NULL, process, "Hello");
	pthread_create(&th_b, NULL, process, "World");
	sleep(1);
}

// El resultado del programa es la muestra por pantalla de "Hello" y  "World" pero en orden aleatorio, es decir, puede imprimir: "HelloWorld" o "WorldHello". 
// Los parámetros de la función de pthread_create() son 4 (en este orden):
//	- La dirección de memoria del hilo.
//	- Los atributos del hilo.
//	- Una función a ejecutar por el hilo (la direción, no lo parámetros).
//	- Un argumento de la función a ejecutar.
