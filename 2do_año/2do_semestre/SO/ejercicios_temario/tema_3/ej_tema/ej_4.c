#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

void main(){
	printf("soy abuelo pid: %d ppid: %d \n", getpid(), getppid());
	if(fork() == 0){
		printf("soy el padre pid: %d ppid: %d \n", getpid(), getppid());
		if(fork() == 0){
			printf("soy nieto pid: %d ppid: %d \n", getpid(), getppid());
		}
	}
	while(wait(NULL) > 0);
}

// Los mensajes se imprimen en el orden en el que son creados, es decir primero se imprime el abuelo, luego el padre y finalmente el nieto. Esto con sus respectivos PID en orden respectivamente de menor a mayor.
