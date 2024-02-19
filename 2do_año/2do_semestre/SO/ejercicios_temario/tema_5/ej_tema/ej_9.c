#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>
#include <semaphore.h>

sem_t writer;
sem_t bloqueo;
sem_t mutex;

int readers = 0;

void* lector(void *nada);
void* escritor(void *nada);

void main(int argc, char *argv[]){
	sem_init(&writer, 0, 1);
	sem_init(&mutex, 0, 1);
	sem_init(&bloqueo, 0, 0);
	
	pthread_t hilo[9];
	for(int i = 0; i < 7; i++) pthread_create(&hilo[i], NULL, lector, NULL);
	
	pthread_create(&hilo[7], NULL, escritor, NULL);
	pthread_create(&hilo[8], NULL, escritor, NULL);
	
	/*pthread_join(hilo[0], NULL);
	pthread_join(hilo[1], NULL);
	pthread_join(hilo[2], NULL);
	pthread_join(hilo[3], NULL);
	pthread_join(hilo[4], NULL);
	pthread_join(hilo[5], NULL);
	pthread_join(hilo[6], NULL);*/
	pthread_join(hilo[7], NULL);
	pthread_join(hilo[8], NULL);
}

void* escritor(void *nada){
	sem_wait(&writer);
	//escribir();
	printf("Escribiendo...\n");
	fflush(stdout);
	sleep(5);
	sem_post(&writer);
}

void* lector(void *nada){
	wait(&mutex);
	readers++;
	if(readers == 1) wait(&writer);
	signal (&mutex);
	//leer()
	printf("leyendo...\n");
	
	wait(&mutex);
	readers--;
	if(readers == 0) signal(&writer);
	signal(&mutex);
	pthread_exit(0);
}
