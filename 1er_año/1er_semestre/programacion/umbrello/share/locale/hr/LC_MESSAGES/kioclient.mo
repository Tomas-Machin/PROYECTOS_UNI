��    "      ,  /   <      �  	   �  X     S   \  S   �  S     P   X  y   �  �   #  �  �  R   �  e   �  g   D  e   �  P   	  M   c	  x   �	  H   *
  d   s
  r   �
     K     a  4   z     �  
   �  %   �  6   �     '     ?  #   R  !   v  #   �     �  '   �  J  �     ;  [   G  W   �  X   �  X   T  G   �  w   �  �   m  �  ;  M   �  n     k   �  f   �  P   S  M   �  w   �  J   j  d   �  x        �     �  8   �  
   �       3     =   C     �     �  ,   �  '   �  *        3  %   C            "                                                !                               
                               	                                    
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

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Syntax Error: Not enough arguments
 Syntax Error: Too many arguments
 Syntax Error: Unknown command '%1'
 URL or URLs Unable to download from an invalid URL. Project-Id-Version: kioclient
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2011-08-02 05:32+0200
PO-Revision-Date: 2011-07-13 16:59+0200
Last-Translator: Marko Dimjašević <marko@dimjasevic.net>
Language-Team: Croatian <kde-croatia-list@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: hr
X-Generator: Lokalize 1.2
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 
Sintaksa:
             #   'dest' može biti "trash:/" za micanje datoteka
            #   u smeće.

             #   skraćena inačica kioclient  p
            #   je također dostupna.

             #   skraćena inačica kioclienta mv
            #   je također dostupna.

             #   skraćena inačica kioclienta rm
            #   je također dostupna.

   kioclient cat 'url'
            # Ispisuje sadržaj  'url' u stdout

   kioclient copy 'src' 'dest'
            # Kopira URL 'src' u 'dest'.
            #   'src' može biti lista URL-ova.
   kioclient download ['src']
            #Kopira URL 'src' na korisnički definiranu lokaciju'.
            #   'src' može biti lista URLova, ako ne postoji, tada
            #   će biti zatražen URL.

   kioclient exec 'url' ['mimetype']
            # Pokušava otvoriti dokument ukazan sa 'url'  aplikacijom
            #   asociranom u KDE-u. Možete izostaviti 'mimetype'.
            #   U tom slučaju  je mimetype određen
            #   automatski. Naravno, URL može biti URL 
            #   dokumenta, ili može biti *.desktop datoteka.
            #   'url' može biti i izvršan.
   kioclient exec .
             // Otvara trenutni direktorij. Jako zgodno.

   kioclient exec file:/home/weis/data/test.html
             // Otvara novu datoteku sa uobičajenim binding

   kioclient exec file:/home/weis/data/test.html Netscape
             // Otvara novu datoteku sa netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Otvara CDROM direktorij montiranja

  kioclient exec file:/root/Desktop/emacs.desktop
             // Podiže emacs

   kioclient exec ftp://localhost/
             // Otvara novi prozor sa URL

   kioclient move 'src' 'dest'
            # Pomiće URL 'src' u 'dest'.
            #   'src' može biti lista URLova.
   kioclient openProperties 'url'
            # Otvara izbornik svojstava

   kioclient remove 'url'
            # Uklanja URL.
            #   'url' može biti lista URL-ova.
 *** Primjeri:
  kioclient exec file:/root/Desktop/cdrom.desktop "Uobičajeno montiranje"
             // Montira CDROM

 Argumenti naredbe Naredba (vidi --commands) Alat naredbenog redka za mrežno-transparentne operacije Ciljni URL KIO klijent Neinteraktivno korištenje: nema prozora s porukama Prepiši odredište ako ostoji (za kopiranje i premještanje) Prikaži dostupne naredbe Izvorni URL ili URL-ovi Sintaksna greška: Nema dovoljno argumenata
 Sintaksna greška: Previše argumenata
 Sintaksna greška: Nepoznata naredba '%1'
 URL ili URL-ovi Ne mogu spustiti sa nevaljalog URL-a. 