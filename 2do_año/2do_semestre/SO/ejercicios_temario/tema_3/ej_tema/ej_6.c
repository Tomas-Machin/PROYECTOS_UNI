#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

void main(){
	printf("soy abuelo\n");
	if(fork() == 0){
		printf("soy el padre ejecutando el comando ls al principio\n");
		execl("/bin/ls", "ls", fork(), (char*) 0);
		printf("J1");
		//fork();
		if(fork() == 0) {
			printf("soy nieto ejecutando el comando ps al final\n");
			printf("J2");
			execl("/bin/ps", "ps", (char*) 0);
			printf("J3");
		}
	}
	while(wait(NULL) > 0);
}


