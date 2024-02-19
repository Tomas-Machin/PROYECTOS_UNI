
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>


void main(int argc, char *argv[]){
	
	char mensaje[90] = "La carrera es dificil, pero todo por tener 'Ing' antes del nombre y sentirme superior.\n";
	int fd = open(argv[1], O_CREAT | O_RDWR, 0666);
	
	write(fd, mensaje, strlen(mensaje));
	
	lseek(fd, 0, SEEK_SET);
	
	while(read(fd, &mensaje, strlen(mensaje)) != 0){
		write(1, &mensaje, strlen(mensaje));
	}
	
	/*char c;
	while(read(fd, &c, 1)){
		write(1, &c, 1);
	}*/
	
	// ambas formas sirven
	
	close(fd);
}
