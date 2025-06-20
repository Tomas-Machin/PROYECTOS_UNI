��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �  
   C  \   N  Q   �  Q   �  Q   O  D   �  ~   �  �   e  �  O  T   �  t   P  j   �  l   0  Q   �  L   �  N   <  |   �  M     c   V  u   �  3   0  3   d  0   �     �     �  B   �     =  
   J  -   U  :   �     �     �  !   �             #                                                        !                            
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
PO-Revision-Date: 2013-06-14 09:26+0200
Last-Translator: Vit Pelcak <vit@pelcak.org>
Language-Team: Czech <kde-i18n-doc@kde.org>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
X-Generator: Lokalize 2.0
 
Syntaxe:
             #   'dest' může být "trash:/" pro přesun souborů
            #   do koše.
             #   krátká verze kioclient cp
            #   je také dostupná.

             #   krátká verze kioclient mv
            #   je také dostupná.

             #   krátká verze kioclient rm
            #   je také dostupná.

   kioclient cat 'url'
            # Zapíše obsah 'url' do stdout

   kioclient copy 'zdroj' 'cil'
            # Zkopíruje URL 'zdroj' do 'cil'.
            #   'zdroj' může být seznam URL.
   kioclient download ['src']
            # Zkopíruje URL 'src' do uživatelem zadaného umístění'.
            #   'src' může být seznam URL, pokud není zadáno, tak
            #   bude zobrazena výzva na jeho doplnění.

   kioclient exec 'url' ['mimetype']
            # Pokusí se otevřít dokument na který ukazuje 'url' v aplikaci,
            #   kterou přiřadilo KDE. Můžete vynechat 'mimetype'.
            #   V této fázi je typ MIME určen
            #   automaticky. Samozřejmě, URL může být URL
            #   dokumentu, nebo to může být soubor *.desktop.
            #   'url' může být rovněž spustitelný soubor.
   kioclient exec .
             // Otevře aktuální adresář. Velice pohodlné.

   kioclient exec file:/home/weis/data/test.html Netscape
             // Otevře soubor pomocí výchozí aplikace

   kioclient exec file:/home/weis/data/test.html Netscape
             // Otevře soubor pomocí netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Otevře adresář kde je připojen CDROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Spustí emacs

   kioclient exec ftp://localhost/
             // Otevře nové okno s URL

   kioclient ls 'url'
            # Vypíše obsah adresáře 'url' do stdout

   kioclient move 'zdroj' 'cil'
            # Přesune URL 'zdroj' do 'cil'.
            #   'zdroj' může být seznam URL.
   kioclient openProperties 'url'
            # Otevře nabídku vlastností

   kioclient remove 'url'
            # Odstraní URL
            #   'url' může být seznam URL.
 *** Příklady:
  kioclient exec file:/root/Desktop/cdrom.desktop "Přípojný bod"
             // Připojí CDROM

 %1: Syntaktická chyba. Příliš málo argumentů
 %1: Syntaktická chyba. Příliš mnoho argumentů
 %1: Syntaktická chyba. Neznámý příkaz '%2'
 Argumenty pro příkaz Příkaz (viz --commands) Nástroj příkazové řádky pro síťově transparentní operace Cílové URL KIO klient Neinteraktivní režim: bez dialogových oken Přepsat cíl pokud existuje (pro kopírování a přesun) Zobrazit dostupné příkazy Zdrojové URL Nelze stahovat z neplatného URL. soubor nebo URL 