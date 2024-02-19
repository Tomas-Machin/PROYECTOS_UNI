#include <stdio.h>
#include <string.h>
#include <sys/types.h>

void main(){
	pid_t pid;
	pid = fork();
	
	if(pid != 0)
		printf("Soy padre con pid %d y ppid %d\n", getpid(), getppid());
	else printf("Soy hijo con pid %d y ppid %d\n", getpid(), getppid());

