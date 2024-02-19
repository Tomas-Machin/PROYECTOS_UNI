#include <stdio.h> 
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <wait.h>

int main(){
	int rt;
	rt = fork();
	
	if(rt == 0) execl ("/bin/ls", "ls", "-l", (char*) 0);
	while(wait(NULL) > 0);
}

// Los parámetros de la función execl() son el fichero donde va a ser ejecutada el comando, el comando a ejecutar (en este caso dividido en dos al necesitar un espacio entre medias de lo componentes de este), y un puntero usado para poder mostrar el resultado. Imprime desde el primer archivo a ser mostrado por el comando ejecutado hasta el último.
