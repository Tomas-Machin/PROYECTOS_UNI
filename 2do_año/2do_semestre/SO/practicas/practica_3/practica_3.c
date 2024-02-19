#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>

// capacidad de la peluqueria:
sem_t max_capacidad;
// capacidad sofa
sem_t sofa;
// silla peluquero
sem_t silla_peluquero;
// controla peluquero
sem_t barber;
// controla cliente
sem_t client;

sem_t mutex;
sem_t mutex2;
sem_t mutex3;

int aforo = 0;
int asientos = 0;
int puesto_silla = 0;

void * cliente (void *nada){
	sem_wait(&max_capacidad);
	//control aforo peluqueria
	sem_wait(&mutex);
	aforo++;
	printf("Aforo 1 de la peluquería: %d, sofa: %d, silla: %d\n", aforo, asientos, puesto_silla);
	sem_post(&mutex);
	sem_wait(&sofa);
	//control aforo sofa
	sem_wait(&mutex2);
	sem_wait(&mutex);
	asientos++;
	aforo--;
	printf("Aforo 2 de la peluquería: %d, sofa: %d, silla: %d\n", aforo, asientos, puesto_silla);
	sem_post(&mutex);
	sem_post(&mutex2);
	sem_wait(&silla_peluquero);
	sem_post(&sofa);
	sem_wait(&mutex2);
	asientos--;
	sem_post(&mutex2);
	printf("Aforo 3 de la peluquería: %d, sofa: %d, silla: %d\n", aforo, asientos, puesto_silla);
	sem_post(&barber);
	sem_wait(&client);
	sem_post(&silla_peluquero);
	sem_post(&max_capacidad);
}

void * peluquero (void *nada){
	/*asientos--;
	corte++;
	printf("Aforo de la peluquería: %d, sofa: %d, silla: %d\n", aforo, asientos, corte);
	int cortes = 0;
	while(cortes < 50){*/
	sem_wait(&barber);
	int cortes = 0;
	for(cortes = 0; cortes < 50; cortes++){
		//sem_wait(&mutex2);
		sem_wait(&mutex3);
		//asientos--;
		puesto_silla++;
		//sem_post(&mutex2);
		sem_post(&mutex3);
		printf("Aforo X de la peluquería: %d, sofa: %d, silla: %d, cortes: %d\n", aforo, asientos, puesto_silla, cortes);
		sleep(1);
		// hay alguien cortandose el pelo
		printf("Me estoy cortando el pelo\n");
		sem_wait(&mutex3);
		puesto_silla--;
		sem_post(&mutex3);
		//sem_post(&silla_peluquero);
		sem_post(&client);
		//sem_post(&mutex3);
	}
	if(cortes > 49) printf("Aforo X de la peluquería: %d, sofa: %d, silla: %d, cortes: %d\n", aforo, asientos, puesto_silla, cortes);
}

void main(int argc, char *argv[]){
	sem_init(&max_capacidad, 0, 20);
	sem_init(&sofa, 0, 5);
	sem_init(&silla_peluquero, 0, 1);
	sem_init(&barber, 0, 0);
	sem_init(&client, 0, 1);
	
	sem_init(&mutex, 0, 1);
	sem_init(&mutex2, 0, 1);
	sem_init(&mutex3, 0, 1);

	pthread_t personas[50];
	pthread_t cortador;
	for(int i = 0; i < 50; i++) pthread_create(&personas[i], NULL, cliente, NULL);
		  
	pthread_create(&cortador, NULL, peluquero, NULL);
			
	pthread_join(cortador, NULL);
	// for(int i = 0; i < 50; i++) pthread_join(clientes[i], NULL);
}

