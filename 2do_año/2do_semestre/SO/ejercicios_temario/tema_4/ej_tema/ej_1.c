#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>
#include <wait.h>
#include <stdlib.h>

void tratamiento(int sig){
	switch(sig){
		case SIGUSR1:
			printf("Ejecutando ps -l:\n");
			execl("/bin/ls", "ps ", "-l", (char *) 0);
			break;
	}
}

void main(void){
	int pid = fork();
	
	if(pid == 0){
		printf("Haz el primer ps\n");
		fflush(stdout);
		sleep(10);
		printf("Ahora lanzar la señal\n");
		fflush(stdout);
		printf("%s%d\n", "El PID del proceso hijo es ", getpid());
		fflush(stdout);
		signal(SIGUSR1, tratamiento);
		//kill(getpid(), SIGUSR1);
		sleep(15);
		exit(0);
	}
	while(wait(NULL) > 0);
}
