��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     >  _   J  P   �  P   �  V   L  ^   �  �     �   �  �  �  L   n  m   �  `   )  l   �  O   �  V   G  f   �  �     P   �  m   �  o   k  0   �  )     3   6     j     �  ?   �     �  
   �  0   �  ?   *     j     �  +   �  
   �        #                                                        !                            
                       "      	                                    
Syntax:
             #   'dest' may be "trash:/" to move the files
            #   to the trash.
             #   the short version kioclient cp
            #   is also available.

             #   the short version kioclient mv
            #   is also available.

             #   the short version kioclient rm
            #   is also available.

   kioclient cat 'url'
            # Writes out the contents of 'url' to stdout

   kioclient copy 'src' 'dest'
            # Copies the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient download ['src']
            # Copies the URL 'src' to a user-specified location'.
            #   'src' may be a list of URLs, if not present then
            #   a URL will be requested.

   kioclient exec 'url' ['mimetype']
            # Tries to open the document pointed to by 'url', in the application
            #   associated with it in KDE. You may omit 'mimetype'.
            #   In this case the mimetype is determined
            #   automatically. Of course URL may be the URL of a
            #   document, or it may be a *.desktop file.
            #   'url' can be an executable, too.
   kioclient exec .
             // Opens the current directory. Very convenient.

   kioclient exec file:/home/weis/data/test.html
             // Opens the file with default binding

   kioclient exec file:/home/weis/data/test.html Netscape
             // Opens the file with netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Opens the CDROM's mount directory

   kioclient exec file:/root/Desktop/emacs.desktop
             // Starts emacs

   kioclient exec ftp://localhost/
             // Opens new window with URL

   kioclient ls 'url'
            # Lists the contents of the directory 'url' to stdout

   kioclient move 'src' 'dest'
            # Moves the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient openProperties 'url'
            # Opens a properties menu

   kioclient remove 'url'
            # Removes the URL
            #   'url' may be a list of URLs.
 *** Examples:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Mounts the CDROM

 @info:shell%1: Syntax error, not enough arguments
 @info:shell%1: Syntax error, too many arguments
 @info:shell%1: Syntax error, unknown command '%2'
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. file or URL Project-Id-Version: kioclient
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2013-07-03 16:40+0200
Last-Translator: Federico Zenith <federico.zenith@member.fsf.org>
Language-Team: Italian <kde-i18n-it@kde.org>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 2.0
 
Sintassi:
             #   «destinazione» può essere «trash:/» per
            #   cestinare i file.
             #   è disponibile la versione breve
            #   kioclient cp.

             #   è disponibile la versione breve
            #   kioclient mv.

             #   è disponibile anche la versione breve
            #   kioclient rm.

   kioclient cat «url»
            # Scrive i contenuti di un «url» sullo standard output

   kioclient copy «sorgente» «destinazione»
            # Copia l'URL «sorgente» a «destinazione».
            #   «sorgente» potrebbe essere un elenco di URL.
   kioclient download [«sorgente»]
            # Copia l'URL «sorgente» in una posizione specificata dall'utente.
            #   «sorgente» potrebbe essere un elenco di URL, e se non ce n'è uno
            #   ne verrà fatta richiesta.

   kioclient exec «url» [«tipo MIME»]
            # Cerca di aprire il documento puntato dall'«url» nell'applicazione
            #   associatavi in KDE. Puoi omettere il «tipo MIME».
            #   In questo caso, il tipo di file viene determinato
            #   automaticamente. Ovviamente l'«url» può essere l'URL
            #   di un documento, o può essere un file *.desktop.
            #   L'«url» può anche essere un file eseguibile.
   kioclient exec .
             // Apre la cartella attuale. Molto comodo.

   kioclient exec file:/home/weis/data/test.html
             // Apre il file con l'applicazione predefinita

   kioclient exec file:/home/weis/data/test.html Netscape
             // Apre il file Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Apre la cartella di montaggio del CD-ROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Avvia Emacs

   kioclient exec ftp://localhost/
             // Apre una nuova finestra con un URL

   kioclient ls «url»
            # Elenca i contenuti della cartella «url» sullo standard output

   kioclient move «sorgente» «destinazione»
            # Sposta l'URL «sorgente» a «destinazione».
            #   «sorgente» può essere un elenco di URL.
   kioclient openProperties «url»
            # Apre un menu delle proprietà

   kioclient remove «URL»
            # Rimuove l'URL
            #   «URL» può essere un elenco di URL.
 *** Esempi:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Monta il CD-ROM

 %1: Errore di sintassi, argomenti insufficienti
 %1: Errore di sintassi, troppi argomenti
 %1: Errore di sintassi, comando sconosciuto «%2»
 Argomenti del comando Comando (vedi --commands) Strumento da riga di comando per operazioni trasparenti su rete URL di destinazione Client KIO Uso non interattivo: senza finestre di messaggio Sovrascrivi destinazione se esistente (per copia e spostamento) Mostra i comandi disponibili URL di origine Impossibile scaricare da un URL non valido. file o URL 