#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>


void * process(void * args){
	printf("%s", (char * )args);
	fflush(stdout);
	pthread_exit(0);		
}

int main(){
	pthread_t th_a, th_b, th_c, th_d, th_e, th_f, th_g, th_h; //variable de tipo thread
	
	pthread_create(&th_a, NULL, process, "-Soy el hilo 1\n");
	pthread_create(&th_b, NULL, process, "-Soy el hilo 2\n");
	pthread_create(&th_b, NULL, process, "-Soy el hilo 3\n");
	pthread_create(&th_b, NULL, process, "-Soy el hilo 4\n");
	pthread_create(&th_b, NULL, process, "-Soy el hilo 5\n");
	pthread_create(&th_b, NULL, process, "-Soy el hilo 6\n");
	pthread_create(&th_b, NULL, process, "-Soy el hilo 7\n");
	pthread_create(&th_b, NULL, process, "-Soy el hilo 8\n");
	sleep(1);
}

// El orden en el que aparecen es normal, aunque algunas veces alterna el orden de algunas letras. En conclusión, el orden es aleatorio ya que es: first come, first serve.
