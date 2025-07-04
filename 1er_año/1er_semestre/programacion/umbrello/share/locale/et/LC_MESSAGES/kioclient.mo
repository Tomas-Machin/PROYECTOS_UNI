��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     $  ^   0  R   �  R   �  R   5  Q   �  �   �  �   a  �  +  J   �  k     a   �  e   �  T   K  T   �  W   �  �   M  I   �  i     s   �  *   �  *   '  (   R     {     �  8   �     �  
   �  3   �  L   $      q     �  -   �     �        #                                                        !                            
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
PO-Revision-Date: 2014-06-02 10:40+0300
Last-Translator: Marek Laane <bald@smail.ee>
Language-Team: Estonian <kde-et@linux.ee>
Language: et
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 
Süntaks:
             #   'dest' võib olla "trash:/" failide viskamiseks
            #   prügikasti.

             #   kasutada saab ka lühemat
            #   varianti kioclient cp.

             #   kasutada saab ka lühemat
            #   varianti kioclient mv.

             #   kasutada saab ka lühemat
            #   varianti kioclient rm.

   kioclient cat 'url'
            # 'url' sisu kirjutamine standardväljundisse

   kioclient copy 'src' 'dest'
            # Kopeerib URL-i 'src' sihtkohta 'dest'.
            #   'src' võib olla URL-ide nimekiri.
   kioclient download ['src']
            # Kopeerib URL-i 'src' kasutaja määratud asukohta.
            #   'src' võib olla URL-ide nimekiri. Kui seda pole antud,
            #   päritakse URL-i.

   kioclient exec 'url' ['mimetype']
            # Püütakse avada dokument, millele viitab 'url', rakenduses,
            #   mis on KDE-s sellega seostatud. 'mimetype' võib ka andmata jääda.
            #   Sel juhul määratakse MIME tüüp automaatselt. 
            #   URL võib loomulikult olla nii dokumendi URL kui ka
            #   *.desktop-fail.
            #   'url' võib olla ka käivitatav fail.
   kioclient exec .
             // Avab aktiivse kataloogi. Väga mugav.

   kioclient exec file:/home/weis/data/test.html
             // Avab faili vaikimisi seostatud rakenduses

   kioclient exec file:/home/weis/data/test.html Netscape
             // Avab faili Netscape'is

  kioclient exec file:/root/Desktop/cdrom.desktop
             // Avab CD-seadme ühendamiskataloogi

   kioclient exec file:/root/Desktop/emacs.desktop
             // Käivitab emacsi

   kioclient exec ftp://localhost/
             // Avab uue akna määratud URL-iga

   kioclient ls 'url'
            # kataloogi 'url' sisu näitamine standardväljundis

   kioclient move 'src' 'dest'
            # Liigutab URL-i 'src' sihtkohta 'dest'.
            #   'src' võib olla URL-ide nimekiri.
   kioclient openProperties 'url'
            # Omaduste menüü avamine

   kioclient remove 'url'
            # Eemaldab URL-i
            #   'url' võib olla ka URL-ide loend.
 *** Näited:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Ühendab CD-seadme

 %1: süntaksi viga: liiga vähe argumente
 %1: süntaksi viga: liiga palju argumente
 %1: süntaksi viga: tundmatu käsk '%2'
 Käsu argumendid Käsk (vt. --commands) Võrguläbipaistvusega operatsioonide käsureatööriist Siht-URL KIO klient Mitteinteraktiivne kasutamine: teatekastid puuduvad Sihtmärgi ülekirjutamine, kui see on olemas (kopeerimisel ja liigutamisel) Saadaolevate käskude näitamine Allika URL või URL-id Vigaselt URL-ilt pole võimalik alla laadida. fail või URL 