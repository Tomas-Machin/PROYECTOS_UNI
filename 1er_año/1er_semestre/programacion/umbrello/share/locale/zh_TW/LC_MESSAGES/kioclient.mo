Þ    #      4  /   L        	   	  X     S   l  S   À  S     P   h  y   ¹  Ê   3    þ  R     e   î  g   T  e   ¼  P   "	  M   s	  X   Á	  x   
  H   
  d   Ü
  r   A  3   ´  1   è  3        N     d  4   }     ²  
   Â  %   Í  6   ó     *     B  '   U     }  Ä       N  Q   Z  8   ¬  8   å  8     O   W     §  ¦   /  (  Ö  U   ÿ  c   U  d   ¹  b     V     O   Ø  N   (     w  C   ÿ  l   C  q   °  *   "  !   M  )   o           ©     Ê     é  
   ö  $     3   &     Z     p  $   }     ¢        #                                                        !                            
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
PO-Revision-Date: 2013-07-01 16:41+0800
Last-Translator: Franklin Weng <franklin at goodhorse dot idv dot tw>
Language-Team: Chinese Traditional <kde-tw@googlegroups.com>
Language: zh_TW
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=1; plural=0;
 
èªæ³ï¼
             # 'dest' è¥çº "trash:/" åæå°æªæ¡ç§»å°è³æºåæ¶ç­å§ã
             #  kioclient cp çç­çæ¬ä¹å¯ä½¿ç¨ã
             #  kioclient mv çç­çæ¬ä¹å¯ä½¿ç¨ã
             # kioclient rm çç­çæ¬ä¹å¯ä½¿ç¨ã

   kioclient cat 'url'
            # å° url ç¶²åçå§å®¹å¯«å°æ¨æºè¼¸åº

   kioclient copy 'src' 'dest'
            # å° src è¤è£½å° destã
            #   'src' å¯ä»¥æ¯è¨±å¤æªæ¡æç¶²åçæ¸å®ã
   kioclient download ['src']
            # å° src è¤è£½å°ä½¿ç¨èæå®çä½ç½®ã
            #   'src' å¯ä»¥æ¯è¨±å¤æªæ¡æç¶²åï¼ä½è³å°è¦ä¸åã

   kioclient exec 'url' ['mimetype']
            # ä¾ KDE æå®çæç¨ç¨å¼ä¾åè©¦éå url ææå®çæä»¶ã
            #   å¦æ MIME åæå¯ä»¥èªåæå®ï¼æ¨å¯ä»¥çç¥ mimetype åæ¸ã
            #   URL å¯ä»¥æ¯æä»¶æªåï¼ææ¯ä¸å .desktop æªæå·è¡æªã
   kioclient exec .
             // éåç®åçç®éãéå¸¸æ¹ä¾¿çç¨æ³ã

   kioclient exec file:/home/weis/data/test.html
             // ä»¥é è¨­æç¨ç¨å¼éåè©²æª

   kioclient exec file:/home/weis/data/test.html Netscape
             // ä»¥ Netscape éåè©²æª

   kioclient exec file:/root/Desktop/cdrom.desktop
             // éååç¢æ©çæè¼ç®é

   kioclient exec file:/root/Desktop/emacs.desktop
             // éå§å·è¡ emacs

   kioclient exec ftp://localhost/
             // å¨æ°è¦çªéåéç¶²å

   kioclient ls 'url'
            # å°ç®é url çå§å®¹å¯«å°æ¨æºè¼¸åº

   kioclient move 'src' 'dest'
            # å° src ç§»åå° destã
            #   'src' å¯ä»¥æ¯è¨±å¤æªæ¡æç¶²åçæ¸å®ã
   kioclient openProperties 'url'
            # éåå§å®¹é¸å®

   kioclient remove 'url'
            # å°ç¶²åç§»é¤ã
            #   'url' å¯ä»¥æ¯ç¶²åçæ¸å®ã
 *** ä¾å¦ï¼
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // æè¼åç¢æ©

 %1ï¼èªæ³é¯èª¤ï¼æ²æè¶³å¤ çåæ¸
 %1ï¼èªæ³é¯èª¤ï¼åæ¸éå¤
 %1ï¼èªæ³é¯èª¤ï¼æªç¥çæä»¤ '%2'
 æä»¤çåæ¸ æä»¤ï¼è«åè --commandsï¼ ç¶²è·¯æä½çå½ä»¤åå·¥å· ç®çç¶²å KIO Client éäºåå¼ä½¿ç¨ï¼æ²æè¨æ¯ç è¥ç®æ¨å·²å­å¨åè¦å¯«ï¼è¤è£½æç§»åæï¼ é¡¯ç¤ºå¯ç¨çæä»¤ ä¾æºç¶²å ç¡æ³å¾ä¸åæ³çç¶²åä¸è¼ã æªæ¡æç¶²å 