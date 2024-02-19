#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>

void main(){
	execl("./ej_2a", "ej_2a", (char*) 0);
}

