
#include <stdio.h>
#include <unistd.h>


void funcion1(int *n){
	*n = *n - 1;
	
}

void main(){
	int var;
	scanf("%d", &var);
	while(var > 0) {
		funcion1(&var);
		printf("%d \n", var);
		sleep(1);
	}
}

