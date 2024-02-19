#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <semaphore.h>

int cuenta = 0;
sem_t mutex;

void * add(void * args){
	printf("%d\n", cuenta);
	for(int i = 0; i < 10000000; i++) {
		sem_wait(&mutex);
		cuenta++;
		sem_post(&mutex);
	}
	pthread_exit(0);
}

void * sub(void * args){
	printf("%d\n", cuenta);
	for(int i = 0; i < 10000000; i++) {
		sem_wait(&mutex);
		cuenta--;	
		sem_post(&mutex);	
	}
	pthread_exit(0);
}

void main(){

	//sem_init(*sem, pshared, value);
	//sem_init(&mutex, 0, 1);
	//sem_init(*semaforo, 0, 5);
	
	/*sem_wait(&semaforo);
	sem_post(&semaforo);
	
	sem_destroy(&semaforo);*/

	pthread_t th_a, th_b; //variable de tipo thread
	sem_init(&mutex, 0, 1);
	pthread_create(&th_a, NULL, add, NULL);
	pthread_create(&th_b, NULL, sub, NULL);
	sleep(15);        //---> los pt_join hacen lo mismo pero sin perder tiempo
	//pthread_join(th_a. NULL);
	//pthread_join(th_b. NULL);
	sem_destroy(&mutex);	
	printf("%d\n", cuenta);
	
}


