Þ    #      4  /   L        	   	  X     S   l  S   À  S     P   h  y   ¹  Ê   3    þ  R     e   î  g   T  e   ¼  P   "	  M   s	  X   Á	  x   
  H   
  d   Ü
  r   A  3   ´  1   è  3        N     d  4   }     ²  
   Â  %   Í  6   ó     *     B  '   U     }  §       1  Z   =  H     Z   á  =   <  S   z  ¯   Î  Ë   ~    J  I   Ë  c     m   y  _   ç  W   G  M     X   í  ¬   F  I   ó  |   =  n   º      )      J  )   k          ¢  $   ¼     á     ò  $      >   %     d     z           ¸        #                                                        !                            
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. file or URL Project-Id-Version: kdelibs
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2013-07-27 15:19+0800
Last-Translator: FengChao <rainofchaos@gmail.com>
Language-Team: Chinese Simplified <kde-china@kde.org>
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Lokalize 1.5
 
è¯­æ³ï¼
             #   âç®æ ä½ç½®âå¯ä»¥æ¯âtrash:/âï¼ä»¥ææä»¶ç§»è³åæ¶ç«ã
             #   kioclient cp çç®ç
            #   åæ ·å¯ç¨ã

             #   âç®æ ä½ç½®âå¯ä»¥æ¯âtrash:/âï¼ä»¥ææä»¶ç§»è³åæ¶ç«ã
             #   kioclient çç­çæ¬å·ä¹æ¯å¯ç¨çã

   kioclient cat 'URL'
            # å°æå®âURLâçåå®¹åå°æ åè¾åº

   kioclient copy 'æºä½ç½®' 'ç®æ ä½ç½®'
            #   å°âæºä½ç½®âç URL å¤å¶å°âç®æ ä½ç½®âã
            #   âæºä½ç½®âä¹å¯ä»¥æ¯ URL åè¡¨ã
   kioclient download ['æºä½ç½®']
            #   å°âæºä½ç½®âææç URL å¤å¶å°ç¨æ·æå®çä½ç½®ã
            #   âæºä½ç½®âä¹å¯ä»¥æ¯ URL åè¡¨ï¼è³å°éè¦æå®ä¸ä¸ªã

   kioclient exec 'URL' ['MIME ç±»å']
            #   å°è¯ç¨ KDE å³èçç¨åºä¸­æå¼ URL æåçææ¡£ã
            #   MIME ç±»ååæ°å¯ä»¥çç¥ã 
            #   å¦æçç¥ MIME ç±»åï¼å®å°è¢«èªå¨æ£æµå³å®ãä¸è¿ URL å¿é¡»
            #   è¢«æç¡®æåä¸ä¸ªææ¡£ææ¯ *.desktop æä»¶ã
            #   æåå¯æ§è¡æä»¶ä¹æ¯å¯ä»¥çã
   kioclient exec .
             // æå¼å½åç®å½ï¼éå¸¸æ¹ä¾¿ã

   kioclient exec file:/home/weis/data/test.html
             // ä»¥é»è®¤æä»¶å³èæå¼æä»¶

   kioclient exec file:/home/weis/data/test.html Netscape
             // ä»¥ Netscape æµè§å¨æå¼æä»¶

   kioclient exec file:/root/Desktop/cdrom.desktop
             // æå¼åé©±çæè½½ç®å½

   kioclient exec file:/root/Desktop/emacs.desktop
             // å¯å¨ Emacs ç¨åº

   kioclient exec ftp://localhost/
             // å¨æ°çªå£ä¸­æå¼ URL

   kioclient ls 'URL'
            # å°æå®âURLâçåå®¹åè¡¨åå°æ åè¾åº

   kioclient move 'æºä½ç½®' 'ç®æ ä½ç½®'
            #   å° URL ä»âæºä½ç½®âç§»å°âç®æ ä½ç½®âã
            #   âæºä½ç½®âä¹å¯ä»¥æ¯ URL åè¡¨ã
   kioclient openProperties 'URL'
            # æå¼ä¸ä¸ªå±æ§èå

   kioclient remove 'URL å°å'
            # ç§»é¤æå®ç URL
            # âURL å°åâä¹å¯ä»¥æ¯ä¸ä¸²åè¡¨ã
 *** ç¤ºä¾ï¼
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // æè½½åé©±

 %1: è¯­æ³éè¯¯ï¼åæ°ä¸è¶³
 %1: è¯­æ³éè¯¯ï¼åæ°å¤ªå¤
 %1ï¼è¯­æ³éè¯¯ï¼æªç¥å½ä»¤â%2â
 å½ä»¤åæ° å½ä»¤(åè§ --commands) ç½ç»éææä½çå½ä»¤è¡å·¥å· ç®æ ä½ç½® URL KIO å®¢æ·ç«¯ éäº¤äºå¼ä½¿ç¨ï¼æ²¡æä¿¡æ¯æ¡ å¦æç®æ å·²ç»å­å¨åè¦ç(éå¯¹å¤å¶åç§»å¨æä½) æ¾ç¤ºå¯ç¨çå½ä»¤ æºä½ç½® URL æ URL åè¡¨ æ æ³ä»æ æ URL ä¸­ä¸è½½ã æä»¶æ URL 