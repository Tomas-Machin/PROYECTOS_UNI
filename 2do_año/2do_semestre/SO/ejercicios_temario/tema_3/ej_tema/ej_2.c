#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <sys/wait.h>

char name[] = "archivo.txt";

void main(){
	int fd = creat(name, 0666);
	char padre[7] = "padre\n";
	char hijo[6] = "hijo\n";
	pid_t pid = fork();
	
	for(int i = 0; i < 5000; i++){
		if(pid != 0) {
			write(fd, padre, strlen(padre));
			fflush(stdout);
		}
		else {
			write(fd, hijo, strlen(hijo));
			fflush(stdout);
		}
	}
	
	while(wait(NULL) > 0);
}
