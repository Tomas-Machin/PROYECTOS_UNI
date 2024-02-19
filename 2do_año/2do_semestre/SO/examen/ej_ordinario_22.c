#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>
#include <semaphore.h>

sem_t cap_restaurante;  // capacidad mx del restaurante
sem_t mesas;		 // capacidad de las mesas
sem_t camarero;	 // controlar la disponibilidad del camarero
sem_t ctrl_cliente;

// protectores de variables
sem_t mutex;
sem_t mutex2;

//variables
int capacidad = 0;
int sentados = 0;

void * cliente (void *nada){
	// entran al restaurante
	sem_wait(&cap_restaurante);
	sem_wait(&mutex);
	capacidad++;	// hay alguien dentro
	printf("1_Capacidad del restaurante: %d, mesas ocupadas: %d\n", capacidad, sentados);
	sem_post(&mutex);
	sem_wait(&mesas); //se sienta
	sem_wait(&mutex);
	sem_wait(&mutex2);
	// actualizar valores
	capacidad--;
	sentados++;
	printf("2_Capacidad del restaurante: %d, mesas ocupadas: %d\n", capacidad, sentados);
	sem_post(&mutex);
	sem_post(&mutex2);
	sem_post(&camarero);	// llamamos al camarero para q nos traiga la cuenta
	sem_wait(&ctrl_cliente);	// bloqueamos al cliente hasta q le traiga la cuenta
	//sem_post(&mesas);	// dejamos una mesa libre
	sem_post(&cap_restaurante);	// dejamos espacio en la capacidad max del restaurante por 1
}

void * waiter (void *nada){
	//sem_wait(&camarero);
	for(int cuentas_esc = 1; cuentas_esc < 31; cuentas_esc++){
		sem_wait(&camarero);
		printf("Estoy yendo a por la cuenta nº: %d\n", cuentas_esc);
		//printf("3_Capacidad del restaurante: %d, mesas ocupadas: %d\n", capacidad, sentados);
		//fflush(stdout);
		//sleep(5);
		sem_wait(&mutex2);
		sentados--;
		sem_post(&mutex);
		printf("4_Capacidad del restaurante: %d, mesas ocupadas: %d\n", capacidad, sentados);
		sem_post(&mesas);	// dejamos una mesa libre
		sem_post(&ctrl_cliente);
		
	}
}

void main(int argc, char *argv[]){
	sem_init(&cap_restaurante, 0, 30);
	sem_init(&mesas, 0, 15);
	sem_init(&camarero, 0, 0);
	sem_init(&ctrl_cliente, 0, 1);
	
	sem_init(&mutex, 0, 1);
	sem_init(&mutex2, 0, 1);
	
	pthread_t paisanos[30];
	pthread_t contratado;
	
	for(int i = 0; i < 30; i++) pthread_create(&paisanos[i], NULL, cliente, NULL);
	pthread_create(&contratado, NULL, waiter, NULL);	 
	
	pthread_join(contratado, NULL);
}
