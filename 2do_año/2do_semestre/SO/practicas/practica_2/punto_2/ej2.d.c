#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

void recibirSenal(int sig){
	char c;
	char mensaje[10] = "Soy P6\n";
	switch(sig){
		case (SIGUSR1):
			for(int j = 0; j < 7; j++){
				sleep(1);
				c = mensaje[j];
				write(1, &c, 1);
			}					
	}
}

void main(){
	signal(SIGUSR1, recibirSenal);
	
	printf("Soy el proceso abuelo: %d\n", getpid());
	
	for(int i = 0; i < 4; i++){
		if(fork() == 0){
			printf("1.%d Soy el proceso padre: %d y mi padre es: %d\n", i, getpid(),
getppid());
			if(i > 1) {
				if(fork() == 0) {
					printf("2.%d Soy el proceso padre (con hijo): %d y mi padre es: %d\n", i, getpid(), getppid());
					if(i == 3) {
						kill(getpid(), SIGUSR1);
					}
				}
				break;
			}
			break;
		}
	}
	
	while(wait(NULL) > 0);	
}
