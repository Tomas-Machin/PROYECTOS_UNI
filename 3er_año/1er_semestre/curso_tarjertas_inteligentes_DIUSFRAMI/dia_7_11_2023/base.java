/*
 * Copyright 2005 Sun Microsystems, Inc. All rights reserved.
 * SUN PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */

/*
 * @(#)Wallet.java	1.11 06/01/03
 */

package com.sun.javacard.samples.wallet;
import javacard.framework.*;

public class Wallet extends Applet {

    /* constants declaration */
    
    // code of CLA byte in the command APDU header
    final static byte Wallet_CLA =(byte)0x80;
    
    // codes of INS byte in the command APDU header
    final static byte VERIFY = (byte) 0x20;


....
    
    // signal that the PIN verification failed
    final static short SW_VERIFICATION_FAILED =
    0x6300;
...
    
    /* instance variables declaration */
    OwnerPIN pin;
    short balance;
    
    private Wallet (byte[] bArray,short bOffset,byte bLength) {
      
        // It is good programming practice to allocate
        // all the memory that an applet needs during
        // its lifetime inside the constructor

        
        byte iLen = bArray[bOffset]; // aid length
        bOffset = (short) (bOffset+iLen+1);
        byte cLen = bArray[bOffset]; // info length
        bOffset = (short) (bOffset+cLen+1);
        byte aLen = bArray[bOffset]; // applet data length
        
        // The installation parameters contain the PIN
        // initialization value
        pin.update(bArray, (short)(bOffset+1), aLen);
        register();
    
    } // end of the constructor
    
    public static void install(byte[] bArray, short bOffset, byte bLength) {
        // create a Wallet applet instance
        new Wallet(bArray, bOffset, bLength);
    } // end of install method
    
    public boolean select() {
        
        // The applet declines to be selected
        // if the pin is blocked.
        if ( pin.getTriesRemaining() ...
           return ....
        
        return ... ;
        
    }// end of select method
    
    public void deselect() {
        
        // reset the pin value
        pin.reset();
        
    }
    
    public void process(APDU apdu) {
        
        // APDU object carries a byte array (buffer) to
        // transfer incoming and outgoing APDU header
        // and data bytes between card and CAD
        
        // At this point, only the first header bytes
        // [CLA, INS, P1, P2, P3] are available in
        // the APDU buffer.
        // The interface javacard.framework.ISO7816
        // declares constants to denote the offset of
        // these bytes in the APDU buffer
        
        byte[] buffer = apdu.getBuffer();
        // check SELECT APDU command
        
        if (apdu.isISOInterindustryCLA()) {
            if (buffer[ISO7816.OFFSET_INS] == (byte)(0xA4)) {
                return;
            } else {
                ISOException.throwIt (ISO7816.SW_CLA_NOT_SUPPORTED);
            }
        }
            
        // verify the reset of commands have the
        // correct CLA byte, which specifies the
        // command structure
        if (buffer[ISO7816.OFFSET_CLA] != Wallet_CLA)
            ISOException.throwIt(ISO7816.SW_CLA_NOT_SUPPORTED);
        
        switch (buffer[ISO7816.OFFSET_INS]) {
        case GET_BALANCE:
            getBalance(apdu);
            return;
  .....
  
  
        default:
            ISOException.throwIt(ISO7816.SW_INS_NOT_SUPPORTED);
        }
        
    }   // end of process method
    
    private void credit(APDU apdu) {
    
        // access authentication
        if ( ! pin.isValidated() )
            ISOException.throwIt(SW_PIN_VERIFICATION_REQUIRED);
        
        byte[] buffer = apdu.getBuffer();
        
        // Lc byte denotes the number of bytes in the
        // data field of the command APDU
        byte numBytes = buffer[ISO7816.OFFSET_LC];
        
        // indicate that this APDU has incoming data
        // and receive data starting from the offset
        // ISO7816.OFFSET_CDATA following the 5 header
        // bytes.
        byte byteRead =
            (byte)(apdu.setIncomingAndReceive());
        
        // it is an error if the number of data bytes
        // read does not match the number in Lc byte
        if ( ( numBytes != 1 ) || (byteRead != 1) )
            ISOException.throwIt(ISO7816.SW_WRONG_LENGTH);
        
        // get the credit amount
        byte creditAmount = buffer[ISO7816.OFFSET_CDATA];
        
        // check the credit amount
        if ( ( creditAmount > MAX_TRANSACTION_AMOUNT)
             || ( creditAmount < 0 ) )
            ISOException.throwIt(SW_INVALID_TRANSACTION_AMOUNT);
        
        // check the new balance
        if ( (short)( balance + creditAmount)  > MAX_BALANCE )
           ISOException.throwIt(SW_EXCEED_MAXIMUM_BALANCE);
        
        // credit the amount
        balance = (short)(balance + creditAmount);
    
    } // end of deposit method
    
    private void debit(APDU apdu) {
    
     
        
        balance = (short) (balance - debitAmount);
    
    } // end of debit method
    
    private void getBalance(APDU apdu) {
        
        byte[] buffer = apdu.getBuffer();
 ...       

        apdu.sendBytes((short)0, (short)2);
    
    } // end of getBalance method
    
    private void verify(APDU apdu) {
        
...
        
    } // end of validate method
} // end of class Wallet

