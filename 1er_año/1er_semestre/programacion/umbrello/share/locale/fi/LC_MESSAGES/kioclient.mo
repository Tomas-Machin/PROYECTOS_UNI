��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     ^  h   j  \   �  \   0  \   �  X   �  �   C  �   �  �  �  K   ;  a   �  e   �  _   O  Z   �  R   
  b   ]  �   �  J   j  w   �  x   -  ,   �  &   �  /   �     *     >  >   X     �     �  0   �  J   �  (   5  %   ^  *   �     �        #                                                        !                            
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
PO-Revision-Date: 2014-06-29 14:43+0300
Last-Translator: Lasse Liehu <lasse.liehu@gmail.com>
Language-Team: Finnish <kde-i18n-doc@kde.org>
Language: fi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-POT-Import-Date: 2012-12-01 22:22:14+0000
X-Generator: Lokalize 2.0
 
Syntaksi:
             #   'kohde' voi olla "trash:/", jolloin tiedostot
            #   siirretään roskakoriin.
             #   lyhyttä versiota ”kioclient cp”
            #   voi myös käyttää.

             #   lyhyttä versiota ”kioclient mv”
            #   voi myös käyttää.

             #   lyhyttä versiota ”kioclient rm”
            #   voi myös käyttää.

   kioclient cat 'osoite'
            # Tulostaa osoitteen sisällön vakiotulosvirtaan

   kioclient copy 'lähde' 'kohde'
            # Kopioi 'lähde'-osoitteen 'kohteeseen'.
            #   'lähde' voi olla joukko osoitteita.
   kioclient download ['lähde']
            # Kopioi osoitteen 'lähde' käyttäjän määrittämään sijaintiin.
            #   'lähde' voi olla joukko osoitteita, tai jollei sitä ole,
            #   osoitetta kysytään.

   kioclient exec 'url' ['mimetyyppi']
            # Yrittää avata 'osoitteen' osoittaman tiedoston KDE:n siihen kytkemässä
            #   sovelluksessa. 'mimetyypin' voi ohittaa,
            #   jolloin MIME-tyyppi päätellään automaattisesti.
            #   'osoite' voi tietenkin olla myös tiedoston osoite
            #   tai *.desktop-tiedosto. Samoin se voi olla ohjelma.
   kioclient exec .
             // Avaa nykyisen kansion. Hyvin kätevä.

   kioclient exec file:/home/weis/data/test.html
             // Avaa tiedoston oletuskytköksen

   kioclient exec file:/home/weis/data/test.html Netscape
             // Avaa tiedoston Netscapella

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Avaa CD-ROMin liitoskansion

   kioclient exec file:/root/Desktop/emacs.desktop
             // Käynnistää Emacsins

   kioclient exec ftp://localhost/
             // Avaa osoitteen uuteen ikkunaan

   kioclient ls 'osoite'
            # Luettelee hakemiston 'osoite' sisällön vakiotulosvirtaan

   kioclient siirrä 'lähde' 'kohde'
            # Siirtää verkko-osoitteen 'lähteestä' 'kohteeseen'.
            #   'lähde' voi olla verkko-osoitteiden luettelo.
   kioclient openProperties 'osoite'
            # Avaa ominaisuusvalikon

   kioclient remove 'osoite'
            # Poistaa osoitteen
            #   'osoite' voi myös olla joukko osoitteita.
 *** Esimerkkejä:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Liittää CD-ROMin

 %1: Syntaksivirhe: ei tarpeeksi parametreja
 %1: Syntaksivirhe: liikaa parametreja
 %1: Syntaksivirhe: Tuntematon komento ”%2”
 Komennon parametrit Komennot (ks. --commands) Verkon kannalta läpinäkyvien toimintojen komentorivityökalu Kohteen verkko-osoite KIO-asiakas Vuorovaikutukseton käyttö: ei viesti-ikkunoita Kirjoita kohteen yli, jos se on olemassa (kopioitaessa ja siirrettäessä) Näytä käytettävissä olevat komennot Lähteen verkko-osoite tai -osoitteet Virheellisestä osoitteesta ei voi ladata. tiedosto tai verkko-osoite 