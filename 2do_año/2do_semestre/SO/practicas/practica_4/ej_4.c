/* 
-----------------EJERCICIO BASE--------------------
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>

static void error(char* mensaje) {
	fprintf(stderr, "%s", mensaje);
	exit(1);
}

int main(int argc, char* argv[]){
	int f;
	char c;
	off_t pos;
	if(argc != 3) error("Error en los argumentos\n");
	if((f = open(argv[1], O_RDONLY)) < 0) error("Error en el origen\n");
	if(lseek(f, pos = atoi(argv[2]), SEEK_SET) < 0) error("Error en el posicionamienot\n");
	if(read(f, &c, 1) != 1) error("Error en lectura\n");
	printf("%s[%ld]= %c (%x hex)\n", argv[1], pos, c, c);
	exit(0);
}


Al ejecutar el comando strace ./ej_4 prueba.txt 0, la salida por pantalla es:

execve("./ej_4", ["./ej_4", "prueba.txt", "0"], 0x7ffecfeff360 /* 49 vars º/) = 0
brk(NULL)                               = 0x565081319000
arch_prctl(0x3001 /* ARCH_??? º/, 0x7ffc8f4f2da0) = -1 EINVAL (Argumento inválido)
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No existe el archivo o el directorio)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=67410, ...}) = 0
mmap(NULL, 67410, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7febdf7ae000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\300A\2\0\0\0\0\0"..., 832) = 832
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0\20\0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0", 32, 848) = 32
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\30x\346\264ur\f|Q\226\236i\253-'o"..., 68, 880) = 68
fstat(3, {st_mode=S_IFREG|0755, st_size=2029592, ...}) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7febdf7ac000
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0\20\0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0", 32, 848) = 32
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0\30x\346\264ur\f|Q\226\236i\253-'o"..., 68, 880) = 68
mmap(NULL, 2037344, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7febdf5ba000
mmap(0x7febdf5dc000, 1540096, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x22000) = 0x7febdf5dc000
mmap(0x7febdf754000, 319488, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x19a000) = 0x7febdf754000
mmap(0x7febdf7a2000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1e7000) = 0x7febdf7a2000
mmap(0x7febdf7a8000, 13920, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7febdf7a8000
close(3)                                = 0
arch_prctl(ARCH_SET_FS, 0x7febdf7ad540) = 0
mprotect(0x7febdf7a2000, 16384, PROT_READ) = 0
mprotect(0x5650812c8000, 4096, PROT_READ) = 0
mprotect(0x7febdf7ec000, 4096, PROT_READ) = 0
munmap(0x7febdf7ae000, 67410)           = 0
openat(AT_FDCWD, "prueba.txt", O_RDONLY) = 3
lseek(3, 0, SEEK_SET)                   = 0
read(3, "S", 1)                         = 1
fstat(1, {st_mode=S_IFCHR|0620, st_rdev=makedev(0x88, 0), ...}) = 0
brk(NULL)                               = 0x565081319000
brk(0x56508133a000)                     = 0x56508133a000
write(1, "prueba.txt[0]= S (53 hex)\n", 26prueba.txt[0]= S (53 hex)
) = 26
exit_group(0)                           = ?
+++ exited with 0 +++
*/

//---------------EJERCICIO 1-----------------

#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>

static void error(char* mensaje) {
	fprintf(stderr, "%s", mensaje);
	exit(1);
}

int main(int argc, char* argv[]){
	int f;
	char c;
	off_t pos;
	if(argc != 4) error("Error en los argumentos\n");
	if((f = open(argv[1], O_RDWR)) < 0) error("Error en el origen\n");
	if(lseek(f, pos = atoi(argv[2]), SEEK_SET) < 0) error("Error en el posicionamienot\n");
	if(write(f, &c, 1) != 1) error("Error en lectura\n");
	printf("%s[%ld]= %c (%x hex)\n", argv[1], pos, c, c);
	printf("Se ha escrito el caracter '%c' en la posicion %ld del archivo %s.\n", c, pos, argv[1]);
	exit(0);
}







