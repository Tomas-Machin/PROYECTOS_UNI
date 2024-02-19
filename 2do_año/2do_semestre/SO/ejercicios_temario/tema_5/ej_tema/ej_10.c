#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>

#define MAX 6

sem_t sem1;
sem_t sem2;
sem_t sem3;

void *escribirA(void *nada);
void *escribirB(void *nada);
void *escribirC(void *nada);

void main(int argc, char *argv[]){
	sem_init(&sem1, 0, 1);
	sem_init(&sem2, 0, 0);
	sem_init(&sem3, 0, 0);
	
	pthread_t th1, th2, th3;
	srandom(time(NULL));
	
	pthread_create(&th1, NULL, escribirA, NULL);
	pthread_create(&th2, NULL, escribirB, NULL);
	pthread_create(&th3, NULL, escribirC, NULL);
	
	pthread_join(th1, NULL);
	pthread_join(th2, NULL);
	pthread_join(th3, NULL);
	
	//return 0;
}

void *escribirA(void *nada){
	int num;
	for(num = 0; num < MAX; num++){
		wait(&sem1);
		printf("A");
		fflush(stdout);
		sem_post(&sem2);
		sleep(random()%3);
	}
	pthread_exit(NULL);
}

void *escribirB(void *nada){
	int num;
	for(num = 0; num < MAX; num++){
		sem_wait(&sem2);
		printf("B");
		fflush(stdout);
		sem_post(&sem3);
		sleep(random()%3);
	}
	pthread_exit(NULL);
}

void *escribirC(void *nada){
	int num;
	for(num = 0; num < MAX; num++){
		sem_wait(&sem3);
		printf("C");
		fflush(stdout);
		sem_post(&sem1);
		sleep(random()%3);
	}
	pthread_exit(NULL);
}


