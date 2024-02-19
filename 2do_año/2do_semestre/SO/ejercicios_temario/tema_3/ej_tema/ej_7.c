#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <signal.h>
#include <stdlib.h>

# define VUELTAS 10000000000

void Salir(int sig){
	switch(sig){
		case(SIGINT):
			printf("Saliendo del programa al recibir la señal SIGINT\n");
			exit(0);
		break;
	}
} 

int main(void){
	signal(SIGINT, Salir);
	for(int i = 0; i < VUELTAS; i++){}
	printf("Fin del programa sin recibir la señal SIGINT\n");
	exit(0);
}
