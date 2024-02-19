#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>

#define N 1000000000   // min para un sleep de 15

int process = 0;
int cuenta = 0;

int estado0 = 0;
int estado1 = 0;

// --- caso 1 --- DEKER

/*void * add(void * args){
	while(process != 0);
	for(int i = 0; i < N; i++) cuenta++;
	process = 1;
	pthread_exit(0);
}

void * sub(void * args){
	while(process != 1);
	for(int i = 0; i < N; i++) cuenta--;	
	process = 0;	
	pthread_exit(0);
}

// --- caso 2 ---

void * add(void * args){
	while(estado1);
	estado0 = 1;
	for(int i = 0; i < N; i++) cuenta++;
	estado0 = 0;
	pthread_exit(0);
}

void * sub(void * args){
	while(estado0);
	estado1 = 1;
	for(int i = 0; i < N; i++) cuenta--;
	estado1 = 0;
	pthread_exit(0);
}

// --- caso 3 ---

void * add(void * args){
	estado0 = 1;
	while(estado1);
	for(int i = 0; i < N; i++) cuenta++;
	estado0 = 0;
	pthread_exit(0);
}

void * sub(void * args){
	estado1 = 1;
	while(estado0);
	for(int i = 0; i < N; i++) cuenta--;
	estado1 = 0;
	pthread_exit(0);
}

// --- caso 4 ---

void * add(void * args){
	estado0 = 1;
	while(estado1){
		estado0 = 0;
		sleep(1);
		estado0 = 1;
	}
	for(int i = 0; i < N; i++) cuenta++;
	estado0 = 0;
	pthread_exit(0);
}

void * sub(void * args){
	estado1 = 1;
	while(estado0){
		estado1 = 0;
		sleep(1);
		estado1 = 1;
	}
	for(int i = 0; i < N; i++) cuenta--;
	estado1 = 0;
	pthread_exit(0);
}*/

// --- caso 5 --- PETERSON

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
	sleep(15);
	printf("%d\n", cuenta);
	
}

// cuanto mayor sea N mas sleep necesita sino no valdra 0 el resultado
