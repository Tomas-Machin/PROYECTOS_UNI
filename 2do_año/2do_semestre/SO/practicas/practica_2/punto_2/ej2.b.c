#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

pid_t pid_h;

void recibirSenal(int sig){
	char mensaje[70] = "Soy el proceso P3 y he recivido una señal del proceso P5\n";
	switch(sig){
		case SIGUSR1:
			write(1, mensaje, strlen(mensaje));
			kill(pid_h, SIGUSR2); // puedo poner cualquiera de las 2 pq significan cosas diferentes para el padre y nieto
			break;
	}
}

void main(){

	int fd;
	printf("Soy el proceso abuelo: %d\n", getpid());
	
	for(int i = 0; i < 4; i++){
		if(fork() == 0){
			printf("1.%d Soy el proceso padre: %d y mi padre es: %d\n", i, getpid(),
getppid());
			if(i > 1) {
				if(i == 2) {
					signal(SIGUSR1, recibirSenal); //sin parentesis pq lo pone el SO 
				}
				pid_h = fork();
				if(pid_h == 0) {
					printf("2.%d Soy el proceso padre (con hijo): %d y mi padre es: %d\n", i, getpid(), getppid());
					if(i == 2) {
						sleep(2); // pq puede ejecutarse en desorden y aseguralo
						kill(getppid(), SIGUSR1);
					}
				}
				break;
			}
			break;
		}
	}
	
	while(wait(NULL) > 0);	
}
