#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <semaphore.h>

sem_t max_capacidad;
sem_t sofa;
sem_t silla_barbero;

sem_t barbero; // --> controla al barbero
sem_t calvo; // --> controla al cliente

sem_t mutex;  // --> aforo
sem_t mutex2; // --> gente_sofa
sem_t mutex3; // --> silla

int gente_sofa = 0;
int silla = 0;
int aforo = 0;

void * cliente(void * nada){
    sem_wait(&max_capacidad);
    sem_wait(&mutex);
    aforo++;
    sem_post(&mutex);
    printf("1.- Aforo actual: %d de pie, %d en el sofa, %d en la silla\n", aforo, gente_sofa, silla);
    sem_wait(&sofa);
    sem_wait(&mutex);
    sem_wait(&mutex2);
    gente_sofa++;
    aforo--;
    printf("2.- Aforo actual: %d de pie, %d en el sofa, %d en la silla\n", aforo, gente_sofa, silla);
    sem_post(&mutex2);
    sem_post(&mutex);
    sem_wait(&silla_barbero);
    sem_post(&sofa);
    sem_wait(&mutex2);
    gente_sofa--;
    sem_post(&mutex2);
    printf("3.- Aforo actual: %d de pie, %d en el sofa, %d en la silla\n", aforo, gente_sofa, silla);
    sem_post(&barbero);
    sem_wait(&calvo);
    sem_post(&silla_barbero);
    sem_post(&max_capacidad);
}

void * peluquero (void * nada){
    sem_wait(&barbero);
    for(int corte = 1; corte < 51; corte++){
        sem_wait(&mutex3);
        silla++;
        sem_post(&mutex3);
        sleep(1);
        printf("Soy un calvo cortandome el pelo\n");
        printf("Aforo actual: %d de pie, %d en el sofa, %d en la silla. Cortes realizados: %d\n", aforo, gente_sofa, silla, corte);
        sem_wait(&mutex3);
        silla--;
        sem_post(&mutex3);
        sem_post(&calvo);
    }
}

void main(int argc, char * argv[]){
    sem_init(&max_capacidad, 0, 20);
    sem_init(&silla_barbero, 0, 1);
    sem_init(&sofa, 0, 5);

    sem_init(&barbero, 0, 0);
    sem_init(&calvo, 0, 1);

    sem_init(&mutex, 0, 1);
    sem_init(&mutex2, 0, 1);
    sem_init(&mutex3, 0, 1);

    pthread_t hilos[50], cortador;
    for(int i = 0; i < 50; i++) pthread_create(&hilos[i], NULL, cliente, NULL);
    
    pthread_create(&cortador, NULL, peluquero, NULL);

    pthread_join(cortador, NULL);
}