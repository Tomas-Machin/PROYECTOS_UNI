#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <signal.h>
#include <stdlib.h>

# define VUELTAS 10000000000

void Salir(int sig){
	switch(sig){
		case(SIGTERM):
			printf("Saliendo del programa al recibir la señal SIGTERM\n");
			exit(EXIT_SUCCESS);
		break;
	}
} 

int main(void){
	signal(SIGTERM, Salir);
	signal(SIGTERM, SIG_IGN);
	for(int i = 0; i < VUELTAS; i++){}
	printf("Fin del programa sin recibir la señal SIGINT\n");
	exit(EXIT_SUCCESS);
}

// Lo que sucede al recibir la señal SIGTERM, es que esta señal es ignorada por el proceso; usando el método: "signal(SIGTERM, SIG_IGN);" 
