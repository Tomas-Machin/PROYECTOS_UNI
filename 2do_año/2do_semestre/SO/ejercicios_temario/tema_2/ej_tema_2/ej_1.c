
#include <stdio.h>
#include <fcntl.h>

char name[] = "archivo.txt";

int main(){
	int fd;
	fd = creat(name, 0666);
	printf("%d", fd);
	return 0;
}

// El valor que devuelve fd es 3 ya que es la posicion de memoria que ocupa. LOs permisos que tiene el archivo al crearlo no son los esperado ya que no tiene los permisos de escritura que deberia tener.
