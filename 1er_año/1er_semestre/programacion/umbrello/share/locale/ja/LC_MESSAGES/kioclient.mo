Ū    #      4  /   L        	   	  X     S   l  S   Ā  S     P   h  y   š  Ę   3    ū  R     e   î  g   T  e   ŧ  P   "	  M   s	  X   Á	  x   
  H   
  d   Ü
  r   A  3   ´  1   č  3        N     d  4   }     ˛  
   Â  %   Í  6   ķ     *     B  '   U     }  Ô    	   ^  v   h  O   ß  O   /  O     b   Ī  Ą   2  ų   Ô  ú  Î  j   É  ~   4  s   ŗ  z   '  \   ĸ  b   ˙  t   b     ×  [   u     Ņ     b  .   ä  .     A   B       2     K   Í          '  A   >  K     $   Ė  %   ņ  ;        S        #                                                        !                            
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
PO-Revision-Date: 2014-12-06 16:41-0800
Last-Translator: Fumiaki Okushi <fumiaki.okushi@gmail.com>
Language-Team: Japanese <kde-jp@kde.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=n != 1;
X-Accelerator-Marker: &
X-Text-Markup: kde4
 
æ§æ:
             #   ããŋįŽąãĢį§ģåãããããĢã'dest' ã¯ "trash:/" ã§ã
            #   ããžããžããã
             #   į­į¸ŽįãŽ kioclient cp ã
            #   ãããžãã

             #   į­į¸ŽįãŽ kioclient mv ã
            #   ãããžãã

             #   į­į¸ŽįãŽ kioclient rm ã
            #   ãããžãã

   kioclient cat 'url'
            # 'url' ãŽãŗãŗããŗããæ¨æēåēåãĢæ¸ãåēããžã

   kioclient copy 'src' 'dest'
            # URL 'src' ã 'dest' ãĢãŗããŧããžãã
            #   'src' ã¯ URL ãŽãĒãšãã§ãããžããžããã

   kioclient download ['src']
            # URL 'src' ããĻãŧãļãæåŽããå ´æãĢãŗããŧããžãã
            #   'src' ã¯ URL ãŽãĒãšãã§ãããžããžããã
            #   æåŽããĒããã° URL ãčĻæąãããžãã

   kioclient exec 'url' ['mimetype']
            #   'url' ãæãææ¸ã KDE ã§éĸéŖäģããããĻãã
            #   ãĸããĒãąãŧãˇã§ãŗã§éãããčŠĻãŋãžãã
            #   'mimetype' ã¯įįĨå¯čŊã§ããįįĨããå ´åã
            #   MIME ãŋã¤ãã¯čĒåįãĢå¤æ­ãããžãã
            #   URL ãĢã¯ææ¸ãŽ URL ãžãã¯ *.desktop ããĄã¤ãĢ
            #   ãæåŽã§ããžãã
            #   URL ã¯åŽčĄããĄã¤ãĢã§ãããžããžããã
   kioclient exec .
             // įžå¨ãŽããŖãŦã¯ããĒãéããžããã¨ãĻãäžŋåŠã§ãã

   kioclient exec file:/home/weis/data/test.html
             // ããĄã¤ãĢããããŠãĢããŽéĸéŖäģãã§éããžã

   kioclient exec file:/home/weis/data/test.html Netscape
             // ããĄã¤ãĢã Netscape ã§éããžã

   kioclient exec file:/root/Desktop/cdrom.desktop
             // CDROM ãŽããĻãŗãããŖãŦã¯ããĒãéããžã

   kioclient exec file:/root/Desktop/emacs.desktop
             // emacs ãčĩˇåããžã

   kioclient exec ftp://localhost/
             // URL ãæ°ãããĻãŖãŗããĻã§éããžã

   kioclient ls 'url'
            # ããŖãŦã¯ããĒ 'url' ãŽãŗãŗããŗããæ¨æēåēåãĢæ¸ãåēããžã

   kioclient move 'src' 'dest'
            # URL 'src' ã 'dest' ãĢį§ģåããžãã
            #   'src' ã¯ URL ãŽãĒãšãã§ãããžããžããã
   kioclient openProperties 'url'
            # ãã­ãããŖãĄããĨãŧãéããžã

   kioclient remove 'url' 'dest'
            # 'url' ãåé¤ããžãã
            #   'url' ã¯ URL ãŽãĒãšãã§ãããžããžããã
 *** äŊŋį¨äž:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // CDROM ãããĻãŗãããžã

 %1: æ§æã¨ãŠãŧ: åŧæ°ãčļŗããžãã
 %1: æ§æã¨ãŠãŧ: åŧæ°ãå¤ãããžã
 %1: æ§æã¨ãŠãŧ: ä¸æãĒãŗããŗã <command>%2</command>
 ãŗããŗããŽåŧæ° ãŗããŗã (<icode>--commands</icode> ãåį§) ãããã¯ãŧã¯ééãĒæäŊãŽãããŽãŗããŗããŠã¤ãŗããŧãĢ čĄãå URL KIO ã¯ãŠã¤ãĸãŗã éå¯žčŠąįãĸãŧããäŊŋį¨: ãĄããģãŧã¸ããã¯ãšãĒã (ãŗããŧã¨į§ģåãŽã¨ã) å¯žčąĄãå­å¨ããå ´åãä¸æ¸ããã åŠį¨å¯čŊãĒãŗããŗããčĄ¨į¤ē ãŊãŧãš URL (åä¸ãžãã¯č¤æ°) įĄåšãĒ URL ããã¯ããĻãŗã­ãŧãã§ããžããã ããĄã¤ãĢãžãã¯ URL 