#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>
#include <semaphore.h>

#define N 100000   

int process = 0;
int cuenta = 0;

sem_t mutex;

void * add(void * args){
	while(process != 0);
	for(int i = 0; i < N; i++) {
		sem_wait(&mutex); 
		cuenta++;
		sem_post(&mutex);
	}
	process = 0;
	pthread_exit(0);
}

void * sub(void * args){
	while(process != 1);
	for(int i = 0; i < N; i++) {
		sem_wait(&mutex);
		cuenta--;
		sem_post(&mutex);
	}	
	process = 1;	
	pthread_exit(0);
}

int main(){
	pthread_t th_a, th_b; //variable de tipo thread
	sem_init(&mutex, 0, 1);
	
	pthread_create(&th_a, NULL, add, NULL);
	pthread_create(&th_b, NULL, sub, NULL);
	sleep(1);
	printf("%d\n", cuenta);
	
}
