#include <stddef.h>
#include <pthread.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

void func1(){
	printf("-A-");
	fflush(stdout);
}
void func2(){
	printf("-B-");
	fflush(stdout);
}
void func3(){
	printf("-C-");
	fflush(stdout);
}

void * process(void * args){
	func1();
	func2();
	func3();	
	pthread_exit(0);		
}

int main(){
	pthread_t th_a, th_b, th_c; //variable de tipo thread
		pthread_create(&th_a, NULL, process, NULL);
		pthread_create(&th_b, NULL, process, NULL);
		pthread_create(&th_c, NULL, process, NULL);
		sleep(1);
		printf("\n");
}

