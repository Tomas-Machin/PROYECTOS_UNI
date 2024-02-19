#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>


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
