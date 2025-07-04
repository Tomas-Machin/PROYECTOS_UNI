��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �  	   H  Z   R  U   �  U     U   Y  R   �  z     �   }  �  `  R   P  k   �  d     m   t  Q   �  L   4  [   �  x   �  M   V  k   �  q     )   �  -   �  )   �            D   4     y  
   �  5   �  8   �            "   ,     O        #                                                        !                            
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
PO-Revision-Date: 2013-06-14 21:30+0200
Last-Translator: Roman Paholík <wizzardsk@gmail.com>
Language-Team: Slovak <kde-sk@linux.sk>
Language: sk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
 
Syntax:
             #   'dest' môže byť "trash:/" na presun súborov
            #   do koša.
             #   krátka verzia kioclient cp
            #   je tiež k dispozícii.

             #   krátka verzia kioclient mv
            #   je tiež k dispozícii.

             #   krátka verzia kioclient rm
            #   je tiež k dispozícii.

   kioclient cat 'url'
            # Vypíše obsah 'url' na štandardný výstup

   kioclient copy 'src' 'dest'
            # Skopíruje URL 'src' do 'dest'.
            #   'src' môže byť zoznam URL.
   kioclient download ['src']
            # Skopíruje URL 'src' do užívateľom zadanej lokácie'.
            #   'src' môže byť zoznam URL, ak nie je zadané, tak
            #   bude zobrazená výzva na jeho zadanie.

   kioclient exec 'url' ['mimetype']
            # Pokúsi sa otvoriť dokument, na ktorý odkazuje 'url', v aplikácii,
            #   ktorá je s ním asociovaná v KDE. Môžete vynechať 'mimetype'.
            #   V takom prípade bude mimetype nastavený
            #   automaticky. Samozrejme URL môže byť URL
            #   dokumentu alebo to môže byť súbor *.desktop.
            #   document, or it may be a *.desktop file.
            #   'url' môže byť aj spustiteľné.
   kioclient exec .
             // Otvorí aktuálny adresár. Veľmi šikovné.

   kioclient exec file:/home/weis/data/test.html
             // Otvorí súbor prednastavenou aplikáciou

   kioclient exec file:/home/weis/data/test.html Netscape
             // Otvorí súbor v Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Otvorí adresár, kde je pripojená CDROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Spustí emacs

   kioclient exec ftp://localhost/
             // Otvorí URL v novom okne

   kioclient ls 'url'
            # Vypíše obsah adresára 'url' na štandardný výstup

   kioclient move 'src' 'dest'
            # Presunie URL 'src' do 'dest'.
            #   'src' môže byť zoznam URL.
   kioclient openProperties 'url'
            # Otvorí menu s vlastnosťami

   kioclient remove 'src' 'dest'
            # Odstráni URL.
            #   'url' môže byť zoznam URL.
 *** Príklady:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Pripojí CDROM

 %1: Chyba syntaxe, nedostatok parametrov
 %1: Chyba syntaxe, príliš veľa parametrov
 %1: Chyba syntaxe, neznámy príkaz '%2'
 Parametre pre command Príkaz (viď --commands) Nástroj pre príkazový riadok na sieťovo transparentné operácia Cieľové URL KIO klient Neinteraktívne použitie: žiadne okná so správami Prepísať cieľ ak existuje (pre kopírovanie a presun) Zobraziť dostupné príkazy Zdrojové URL Zlyhal download z neplatného URL. súbor alebo URL 