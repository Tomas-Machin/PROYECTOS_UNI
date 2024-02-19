#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

void main(){
	
	pid_t pid;
	printf("Soy el proceso abuelo: %d\n", getpid());
		
	for(int i = 0; i < 4; i++){
		if(fork() == 0){
			printf("1.%d Soy el proceso padre: %d y mi padre es: %d\n", i, getpid(),
getppid());
			if(i > 1) {
				if(fork() == 0) printf("2.%d Soy el proceso nieto: %d y mi padre es: %d\n", i, getpid(), getppid());
				break;
			}
			break;
		}
	}
	
	while(wait(NULL) > 0);	
}
