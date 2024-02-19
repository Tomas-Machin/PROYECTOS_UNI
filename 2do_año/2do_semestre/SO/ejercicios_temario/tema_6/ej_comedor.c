#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>
#include <semaphore.h>

sem_t tenedor[5];
sem_t comedor;

int i;

void *filosofo(void* i){
	//piensa();
	int n = *(int*) i;
	sem_wait(&comedor);
	sem_wait(&tenedor[n]);
	sem_wait(&tenedor[(n + 1) % 5]);
	//come();
	//printf("Estoy comiendo, soy el numero: %d\n", i);
	for(int j = 0; j < 5; j++) {
		if(j == n) printf("Estoy comiendo, soy el numero: %d\n", n);
		else printf("Soy el pensador: %d\n", j);
	}
	fflush(stdout);
	sleep(1);
	sem_post(&tenedor[(n + 1) % 5]);
	sem_post(&tenedor[n]);
	sem_post(&comedor);
}

void main(){
	sem_init(&comedor, 0, 4);
	for(int j = 0; j < 5; j++) sem_init(&tenedor[j], 0, 1);
	pthread_t pensador[5];
	int num[] = {0, 1, 2, 3, 4};
	for(int j = 0; j < 5; j++) pthread_create(&pensador[j], NULL, filosofo, &num[j]);
	for(int j = 0; j < 5; j++) pthread_join(pensador[j], NULL);

}
