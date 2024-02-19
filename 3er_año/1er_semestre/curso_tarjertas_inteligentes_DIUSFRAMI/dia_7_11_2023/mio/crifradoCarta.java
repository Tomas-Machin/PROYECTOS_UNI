import javacard.framework.*;

public class cifradoCarta extends Applet{
	
	// abecedario para poder codificar y crear palabras
	final static byte[] abecedarioAscii = {
		'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
		'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
		
	// metodos para leer y escribir 
    final static byte LEER = (byte) 0xBA;
    final static byte ESCRIBIR = (byte) 0xBB;
    
    // posiciones a aplazar para cifrar las palabras
    byte key =(byte)0x03;
}