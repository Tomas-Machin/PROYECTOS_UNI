#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

void main(){
	
	pid_t pid;
	int fd;
	char mensaje[22] = "He creado un archivo\n";
	printf("Soy el proceso abuelo: %d\n", getpid());
	
	for(int i = 0; i < 4; i++){
		if(fork() == 0){
			printf("1.%d Soy el proceso padre: %d y mi padre es: %d\n", i, getpid(),
getppid());
			/*if(i == 1) {
				fd = open("archivo.txt", O_CREAT | O_RDWR, 0666);
				printf("He creado un archivo llamado: archivo.txt\n");
			}*/
			if(i > 1) {
				if(i == 2){
					fd = open("archivo.txt", O_CREAT | O_RDWR, 0666);
					write(1, mensaje, strlen(mensaje));
				}
				if(fork() == 0) printf("2.%d Soy el proceso padre (con hijo): %d y mi padre es: %d\n", i, getpid(), getppid());
				break;
			}
			break;
		}
	}
	
	while(wait(NULL) > 0);	
}
