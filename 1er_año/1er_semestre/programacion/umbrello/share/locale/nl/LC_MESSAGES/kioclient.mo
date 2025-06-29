��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �  
   0  s   ;  V   �  W     R   ^  Z   �  �       �  �  �  F   �  s   �  n   s  �   �  g   f  ]   �  T   ,  �   �  R   %  |   x  �   �  '   �  %   �  0   �     
     #  9   =     w  
   �  .   �  J   �          2  9   F     �        #                                                        !                            
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
PO-Revision-Date: 2014-04-11 16:17+0200
Last-Translator: Freek de Kruijf <freekdekruijf@kde.nl>
Language-Team: Dutch <kde-i18n-nl@kde.org>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 
Gebruik:
             #   'bestemming' mag "trash:/" zijn om de bestanden naar
            #   de prullenbak te verplaatsen.
             #   de korte versie van kioclient cp
            #   is ook beschikbaar.

             #   'de korte versie van kioclient mv
            #   is ook beschikbaar.

             #   de korte versie kioclient rm
            #   is ook beschikbaar.

   kioclient cat 'URL-adres'
            # Schrijft de inhoud van 'URL-adres' naar stdout

   kioclient copy 'bron' 'bestemming'
            # kopieert het URL-adres 'bron' naar 'bestemming'.
            #   'bron' mag een lijst van URL-adressen zijn.
   kioclient download ['bron']
            # kopieert het URL-adres 'bron' naar een door de gebruiker
            #   opgegeven locatie.
            #   'bron' mag een lijst van URL-adressen zijn. Indien niet
            #   gegeven zal er om een URL-adres worden gevraagd.

   kioclient exec 'URL-adres' ['mime-bestandstype']
            #   probeert het document waarnaar 'URL-adres' wijst te 
            #   openen in het programma dat ermee is geassocieerd 
            #   in KDE. U mag 'mime-bestandstype' weglaten.
            #   In dat geval wordt het mime-bestandstype automatisch
            #   bepaald. Uiteraard mag URL-adres het adres van een
            #   document zijn of een *.desktop-bestand.
            #   URL-adres mag ook een uitvoerbaar bestand zijn.
   kioclient exec .
             // opent de huidige map. Erg handig.

   kioclient exec file:/home/gebruiker/data/test.html
             // opent het bestand met de standaardassociatie

   kioclient exec file:/home/gebruiker/data/test.html Netscape
             // opent het bestand met Netscape

   kioclient exec file:/home/gebruiker/Desktop/cdrom.desktop
             // opent de map waaraan de cd-rom-schijf wordt gekoppeld

   kioclient exec file:/home/gebruiker/Desktop/emacs.desktop
             // start het programma Emacs

   kioclient exec ftp://localhost/
             // opent een nieuw venster met het URL-adres

   kioclient ls 'url'
            # Schrijft de inhoud van de map 'url' naar stdout

    kioclient move 'bron' 'bestemming'
            # verplaatst het URL-adres 'bron' naar 'bestemming'.
            #   'bron' mag een lijst van URL-adressen zijn.
   kioclient openProperties 'URL-adres'
            # Opent een eigenschappenmenu

    kioclient remove 'url'
            # verwijdert het URL-adres
            #   'url' mag een lijst van URL-adressen zijn.
 *** Voorbeelden:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Koppelt de cd-rom-schijf aan het bestandssysteem

 %1: Syntaxisfout: te weinig argumenten
 %1: Syntaxisfout: te veel argumenten
 %1: Syntaxisfout: '%2' is een onbekend commando
 Argumenten voor commando Commando (zie --commands) Commandoregelprogramma voor netwerktransparante operaties URL-adres van bestemming KIO Client Niet-interactief gebruik: geen berichtvensters Bestemming overschrijven als deze bestaat (voor kopiëren en verplaatsten) Beschikbare commando's tonen Bron-URL-adres(sen) Er kan niet van een ongeldig URL-adres worden gedownload. Bestand of URL-adres 