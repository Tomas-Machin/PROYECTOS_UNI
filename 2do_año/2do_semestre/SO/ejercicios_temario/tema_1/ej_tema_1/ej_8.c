
#include <stdio.h>

void func1(int u, int v); // prototipo de la funcion func1
void func2(int *pu, int *pv); // prototipo de la funcion func2

void main(){
	int u = 1;
	int v = 3;
	printf("\n Antes de la llamada a func1: u = %d v = %d", u, v);
	func1(u, v);
	printf("\n Despues de la llamada a func1: u = %d v = %d", u, v);
	printf("\n Antes de la llamada a func2: u = %d v = %d", u, v);
	func2(&u, &v);
	printf("\n Despues de la llamada a func2: u = %d v = %d", u, v);
	printf("\n");
}

void func1(int u, int v){
	u = 0;
	v = 0;
	printf("\n Dentro de func1: u = %d v = %d", u, v);
	return;
}

void func2(int *pu, int *pv){
	*pu = 0;
	*pv = 0;
	printf("\n Dentro de func1: *pu = %d *pv = %d", *pu, *pv);
	return;
}

/*
	Por pantalla se imprimiria:
		Antes de la llamada a func1: u=1 v=3
		Dentro de la func1: u=0 v=0
		Despues de la llamada a func1: u=1 v=3
		Antes de la llamada a func2: u=1 v=3
		Dentro de la func2: u=0 v=0
		Despues de la llamada a func2: u=0 v=0
	
	Imprime esto ya que en func1 a pesar de cambiarse los valores de u 		y v, realmente no se cambian, sino que son una copia de los valores 		originales a los que se ha cambiado el valor. En cambio en func2 si 		se cambian los valores porque se hace referencia a las direcciones 		de memoria de las variables u y v por lo que si cambian su valor.
	
	Funcion con argumentos por valor --> func1(u, v);
	Funcion con argumentos por referencia --> func2(*pu, *pv);
*/






