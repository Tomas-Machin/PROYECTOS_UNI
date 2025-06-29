��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �  	   >  f   H  [   �  [     [   g  j   �  �   .  �   �  �  �  O   x  d   �  e   -  h   �  Q   �  ^   N  h   �  �     P   �  �   �  p   �  !   �  $     $   ;     `     w  9   �     �  
   �  1   �  6        M     j  /   �     �        #                                                        !                            
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
PO-Revision-Date: 2013-06-14 20:54+0200
Last-Translator: Stefan Asserhäll <stefan.asserhall@bredband.net>
Language-Team: Swedish <kde-i18n-doc@kde.org>
Language: sv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.4
Plural-Forms: nplurals=2; plural=n != 1;
 
Syntax:
             #   'mål' kan vara "trash:/" för att flytta
            #   filerna till papperskorgen.
             #   den korta versionen kioclient cp
            #   är också tillgänglig.

             #   den korta versionen kioclient mv
            #   är också tillgänglig.

             #   den korta versionen kioclient rm
            #   är också tillgänglig.

   kioclient cat 'webbadress'
            # Skriver ut innehållet i 'webbadress' på standardutmatningen

   kioclient copy 'källa' 'mål'
            # Kopierar webbadressen 'källa' till 'mål'.
            #   'källa' kan vara en lista av webbadresser.
   kioclient download ['källa']
            # Kopierar webbadressen 'källa' till en användarspecificerad
            #   plats. 'källa' kan vara en lista av webbadresser. Om den
            #   inte anges, frågas efter en webbadress.

   kioclient exec 'webbadress' ['MIME-typ']
            # Försöker öppna dokumentet som pekas ut av 'webbadress',
            #   i programmet som hör ihop med den i KDE. Du kan
            #   utelämna 'MIME-typ'. I så fall bestämms MIME-typen
            #    automatiskt. Naturligtvis kan webbadressen vara ett
            #   dokuments webbadress, eller en *.desktop-fil.
            #   'webbadress' kan också vara ett körbart program.
   kioclient exec .
             // Öppnar arbetskatalogen. Mycket praktiskt.

   kioclient exec file:/home/weis/data/test.html
             // Öppnar filen med förvalt program

   kioclient exec file:/home/weis/data/test.html Netscape
             // Öppnar filen med Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Öppnar monterad katalog för cd-rom

   kioclient exec file:/root/Desktop/emacs.desktop
             // Startar emacs

   kioclient exec ftp://localhost/
             // Öppnar ett nytt fönster med webbadressen

   kioclient ls 'url'
            # Listar innehållet i katalogen 'webbadress' på standardutmatningen

   kioclient move 'källa' 'mål'
            # Flyttar webbadressen 'källa' till 'mål'.
            #   'källa' kan vara en lista av webbadresser.
   kioclient openProperties 'webbadress'
            # Öppnar en egenskapsmeny

   kioclient remove 'webbadress'
            # Tar bort webbadressen
            #   'webbadress' kan vara en lista av webbadresser.
 *** Exempel:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Monterar cd-rom

 %1: Syntaxfel, för få argument
 %1: Syntaxfel. för många argument
 %1: Syntaxfel, okänt kommando '%2'
 Argument för kommando Kommando (se --commands) Kommandoradsverktyg för nätverkstransparenta åtgärder Målwebbadress KIO-klient Icke-interaktiv användning: inga meddelanderutor Skriv över mål om det finns (vid kopiera och flytta) Visa tillgängliga kommandon Källwebbadress eller -adresser Kan inte ladda ner från en ogiltig webbadress. fil eller webbadress 