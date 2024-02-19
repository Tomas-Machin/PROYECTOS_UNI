#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#define TAMANO 1024
char buf [TAMANO];

/*static void error(char* mensaje) {
	write(2, mensaje, strlen(mensaje));
	exit(1);
}*/

static void error(char* mensaje) {
	fprintf(stderr, "%s", mensaje); 
	exit(1);
}

int main(int argc, char* argv[]){
	int leidos, escritos, origen, destino;
	if(argc != 3) error("Error en argumentos\n");
	if((origen = open(argv[1], O_RDONLY)) < 0) error ("Error en el origen\n");
	if((destino = open(argv[2], O_CREAT | O_WRONLY | O_TRUNC, 0666)) < 0) error ("Error en el destino\n");
	while(leidos = read(origen, buf, TAMANO) > 0){
		if((escritos = write(destino, buf, leidos)) < 0) error("Error en escritura\n");
		if(leidos < 0) error("Error en lectura\n");
		close(origen);
		close(destino);
		exit(0);
	}
	
}
/*
Al ejecutar el comando strace ./ej_3 prueba.txt prueba_copia.txt, la salida por pantalla es:
execve("./ej_3", ["./ej_3", "prueba.txt", "prueba_copia.txt"], 0x7ffd75959420 /* 49 vars º/) = 0
brk(NULL)                               = 0x562ccc781000
arch_prctl(0x3001 /* ARCH_??? º/, 0x7ffe11f73be0) = -1 EINVAL (Argumento inválido)
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No existe el archivo o el directorio)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=67410, ...}) = 0
mmap(NULL, 67410, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f839dbc7000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\300A\2\0\0\0\0\0"..., 832) = 832
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0\20\0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0", 32, 848) = 32
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\30x\346\264ur\f|Q\226\236i\253-'o"..., 68, 880) = 68
fstat(3, {st_mode=S_IFREG|0755, st_size=2029592, ...}) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f839dbc5000
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0\20\0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0", 32, 848) = 32
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\30x\346\264ur\f|Q\226\236i\253-'o"..., 68, 880) = 68
mmap(NULL, 2037344, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f839d9d3000
mmap(0x7f839d9f5000, 1540096, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x22000) = 0x7f839d9f5000
mmap(0x7f839db6d000, 319488, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x19a000) = 0x7f839db6d000
mmap(0x7f839dbbb000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1e7000) = 0x7f839dbbb000
mmap(0x7f839dbc1000, 13920, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f839dbc1000
close(3)                                = 0
arch_prctl(ARCH_SET_FS, 0x7f839dbc6540) = 0
mprotect(0x7f839dbbb000, 16384, PROT_READ) = 0
mprotect(0x562ccb66c000, 4096, PROT_READ) = 0
mprotect(0x7f839dc05000, 4096, PROT_READ) = 0
munmap(0x7f839dbc7000, 67410)           = 0
openat(AT_FDCWD, "prueba.txt", O_RDONLY) = 3
openat(AT_FDCWD, "prueba_copia.txt", O_WRONLY|O_CREAT|O_TRUNC, 0666) = 4
read(3, "SOOOOOOYYYY FRANCESCOOOOO EL MAS"..., 1024) = 73
write(4, "S", 1)                        = 1
close(3)                                = 0
close(4)                                = 0
exit_group(0)                           = ?
+++ exited with 0 +++

---------------------COMPROBACION CON ERROR EN PARAMETROS-----------------------------------

execve("./ej_3", ["./ej_3", "jeje.txt", "prueba_copia.txt"], 0x7ffcb298e800 /* 49 vars º/) = 0
brk(NULL)                               = 0x557918d1a000
arch_prctl(0x3001 /* ARCH_??? º/, 0x7ffdbdcbb8c0) = -1 EINVAL (Argumento inválido)
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No existe el archivo o el directorio)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=67410, ...}) = 0
mmap(NULL, 67410, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f72bfb8f000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\300A\2\0\0\0\0\0"..., 832) = 832
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0\20\0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0", 32, 848) = 32
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\30x\346\264ur\f|Q\226\236i\253-'o"..., 68, 880) = 68
fstat(3, {st_mode=S_IFREG|0755, st_size=2029592, ...}) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f72bfb8d000
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0\20\0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0", 32, 848) = 32
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\30x\346\264ur\f|Q\226\236i\253-'o"..., 68, 880) = 68
mmap(NULL, 2037344, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f72bf99b000
mmap(0x7f72bf9bd000, 1540096, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x22000) = 0x7f72bf9bd000
mmap(0x7f72bfb35000, 319488, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x19a000) = 0x7f72bfb35000
mmap(0x7f72bfb83000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1e7000) = 0x7f72bfb83000
mmap(0x7f72bfb89000, 13920, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f72bfb89000
close(3)                                = 0
arch_prctl(ARCH_SET_FS, 0x7f72bfb8e540) = 0
mprotect(0x7f72bfb83000, 16384, PROT_READ) = 0
mprotect(0x5579177a1000, 4096, PROT_READ) = 0
mprotect(0x7f72bfbcd000, 4096, PROT_READ) = 0
munmap(0x7f72bfb8f000, 67410)           = 0
openat(AT_FDCWD, "jeje.txt", O_RDONLY)  = -1 ENOENT (No existe el archivo o el directorio)
write(2, "Error en el origen\n", 19Error en el origen
)    = 19
exit_group(1)                           = ?
+++ exited with 1 +++

---------------------CAMBIANDO EL STATIC VOID ERROR -----------------------------------

execve("./ej_3", ["./ej_3", "jeje.txt", "prueba_copia.txt"], 0x7fff62753460 /* 49 vars º/) = 0
brk(NULL)                               = 0x55d8a8651000
arch_prctl(0x3001 /* ARCH_??? º/, 0x7ffdd0ff1610) = -1 EINVAL (Argumento inválido)
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No existe el archivo o el directorio)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=67410, ...}) = 0
mmap(NULL, 67410, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f13113d3000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\300A\2\0\0\0\0\0"..., 832) = 832
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0\20\0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0", 32, 848) = 32
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\30x\346\264ur\f|Q\226\236i\253-'o"..., 68, 880) = 68
fstat(3, {st_mode=S_IFREG|0755, st_size=2029592, ...}) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f13113d1000
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0\20\0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0", 32, 848) = 32
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\30x\346\264ur\f|Q\226\236i\253-'o"..., 68, 880) = 68
mmap(NULL, 2037344, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f13111df000
mmap(0x7f1311201000, 1540096, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x22000) = 0x7f1311201000
mmap(0x7f1311379000, 319488, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x19a000) = 0x7f1311379000
mmap(0x7f13113c7000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1e7000) = 0x7f13113c7000
mmap(0x7f13113cd000, 13920, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f13113cd000
close(3)                                = 0
arch_prctl(ARCH_SET_FS, 0x7f13113d2540) = 0
mprotect(0x7f13113c7000, 16384, PROT_READ) = 0
mprotect(0x55d8a7a9a000, 4096, PROT_READ) = 0
mprotect(0x7f1311411000, 4096, PROT_READ) = 0
munmap(0x7f13113d3000, 67410)           = 0
openat(AT_FDCWD, "jeje.txt", O_RDONLY)  = -1 ENOENT (No existe el archivo o el directorio)
write(2, "Error en el origen\n", 19Error en el origen
)    = 19
exit_group(1)                           = ?
+++ exited with 1 +++

A primera vista no se ve ninguna diferencia en cambio si la hay dentro de procesos/metodos pread64().


----------------EJERCICIOS-------------------------
1.- 
Las llamadas close(), pread64(), openat(), write().

2.- No han cambiado ninguna llamada, en cambio si han cambiado valores para los que usan algunas estas llamadas


*/


