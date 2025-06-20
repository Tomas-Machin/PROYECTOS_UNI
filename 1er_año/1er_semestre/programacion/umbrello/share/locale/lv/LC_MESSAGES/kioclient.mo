��            )   �      �  	   �  X   �  S     S   X  S   �  P      y   Q  �   �  �  �  R   3  e   �  g   �  e   T  P   �  M   	  x   Y	  H   �	  d   
  r   �
     �
     	  4   "     W  
   g  %   r  6   �     �     �  '   �  �  "     �  _   �  M   D  M   �  N   �  A   /  t   q  �   �  �  �  J   ~  k   �  d   5  a   �  Q   �  L   N  {   �  K     r   c  o   �     F     Y  c   v     �     �  3   �  @   &     g     �  %   �                        
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
PO-Revision-Date: 2011-12-02 08:08+0200
Last-Translator: Maris Nartiss <maris.kde@gmail.com>
Language-Team: Latvian
Language: lv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n != 0 ? 1 : 2);
 
Sintakse:
             #   'dest' var būt "trash:/", lai pārvietotu failus
            #   uz miskasti.
             #   ir pieejama arī īsā kioclient cp
            #   versija

             #   ir pieejama arī īsā kioclient mv
            #   versija

             #   ie pieejama arī īsā kioclient rm
            #   versija.

   kioclient cat 'url'
            # Izvada url saturu uz stdout

   kioclient copy 'src' 'dest'
            # Kopē 'src' URL uz 'dest'.
            #   'src' var būt URL saraksts.
   kioclient download ['src']
            # Nokopē URL 'src' uz lietotāja norādītu vietu.
            #   'src' var būt URL saraksts, ja nav padots, tad
            #   parāda pieprasījumu URL ievadei.

   kioclient exec 'url' ['mimetype']
            #  Mēģina atvērt dokumentu uz, kuru norāda 'url', tajā programmā, kurai
            #   KDE definēta asociācija šim mime-tipam. Jūs varat izlaist 'mimetype'.
            #   Tādā gadījumā mime-tips tiek noteikts automātiski
            #   Protams, URL var būt gan dokumenta URL,
            #   gan arī tas var būt *.desktop fails.
            #   'url' var būt arī izpildāms fails.
   kioclient exec .
             // Atver pašreizējo mapi. Ļoti ērti!

   kioclient exec file:['/path/to/file']
             // Atver failu /path/to/file ar noklusēto programmu

   kioclient exec file:/home/weis/data/test.html Netscape
             // Atvērt failu ar Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Atver CD-ROM piemontēto mapi

   kioclient exec file:/root/Desktop/emacs.desktop
             // Palaist emacs

   kioclient exec ftp://localhost/
             // Atvērt URL jaunā logā

   kioclient move 'src' 'dest'
            # Pārvieto 'src' URL uz 'dest'.
            #   'src' var būt saraksts ar URL.
   kioclient openProperties 'url'
            # Atvērt parametru izvēlni

   kioclient remove 'src' 'dest'
            # Izdzēš 'src' URL.
            #   'src' var būt saraksts ar URL.
 *** Piemēri:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Montē CD-ROM

 Komandas argumenti Komanda (skatīt --commands) Komandrindas rīks caurspīdīgām (bez nepieciešamības zināt kā darbojas) operācijām tīklā Mērķa URL KIO klients Neinteraktīva izmantošana: nekādu paziņojumlogu Pārrakstīt mērķi, ja tas eksistē (kopējot un pārvietojot) Rādīt pieejamās komandas Avota URL vai URLi Nevar lejuplādēt no kļūdainas URL 