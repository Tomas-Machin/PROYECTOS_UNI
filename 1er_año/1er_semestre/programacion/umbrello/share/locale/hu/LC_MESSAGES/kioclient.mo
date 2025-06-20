��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     .  i   =  P   �  P   �  P   I  V   �  �   �  �   �  �  y  I   =  s   �  k   �  r   g  Z   �  \   5  d   �  �   �  O   �  i   �  �   ?  .   �  +   �  5   $     Z     q  3   �     �     �  3   �  H        X     e  6   �     �        #                                                        !                            
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. file or URL Project-Id-Version: KDE 4.1
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2013-07-03 20:11+0200
Last-Translator: Balázs Úr <urbalazs@gmail.com>
Language-Team: Hungarian <kde-l10n-hu@kde.org>
Language: hu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 1.5
 
Szintaktika:
             #   A „cél” lehet a „trash:/” is, a fájlok
            #   kukába helyezéséhez.
             #   a kioclient cp rövid verziója is
            #   elérhető.

             #   a kioclient mv rövid verziója is
            #   elérhető.

             #   a kioclient rm rövid verziója is
            #   elérhető.

   kioclient cat 'url'
            # Kiírja az "url" tartalmát a standard kimenetre

   kioclient copy „forrás” „cél”
            # A „forrás” URL-t a „cél” URL-be másolja.
            # A „forrás” lehet URL-lista is.
   kioclient download ['forrás']
            # A forrás-URL-t ("forrás") letölti a beállított könyvtárba.
            # A forrás-URL több URL-t is tartalmazhat, ha egy URL sincs megadva,
            #   a program bekéri.

   kioclient exec „url” [„MIME-típus”]
            # Megpróbálja megnyitni az „url” című dokumentumot
            #   a dokumentummal társított alkalmazással. A „MIME-típus” elhagyható,
            #   ilyenkor azt a program automatikusan meghatározza.
            #   Az URL mutathat dokumentumra vagy .desktop kiterjesztésű
            #   asztali fájlra.
            # Az „url” lehet végrehajtható állomány is.
   kioclient exec .
             // Megnyitja az aktuális könyvtárat.

   kioclient exec file:/home/weis/data/test.html
             // Megnyit egy fájlt a hozzárendelt alkalmazással

   kioclient exec file:/home/weis/data/test.html Netscape
             // Megnyitja a fájl a Netscape-ben

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Megnyitja a CD-ROM csatlakozási könyvtárát

   kioclient exec file:/root/Desktop/emacs.desktop
             // Elindítja az Emacs-ot

   kioclient exec ftp://localhost/
             // Megnyit egy új ablakot az adott URL-lel

   kioclient ls 'url'
            # Kilistázza az 'url' könyvtár tartalmát a standard kimenetre

   kioclient move 'forrás' 'cél'
            # Átmozgatja a 'forrás' URL-t a 'cél' URL-be.
            # A 'forrás' URL-lista is lehet.
   kioclient openProperties 'url'
            # Megnyit egy tulajdonságmenüt

   kioclient remove „url”
            # Törli az URL-t
            #   „url” lehet URL-lista is.
 *** Néhány példa:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Csatlakoztat egy CD-ROM eszközt

 %1: Szintaktikai hiba, túl kevés argumentum
 %1: Szintaktikai hiba, túl sok argumentum
 %1: Szintaktikai hiba, ismeretlen parancs - „%2”
 A parancs argumentumai Parancs (lásd --commands) Parancssoros segédprogram hálózati műveletekhez Cél-URL KIO kliensprogram Nem interaktív használat: üzenetablakok nélkül Felülírja a célt, ha az létezik (másolásnál és áthelyezésnél) Parancslista Egy vagy több forrás-URL Nem sikerült a letöltés, mert az URL érvénytelen. fájl vagy URL 