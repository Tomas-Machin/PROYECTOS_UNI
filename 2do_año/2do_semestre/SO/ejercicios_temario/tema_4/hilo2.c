
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
	
	pthread_create(&th_a, NULL, process, "-A-");
	pthread_create(&th_b, NULL, process, "-B-");
	pthread_create(&th_b, NULL, process, "-C-");
	pthread_create(&th_b, NULL, process, "-D-");
	pthread_create(&th_b, NULL, process, "-E-");
	pthread_create(&th_b, NULL, process, "-F-");
	pthread_create(&th_b, NULL, process, "-G-");
	pthread_create(&th_b, NULL, process, "-H-");
	sleep(1);
}
