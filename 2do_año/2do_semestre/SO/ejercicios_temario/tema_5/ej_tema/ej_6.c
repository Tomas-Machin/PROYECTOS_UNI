#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>

#define N 100000  

int process = 0;
int cuenta = 0;

int estado0 = 0;
int estado1 = 0;

void * add(void * args){
	while(true){
		estado0 = 1;
		process = 1;
		while(estado1 && process == 1);
		for(int i = 0; i < N; i++) cuenta++;
		estado0 = 0;
		pthread_exit(0);
	}
}

void * sub(void * args){
	while(true){
		estado1 = 1;
		process = 0;
		while(estado0 && process == 0);
		for(int i = 0; i < N; i++) cuenta--;
		estado1 = 0;
		pthread_exit(0);
	}
}

int main(){
	pthread_t th_a, th_b; //variable de tipo thread
	
	pthread_create(&th_a, NULL, add, NULL);
	pthread_create(&th_b, NULL, sub, NULL);
	sleep(1);
	printf("%d\n", cuenta);
	
}
