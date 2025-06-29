��             +         �  	   �  X   �  S   ,  S   �  S   �  P   (  y   y  �   �  �  �  R   [  e   �  g     e   |  P   �  M   3	  X   �	  x   �	  H   S
  d   �
  r        t     �  4   �     �  
   �  %   �  6        P     h  '   {     �  �  �     ^  X   t  S   �  S   !  S   u  P   �  y     �   �  �  _  R   �  e   O  g   �  e     P   �  M   �  X   "  x   {  H   �  d   =  r   �  /     (   E  ~   n     �       {     �   �  2        M  b   m     �                                                         	                                                                                
       
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

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. file or URL Project-Id-Version: kioclient
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2013-06-18 10:21-0500
Last-Translator: A S Alam <aalam@users.sf.net>
Language-Team: Punjabi/Panjabi <punjabi-users@lists.sf.net>
Language: pa
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 
ਸੰਟੈਕਸ:
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

 ਕਮਾਂਡ ਲਈ ਆਰਗੂਮਿੰਟ ਕਮਾਂਡ(--commands ਵੇਖੋ) ਨੈੱਟਵਰਕ-ਟਰਾਂਸਪੇਰੱਟ ਓਪਰੇਸ਼ਨਾਂ ਲਈ ਕਮਾਂਡ ਲਾਇਨ ਟੂਲ ਟਿਕਾਣਾ URL KIO ਕਲਾਇਟ ਕੋਈ ਐਂਟਰ-ਐਕਟਿਵ ਵਰਤੋਂ ਨਹੀਂ: ਕੋਈ ਸੁਨੇਹਾ ਬਕਸੇ ਨਹੀਂ ਟਿਕਾਣੇ ਉੱਤੇ ਲਿਖੋ, ਜੇ ਮੌਜੂਦ ਹੋਵੇ (ਕਾਪੀ ਕਰਨ ਤੇ ਭੇਜਣ ਲਈ) ਉਪਲੱਬਧ ਕਮਾਂਡ ਵੇਖਾਓ ਸਰੋਤ URL ਜਾਂ URLs ਇੱਕ ਗਲਤ URL ਤੋਂ ਡਾਊਨਲੋਡ ਕਰਨ ਲਈ ਅਸਫ਼ਲ ਹੈ। ਫਾਇਲ ਜਾਂ URL 