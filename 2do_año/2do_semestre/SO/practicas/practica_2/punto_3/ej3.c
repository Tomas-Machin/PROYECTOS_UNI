
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

void main(int argc, char *argv[]){
	char mensaje[90] = "La carrera es dificil, pero todo por tener 'Ing' antes del nombre y sentirme superior.\n";
	//char letra = argv[2];
	int i = 0;
	
	int fd = open(argv[1], O_CREAT | O_RDWR, 0666);
	write(fd, mensaje, strlen(mensaje));
	
	lseek(fd, 0, SEEK_SET);
	
	char c;
	while(read(fd, &c, 1)){
		if(c == (argv[2])[0]) {
			i++;
		}
	}
	printf("Hay un total de :%d, de la letra: %s\n", i, argv[2]);
}
