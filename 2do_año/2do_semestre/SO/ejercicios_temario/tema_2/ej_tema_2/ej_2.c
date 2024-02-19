
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

void main(){
	int fd;
	char mensaje[5] = "tomas";
	char c;
	
	fd = open ("file.txt", O_CREAT | O_RDWR, 0666);
	write(fd, mensaje, strlen(mensaje));
	
	lseek(fd, 0, SEEK_SET); 

	while(read(fd, &c, 1) != 0){   
		write(1, &c, 1);
		sleep(1);
	}
}

