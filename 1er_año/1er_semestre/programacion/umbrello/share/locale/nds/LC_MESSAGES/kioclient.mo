��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �  	   1  q   ;  U   �  U     U   Y  X   �  }     �   �  O  Q  R   �  n   �  j   c  i   �  X   8  `   �  a   �     T  N   �  m   #  t   �  (     &   /  +   V     �     �  2   �     �  
   �  !   �  @        _     |  '   �     �        #                                                        !                            
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
PO-Revision-Date: 2014-02-14 23:11+0100
Last-Translator: Sönke Dibbern <s_dibbern@web.de>
Language-Team: Low Saxon <kde-i18n-nds@kde.org>
Language: nds
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.4
Plural-Forms: nplurals=2; plural=n != 1;
 
Syntax:
             #   "Teel" kann "trash:/" wesen, wenn Du Dateien
            #   na de Affalltünn verschuven wullt.
             #   de Kortverschoon "kioclient cp"
            #   is ok verföögbor.

             #   de Kortverschoon "kioclient mv"
            #   is ok verföögbor.

             #   de Kortverschoon "kioclient rm"
            #   is ok verföögbor.

   kioclient cat "URL"
            # Gifft den Inholt vun "URL" na de Standardutgaav ut

   kioclient copy "Born" "Teel"'
            # Kopeert "Born" na "Teel".
            #   "Born" dörv en List vun URLs wesen.
   kioclient download ["Born"]
            # Kopeert dat Dokment bi "Born" na en angeven
            #   Steed. "Born" dörv en List vun URLs wesen. Is
            #   keen angeven, warrt na en fraagt.

   kioclient exec 'URL' ['MIME-Typ']
            # Versöcht dat un maakt dat Dokment bi "URL" mit dat Programm
            #   op, dat dor in KDE tohöört. Giffst Du keen MIME-Typ an, warrt
            #   he automaatsch kennt. "URL" kann op en Dokment, man ok
            #   op en .desktop-Datei oder en utföhrbor Programm wiesen.
   kioclient exec .
             // Maakt den aktuellen Orner op. Bannig kommood.

   kioclient exec file:/home/witt/daten/test.html
             // Maakt de Datei mit dat Standardprogramm op.

   kioclient exec file:/home/witt/daten/test.html Netscape
             // Maakt de Datei mit Netscape op

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Maakt de Inhangsteed vun de CD-ROM op

   kioclient exec file:/root/Schriefdisch/emacs.desktop
             // Röppt Emacs op

   kioclient exec ftp://localhost/
             // Maakt för de angeven URL en nieg Finster op

   kioclient ls "URL"
            # Gifft den Inholt vun den Orner "URL" na de Standardutgaav ut

   kioclient move "Born" "Teel"
            # Verschufft "Born" na "Teel".
            #   "Born" dörv en List vun URLs wesen.
   kioclient openProperties "URL"
            # Maakt en Egenschappenmenü op

   kioclient remove "URL"
            # Maakt de URL weg.
            #   "URL" dörv en List vun URLs wesen.
 *** Bispillen:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
            // Hangt de CD-ROM in

 %1: Syntax-Fehler, nich noog Argumenten
 %1: Syntax-Fehler, to vele Argumenten
 %1 Syntax-Fehler, Befehl "%2" nich begäng
 Argumenten för Befehl Befehl (kiek bi --commands) Konsoolwarktüüch för Akschonen över't Nettwark Teel-URL KIO-Client Stummbedrief: keen Mellendialogen Al vörhannen Teel överschrieven (för't Koperen un Verschuven) Verföögbor Befehlen wiesen Born-URL oder -URLs Vun en leeg URL lett sik nix daalladen. Datei oder URL 