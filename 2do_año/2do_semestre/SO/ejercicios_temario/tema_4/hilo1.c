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
	pthread_t th_a, th_b; //variable de tipo thread
	
	pthread_create(&th_a, NULL, process, "Hello");
	pthread_create(&th_b, NULL, process, "World");
	sleep(1);
}
