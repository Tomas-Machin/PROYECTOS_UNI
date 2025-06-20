��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     s  d   �  T   �  T   :  V   �  Y   �  �   @    �  e  �  U   M  g   �  m     |   y  W   �  Z   N  d   �  �     M   �  o     y   t  *   �  *     -   D     r     �  B   �     �  
   �  .     =   3     q     �  +   �     �        #                                                        !                            
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
PO-Revision-Date: 2013-08-06 20:41+0200
Last-Translator: Marta Rybczyńska <kde-i18n@rybczynska.net>
Language-Team: Polish <kde-i18n-doc@kde.org>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.4
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 
Składnia:
             #   Jeśli 'cel' to "trash:/", nastąpi przeniesienie plików
            #   do kosza.
             #   dostępna jest też skrócona wersja 
            #   kioclient cp.
             #   dostępna jest też skrócona wersja 
            #   kioclient mv.
             #   dostępna jest także skrócona wersja
            #   kioclient rm.

   kioclient cat 'url'
            # Wypisanie zawartości 'url' na standardowe wyjście

   kioclient copy 'źródło' 'cel'
            # Skopiowanie zawartości adresu 'źródło' do 'cel'.
            #   'źródło' może być listą adresów.
   kioclient download ['źródło']
            # Skopiowanie zawartości adresu 'źródło' do lokalizacji podanej przez użytkownika.
            #   'źródło' może być listą adresów. Jeśli nie będzie podane, nastąpi
            #   zapytanie o adres.

   kioclient exec 'url' ['typMIME']
            # Próbuje otworzyć dokument wskazywany przez 'url' w programie
            #   związanym z nim w KDE. Można ominąć 'typMIME'.
            #   W takim przypadku typ ten jest znajdowany automatycznie.
            #   Oczywiście, adres URL może być adresem dokumentu lub pliku
            #   *.desktop.
   kioclient exec .
             // Otwarcie bieżącego katalogu. Bardzo przydatne.

   kioclient exec file:/home/weis/data/test.html
             // Otwarcie pliku w domyślnym programie

   kioclient exec file:/home/weis/data/test.html Netscape
             // Otwarcie pliku za pomocą Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Otwarcie katalogu z zawartością zamontowanego CD-ROM-u

   kioclient exec file:/root/Desktop/emacs.desktop
             // Uruchomienie Emacsa

   kioclient exec ftp://localhost/
             // Otwarcie nowego okna z podanym adresem

   kioclient Is 'url'
            # Wymienienie zawartości katalogu 'url' na standardowym wyjściu

   kioclient move 'źródło' 'cel'
            # Przeniesienie zawartości adresu URL z 'źródła' do 'celu'.
            #   'źródło' może być listą adresów.
   kioclient openProperties 'url'
            # Otwarcie menu właściwości

   kioclient remove 'adres'
            # Usunięcie adresu
            #   'adres' może być listą adresów.
 *** Przykłady:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Zamontowanie CD-ROM-u

 %1: Błąd składni, za mało argumentów
 %1: Błąd składni, za dużo argumentów
 %1: Błąd składni, nieznane polecenie '%2'
 Argumenty polecenia Polecenie (patrz --commands) Narzędzie wiersza poleceń do przezroczystych operacji sieciowych Docelowy adres URL Klient KIO Tryb nieinteraktywny: bez okienek komunikatów Nadpisz cel, jeśli istnieje (dla kopiowania i przeniesienia) Pokaż dostępne polecenia Adres lub adresy URL Nie można pobrać z błędnego adresu URL. plik lub adres URL 