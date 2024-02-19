
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

void main(int argc, char *argv[]){

	char menj[5] = "tomas";
	int fd = open (argv[1], O_CREAT | O_RDWR, 0666);
	write(fd, menj, strlen(menj)); 
	int fd2 = open (argv[2], O_CREAT | O_RDWR, 0666);
	
	lseek(fd, 0, SEEK_SET);
	
	while(read(fd, &menj, 1)){
		write(fd2, &menj, 1);
	}
}
