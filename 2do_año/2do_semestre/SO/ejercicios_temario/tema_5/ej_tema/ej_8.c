#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>
#include <semaphore.h>

sem_t semaforo;
sem_t bloqueo;
sem_t mutex;

int elemento[5] = {0, 0, 0, 0, 0};
int entrada = 1;
int salida = 0;
int contador = 0;
int personal = 1;
int consumidor = 1;


void* producir(void *nada);
void* consumir(void *nada);

void main(int argc, char *argv[]){
	sem_init(&semaforo, 0, 5);
	sem_init(&bloqueo, 0, 0);
	sem_init(&mutex, 0, 1);
	
	pthread_t hilos[20];
	for(int i = 1; i < 21; i++) pthread_create(&hilos[i], NULL, producir, NULL);
	pthread_create(&hilos[1], NULL, consumir, NULL);
	
	pthread_join(hilos[1], NULL);
	pthread_join(hilos[2], NULL);
	pthread_join(hilos[3], NULL);
	pthread_join(hilos[4], NULL);
	pthread_join(hilos[5], NULL);
	pthread_join(hilos[6], NULL);
	pthread_join(hilos[7], NULL);
	pthread_join(hilos[8], NULL);
	pthread_join(hilos[9], NULL);
	pthread_join(hilos[10], NULL);
	pthread_join(hilos[11], NULL);
	pthread_join(hilos[12], NULL);
	pthread_join(hilos[13], NULL);
	pthread_join(hilos[14], NULL);
	pthread_join(hilos[15], NULL);
	pthread_join(hilos[16], NULL);
	pthread_join(hilos[17], NULL);
	pthread_join(hilos[18], NULL);
	pthread_join(hilos[19], NULL);
	pthread_join(hilos[20], NULL);
	pthread_join(hilos[21], NULL);
}

void* producir(void *nada){
	sem_wait(&semaforo);
	//producir();
	sem_wait(&mutex);
	elemento[contador] = entrada;
	contador++;
	printf("productor: %d\n", personal);
	personal++; 
	for(int i = 0; i < 5; i++) printf("%d-", elemento[i]);
	printf("\n");
	fflush(stdout);
	sem_post(&mutex);
	sleep(1);
	//fflush(stdout);
	//sleep(1);
	sem_post(&bloqueo);
	pthread_exit(0);
}

void* consumir(void *nada){
	sem_wait(&bloqueo);
	//consumir();
	int consumidos = 0;
	while(consumidos != 20){
		sem_wait(&mutex);
		contador--;
		elemento[contador] = salida;
		sem_post(&mutex);
		printf("consumidor: %d\n", consumidor);
		consumidor++; 
		for(int i = 0; i < 5; i++) printf("%d-", elemento[i]);
		printf("\n");
		sem_post(&semaforo);
		fflush(stdout);
		sleep(1);
	}
}


