
package org;

import java.util.*;


public class App
{
	public static void main(String[] args){
		//grafo
		Graph<Integer> g = new Graph<>();
		g.addVertex(v:1);
		g.addVertex(v:2);
		g.addVertex(v:3);
		g.addVertex(v:4);
		g.addVertex(v:5);

		System.out.println(g.addEdge(1,2));
		g.addEdge(1, 5);
		g.addEdge(2, 3);
		g.addEdge(3, 4);
		g.addEdge(4, 2);

		//System.out.println(g.toString());

		g.shortestPath(1,2);
	}
}

