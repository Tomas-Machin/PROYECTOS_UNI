#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

void main(){
	
	pid_t pid;
	printf("el pid del padre %d\n", getpid());
	pid = fork();
	for(int i = 0; i<8; i++){
		if(pid != 0) pid = fork();
		else{
			printf("%d mi pid es %d, el padre %d \n", i, getpid(), getppid());
			exit(0);
		}
	
	}
	
	while(wait(NULL) > 0);
}

// Los mensajes se imprimen por orden del PID (los hijos), y el padre es el primero en ser impreso. ESto ocurre ya que los hijos son creados en orden.
