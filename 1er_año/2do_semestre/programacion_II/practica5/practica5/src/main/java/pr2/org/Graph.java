
package pr2;

//import java.util.ArrayList;
import java.util.*;

public class Graph<V>{

	private final int infinito = 2147483647;

	//Lista de adyacencia
	private Map<V, Set<V>> adyacencyList = new HashMap<>();
	/******************************************************************
	 * Añade el vértice `v` al grafo.
	 * @param v vértice a añadir.
	 * @return `true` si no estaba anteriormente y `false` en caso
	 * 	contrario.
	 ******************************************************************/

	public boolean addVertex(V v){

		//hacer un if de que si se añade el nodo retorne true y sino false
		if(adyacencyList.containskey(v)){
			return false;
		}else{ 
			adyacencyList.put(v, new HashSet<>());
			return true;
		}
	}

	/******************************************************************
	 * Añade un arco entre los vértices `v1` y `v2` al grafo. En
	 * caso de que no exista alguno de los vértices, lo añade
	 * también.
	 *
	 * @param v1 el origen del arco.
	 * @param v2 el destino del arco.
	 * @return `true` si no existía el arco y `false` en caso contrario.
	 ******************************************************************/

	public boolean addEdge(V v1, V v2){
		//crear array distancas??
		//ArrayList distancias = new ArrayList<>();
		if(!adyacencyList.get(v1).contains(v2)){
			//distancias.addEdge(1);
			adyacencyList.get(v1).add(v2);
			adyacencyList.get(v2).add(v1);
			return true;
		}else{
			//distancias.addEdge(infinito);
			return false;
		} //Este código hay que modificarlo.
	}

	/******************************************************************
	 * Obtiene el conjunto de vértices adyacentes a `v`.
	 *
	 * @param v vértice del que se obtienen los adyacentes.
	 * @return conjunto de vértices adyacentes.
	 ******************************************************************/

	public Set<V> obtainAdjacents(V v) throws Exception{
		return adyacecyList(v).obtainAdyacents(); //Este código hay que modificarlo.
	}

	/******************************************************************
	 * Comprueba si el grafo contiene el vé rtice dado.
	 *
	 * @param v vértice para el que se realiza la comprobación.
	 * @return `true` si `v` es un vértice del grafo.
	 ******************************************************************/

	public boolean containsVertex(V v){
		if(!adyacencyList.containsVertex(v)){
			adyacencyList.addVertex(v);
		}else{
			return true;
		}
		//Este código hay que modificarlo.
	}

	/******************************************************************
	 * Mé todo `toString()` reescrito para la clase ` Grafo. java`.
	 * @return una cadena de caracteres con la lista de
	 * adyacencia.
	 ******************************************************************/

	@Override

	public String toString(){
		StringBuilder mensaje = new StringBuilder();
		mensaje.append("Las distancias qu hay del vertice origen a los demas es:\n " + distancias);
		return mensaje; //Este código hay que modificarlo.
	}
	/**
	 * Obtiene, en caso de que exista, el camino más corto entre
	 * `v1` y `v2`. En caso contrario, devuelve `null`.
	 *
	 * @param v1 el vértice origen.
	 * @param v2 el vértice destino.
	 * @return lista con la secuencia de vértices del camino más corto
	 * entre `v1` y `v2`
	 */

	public List<Integer> shortestPath(V v1, V v2){
		//inicializacion
		List<Integer> solucion = new ArrayList<>();
		Set<Integer> conjunto = new HashSet<>();
		int[] distancias = new int[adyacencyList.size()];
		int[] anterior = new int[adyacencyList.size()];
		int menor = 0;
		int Vmin = 0;
		conjunto.clear();
		conjunto.add((int) v1);
		for(V i: adyacencyList.keySet()){
			anterior[(int) i - 1] = (int) v1;
			if(adyacencyList.get(v1).contains(i)){
				distancias[(int) i - 1] = 1;	
			}else{
				distacias[(int) i - 1] = infinito;
			}

		}
		//---------------------------------
		while(!conjunto.contains(v2)){
			menor = infinito;
			//calcular el mejor candidato
			for(int i = 0; i < distancias.length; i++){
				if(!conjunto.contains(i + 1) && distancias[i] < menor){
					menor = distancias[i];
					Vmin = i + 1;
				}
			}

			conjunto.add(Vmin);

			for(V i: adyacencyList.get(Vmin)){
				if(menor < distancias[(int) i - 1]){
					distancias[(int) i - 1] = menor + 1;
					anterior[(int) i - 1] = Vmin;
				}
			}

		}
		Stack pila = new Stack();
		int a = (int) v1;
		int b = (int) v2;
		while(a != b){
			//solucion.add(b);
			pila.push(b);
			b = anterior[b - 1];
		}
		pila.push(a);
		while(!pila.isEmpty()){
			solucion.add(pila.peek());
			pila.pop();
		}		
		return solucion; // Esto código hay que modificarlo.
	}

	/*//El código debe pasar, al menos, la siguiente prueba:
	  @Test

	  public void shortestPathFindsAPath(){
	/*System.out.println("\nTest shortestPathFindsAPath");
	  System.out.println("----------------------------");
	// We build the graph
	Graph<Integer> g = new Graph<>();
	g.addEdge(1, 2);
	g.addEdge(1, 5);
	g.addEdge(2, 3);
	g.addEdge(3, 4);
	g.addEdge(5, 4);
	// We build the expected path
	List<Integer> expectedPath = new ArrayList<>();
	expectedPath.add(1);
	expectedPath.add(5);
	expectedPath.add(4);
	-/We check if the returned path is equal to the expected one.
	assertEquals(expectedPath, g.shortestPath(1, 4));
	}*/

}
