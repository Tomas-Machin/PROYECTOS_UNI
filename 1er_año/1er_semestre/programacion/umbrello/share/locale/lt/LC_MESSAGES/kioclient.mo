��            )   �      �  	   �  X   �  S     S   X  S   �  P      y   Q  �   �  �  �  R   3  e   �  g   �  e   T  P   �  M   	  x   Y	  H   �	  d   
  r   �
     �
     	  4   "     W  
   g  %   r  6   �     �     �  '   �    "     )  v   6  4   �  4   �  4     N   L  �   �  �   3  �    P   �  d     d   m  e   �  P   8  N   �  �   �  G   n  u   �  s   ,     �     �  =   �            2   0  L   c     �     �  +   �                        
                                        	                                                                         
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

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. Project-Id-Version: kioclient
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2011-06-20 18:45+0300
Last-Translator: Tomas Straupis <tomasstraupis@gmail.com>
Language-Team: Lithuanian <kde-i18n-lt@kde.org>
Language: lt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=(n==1 ? 0 : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : n%10==0 || (n%100>10 && n%100<20) ? 2 : 3);
X-Generator: Lokalize 1.2
 
Sintaksė:
             #   „dest“ gali būti „trash:/“, jei norite perkelti
            #   failus į šiukšliadėžę.
             #  yra ir trumpa kioclient cp versija.

             #  yra ir trumpa kioclient mv versija.

             #   yra ir trumpa kioclient rm versija

   kioclient cat „url“
            # „url“ turinį pateikia į stdout

   kioclient copy „src“ „dest“
            # Kopijuoja URL „src“ į „dest“.
            #   „src“ gali būti keleto URL sąrašas.

   kioclient download [„src“]
            # Kopijuoja URL „src“ į naudotojo nurodytą vietą.
            #   „src“ gali būti keleto URL sąrašas; jo nenurodžius,
            #   jis bus užklaustas.

   kioclient exec „url“ [„mimetype“]
            # Bando atverti „url“ nurodytą dokumentą programa,
            #   kuri, KDE aplinkoje, sietina su tuo dokumentu .
            #   Nenurodžius „mimetype“parametro, mimetype
            #   bus nustatomas automatiškai. Žinoma „url“ gali
            #   būti dokumento URL, arba *.desktop failas.
            #   'url gali būti ir paleidžiamas failas.
   kioclient exec .
             // Atvers veikiamąjį aplanką. Labai patogu.

   kioclient exec file:/home/weis/data/test.html
             // Atvers failą su numatytu saistymu

   kioclient exec file:/home/weis/data/test.html Netscape
             // Failą atvers su netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Atvers CDROM's montuotą aplanką

   kioclient exec file:/root/Desktop/emacs.desktop
             // Paleis emacs

   kioclient exec ftp://localhost/
             // Atvers naują langa su URL

   kioclient move „src“ „dest“
            # Perkelia URL „src“ į „dest“.
            #   „src“ gali būti keleto URL sąrašas.
   kioclient openProperties 'url'
            # Atveria savybių meniu

   kioclient remove „url“
            # Pašalina URL.
            #   „url“ gali būti keleto URL sąrašas.
 *** Pavyzdžiai:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Montuoja CDROM

 Komandos argumentai Komanda (žr. --commands) Komandinės eilutės priemonė tinklui skaidrioms operacijoms Paskirties URL KIO kliento programa Neinteraktyvus naudojimas: be pranešimų dialogų Perrašyti paskirties failą, jei toks yra (kopijavimo ir perkėlimo atveju) Rodyti komandų sąrašą Vienas ar keletas pirminių URL Nepavyksta atsisiųsti iš neteisingos URL. 