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
	for(int i = 0; i < 10000000; i++) {
		sem_wait(&mutex);
		cuenta++;
		sem_post(&mutex);
	}
	pthread_exit(0);
}

void * sub(void * args){
	for(int i = 0; i < 10000000; i++) {
		sem_wait(&mutex);
		cuenta--;	
		sem_post(&mutex);	
	}
	pthread_exit(0);
}

void main(){

	pthread_t th_a, th_b; 
	sem_init(&mutex, 0, 1);
	pthread_create(&th_a, NULL, add, NULL);
	pthread_create(&th_b, NULL, sub, NULL);
	sleep(15);        
	printf("%d\n", cuenta);
	
}
