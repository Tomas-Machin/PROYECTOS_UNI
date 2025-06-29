��          �      l      �  	   �  P   �  R   <  g   �  e   �  P   ]  M   �  X   �  H   U  r   �          '  4   @     u  
   �  %   �  6   �     �       '     �  @  	   �  J   �  N   H  f   �  ]   �  P   \	  U   �	  \   
  O   `
  p   �
     !     8  5   Q     �     �  *   �  D   �          3  4   O                                                               	                      
             
Syntax:
   kioclient cat 'url'
            # Writes out the contents of 'url' to stdout

   kioclient exec .
             // Opens the current directory. Very convenient.

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

   kioclient openProperties 'url'
            # Opens a properties menu

 *** Examples:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Mounts the CDROM

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. Project-Id-Version: kioclient
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2013-04-26 20:48+0000
Last-Translator: Sveinn í Felli <sveinki@nett.is>
Language-Team: Icelandic <kde-isl@molar.is>
Language: is
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.2
Plural-Forms: Plural-Forms: nplurals=2; plural=n != 1;


 
Notkun:
   kioclient cat 'url'
            # Skrifar út innihald 'url' í stdout

   kioclient exec .
             // Opnar núverandi möppu. Mjög handhægt.

   kioclient exec file:/home/weis/data/test.html Netscape
             // Opnar skrána með netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Opnar CDROM tengimöppuna

   kioclient exec file:/root/Desktop/emacs.desktop
             // Ræsir emacs

   kioclient exec ftp://localhost/
             // Opnýjan glugga með slóð (URL)

   kioclient ls 'url'
            # Skrifar lista með innihaldi möppunnar 'url' í stdout

   kioclient openProperties 'url'
            # Opnar valmynd fyrir eiginleika

 *** Dæmi:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Tengir CDROM drif

 Viðföng fyrir skipun Skipun (sjá --commands) Skipanalínutól fyrir gegnsæar netvinnsluaðgerðir Úttaksnetfang (URL): KIO biðlari Ógagnvirk notkun: engir skilaboðagluggar Skrifa yfir ýttak ef það fyrirfinnst (við afritun eða flutning) Sýna tiltækar skipanir Upprunaslóð eða slóðir Get ekki hlaðið niður skrá frá ógildri slóð. 