��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �  
   6  [   A  W   �  W   �  W   M  K   �  �   �  �   v  �  R  P   �  b   A  d   �  b   	  Q   l  M   �  R     �   _  J   �  l   A  u   �  %   $  &   J  &   q     �     �  <   �       
     '   #  C   K     �     �  #   �     �        #                                                        !                            
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
PO-Revision-Date: 2013-07-03 20:34+0200
Last-Translator: Martin Schlander <mschlander@opensuse.org>
Language-Team: Danish <kde-i18n-doc@kde.org>
Language: da
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 
Syntaks:
             #   "dest" kan være "trash:/" for at flytte filer
            #   til affald.
             #   den korte version kioclient cp
            #   er også tilgængelig.

             #   den korte version kioclient mv
            #   er også tilgængelig.

             #   den korte version kioclient rm
            #   er også tilgængelig.

   kioclient cat 'url'
            # skriver indholdet af 'url' til stdout

   kioclient copy "src" "dest"
            # Kopierer URL'en "src" til "dest".
            #   "src" kan være en liste over URL'er.
   kioclient download ['src']
            # Kopierer URL'en 'src' til et brugerdefineret sted.
            #   'src' kan være en liste over URL'er, hvis ingen til stede
            #   vil der blive anmodet om en URL.

   kioclient exec 'url' ['mimetype']
            # Forsøger at åbne dokumentet som "url" peger på i programmet
            #   associeret med det i KDE. Du kan undlade "mimetype".
            #   I så fald bestemmes MIME-typen
            #   automatisk. Naturligvis kan URL være URL til et
            #   dokument, eller det kan være en *.desktop-fil.
            #   "Url" kan også være en kørbar fil.
   kioclient exec .
             // Åbner den nuværende mappe. Meget bekvemt.

   kioclient exec file:/home/weis/data/test.html
             // Åbner filen med standardbinding

   kioclient exec file:/home/weis/data/test.html Netscape
             // Åbner filen med Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Åbner cd-roms monteringsmappe

   kioclient exec file:/root/Desktop/emacs.desktop
             // Starter emacs

   kioclient exec ftp://localhost/
             // Åbner nyt vindue med URL

   kioclient ls 'URL'
            # Oplister indholdet af mappen 'URL' til stdout

   kioclient move 'src' 'dest'
            # Flytter URL 'src' (kilde) til 'dest' (destination).
            #   'src' kan være en liste over URL'er.
   kioclient openProperties 'url'
            # Åbner en egenskaber-menu

   kioclient remove "URL"
            # Fjerner URL'en
            #   "URL" kan være en liste over URL'er.
 *** Eksempler:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Monterer cd-rommen

 %1: Syntaksfejl, ikke nok argumenter
 %1: Syntaksfejl, for mange argumenter
 %1: Syntaksfejl, ukendt kommando "%2"
 Argumenter for kommando Kommando (see --commands) Kommandolinjeværktøj til netværkstransparente operationer Destinations-URL KIO-klient Ikke-interaktiv brug: Ingen beskedbokse Overskriv destinationen hvis den findes (for kopiering og flytning) Vis tilgængelige kommandoer Kilde-URL eller -URL'er Kan ikke downloade fra ugyldig URL. Fil eller URL 