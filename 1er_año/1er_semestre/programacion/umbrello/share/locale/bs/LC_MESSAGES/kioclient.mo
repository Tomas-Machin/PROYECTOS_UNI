��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  Q  �     �  c   �  R   K  R   �  L   �  I   >  �   �  �     k  �  P   L  g   �  `     n   f  Q   �  Q   '  S   y  �   �  F   _  h   �  ~     -   �  +   �  2   �          0  3   J     ~     �  0   �  ?   �     
     (  #   B     f        #                                                        !                            
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
PO-Revision-Date: 2013-10-18 20:26+0000
Last-Translator: Samir Ribić <Unknown>
Language-Team: Bosnian <bs@li.org>
Language: bs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2013-10-19 05:19+0000
X-Generator: Launchpad (build 16807)
X-Accelerator-Marker: &
X-Text-Markup: kde4
X-Environment: kde
Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
 
Sintaksa:
             #   Odredište može biti trash:/, za premiještanje
            #   fajlova u smeće.
             #   Takođe je dostupna kratka verzija
            #   kioclient cp.

             #   Takođe je dostupna kratka verzija
            #   kioclient mv.

             #   Dostupna je i kratka verzija
            #   kioclient rm.

   kioclient cat 'url'
            # Ispisuje sadržaj URL‑a na stdout

   kioclient copy 'izvor' 'odrediste'
            # Kopira URL izvora na odredište.
            #   Izvor može biti i spisak URL‑ova.
   kioclient download ['izvor']
            # Kopira URL izvora na korisnički zadatu lokaciju.
            #   Izvor može biti i spisak URL‑ova; ako nije zadat,
            #   URL će biti zatražen.

   kioclient exec 'url' ['mimetip']
            # pokušava da otvori dokument pokazan URL‑om, u programu
            #   pridruženom mu u KDE‑u. MIME tip se može izostaviti,
            #   u kom slučaju se određuje automatski. Naravno, URL
            #   može biti URL dokumenta, ili *.desktop datoteke.
            #   URL može biti i izvršni fajl.
   kioclient exec .
             # otvara tekući direktorijum — vrlo zgodno.

   kioclient exec file:/home/weis/data/test.html
             # otvara fajl podrazumijevanim programom

   kioclient exec file:/home/weis/data/test.html Netscape
             # otvara fajl Netscapeom

   kioclient exec file:/root/Desktop/cdrom.desktop
             # otvara direktorijum montiranja CD‑ROM‑a

   kioclient exec file:/root/Desktop/emacs.desktop
             # pokreće Emacs

   kioclient exec ftp://localhost/
             # otvara novi prozor sa URL‑om

   kioclient ls 'url'
            # Prikazuje sadržaj direktorija 'url' na stdout

   kioclient move 'izvor' 'odrediste'
            # premiješta URL sa izvora na odredište.
            #   Izvor može biti i spisak URL‑ova.
   kioclient openProperties 'url'
            # otvara meni svojstava

   kioclient remove 'url'
            # Uklanja URL
            # (može se navesti i spisak URL‑ova).
 *** Primjeri:
  kioclient exec file:/root/Desktop/cdrom.desktop "Podrazumijevano montiranje"
             # montira CD‑ROM

 %1: Sintaksna greška: nedovoljno argumenata
 %1: Sintaksna greška, previše argumenata
 %1: Sintaksna greška: nepoznata naredba „%2“
 Argumenti uz naredbu Naredba (vidi --commands) Alatka komandne linije za mrežno-providne postupke Odredišni URL KIO klijent Neinteraktivna upotreba: bez dijaloga s porukama Prebriši odredište ako postoji (za kopiranje i premještanje) Prikaži raspoložive naredbe Izvorni URL ili URL‑ovi Ne mogu da preuzmem neispravan URL. datoteka ili URL 