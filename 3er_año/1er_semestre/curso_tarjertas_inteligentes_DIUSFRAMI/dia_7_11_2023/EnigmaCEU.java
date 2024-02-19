package EnigmaCEU;
//C:\workspace\EnigmaCEU\src\EnigmaCEU\EnigmaCEU.java

import javacard.framework.*;

public class EnigmaCEU extends Applet
{
	    /* constants declaration */
    
    // code of CLA byte in the command APDU header
    final static byte Wallet_CLA =(byte)0x80;
    
    // codes of INS byte in the command APDU header
    final static byte LEER = (byte) 0xBA;
    final static byte ESCRIBIR = (byte) 0xBB;
    
    byte key =(byte)0x03;
    
    final static byte[] abecedarioAscii = {
		'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
		'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
	
	byte[] dataToSend = { 0x01, 0x02, 0x03, 0x04, 0x05 };
    
    

	public static void install(byte[] bArray, short bOffset, byte bLength) 
	{
		new EnigmaCEU().register(bArray, (short) (bOffset + 1), bArray[bOffset]);
	}

	public void process(APDU apdu)
	{
		if (selectingApplet())
		{
			return;
		}

		byte[] buf = apdu.getBuffer();
		switch (buf[ISO7816.OFFSET_INS])
		{
		case (byte)0x00:
			//ISOException.throwIt(ISO7816.SW_NO_ERROR );
			break;
			
		case (byte)LEER: 
			//APDU para escribir datos en la memoria de la tarjeta.
			short le = apdu.setOutgoing();
			apdu.setOutgoingLength((byte)2);
            buf[0] = (byte)(0xE);
			buf[1] = (byte)(key + (byte)abecedarioAscii[0]);
            apdu.sendBytes((short)0, (short)2);
            return;
			
		case (byte)ESCRIBIR:
			// APDU para leer datos de la memoria de la tarjeta
			byte byteRead =
				(byte)(apdu.setIncomingAndReceive());	       
			byte data = buf[ISO7816.OFFSET_CDATA];	// en data guardo la información
			return;		
	
	
		default:
			ISOException.throwIt(ISO7816.SW_INS_NOT_SUPPORTED);
		}
	}

}
