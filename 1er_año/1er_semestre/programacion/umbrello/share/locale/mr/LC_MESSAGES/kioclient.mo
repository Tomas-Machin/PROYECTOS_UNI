��            )         �  	   �  X   �  S     S   h  S   �  P     y   a  �   �  �  �  R   C  e   �  g   �  e   d  P   �  M   	  X   i	  x   �	  H   ;
  d   �
  r   �
     \     r  4   �     �  
   �  %   �  6        8     P  '   c  �  �  !   0  �   R  u   �  s   ^  }   �  d   P  �   �  _  i  �  �  }   R  �   �  u   m  �   �  a   �  f   �  �   I  �   �  �   l  �   �  �   �  &     #   C  {   g     �     �  p     �   �  2     (   K  U   t                        
                                        	                                                                        
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

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. Project-Id-Version: kioclient
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2013-02-23 17:39+0530
Last-Translator: Chetan Khona <chetan@kompkin.com>
Language-Team: Marathi <kde-i18n-doc@kde.org>
Language: mr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=(n!=1);
 
सिन्टॅक्स्:
             #'dest'हि "trash:/" असू शकतो फ़ाइल्स हलवण्यासाठी
            # trash मध्ये.
             #  छोटी आवृत्ती Kioclient cp
            #  सुद्धा उपलब्ध

             # छोटी आवृत्ती Kioclient mv
            #सुद्धा उपलब्ध.

             #  kioclient rm ची छोटी आवृत्ती 
            #  सुद्धा उपलब्ध

  Kioclient cat 'url'
            #'url' चे कंटेंट stdout वर लिहितो

  Kioclient  कॉपी 'src''dest'
            #URL'src'ला 'dest' वर कॉपी करते.
            #'src'हि URL ची सूची असू शकते.
  Kioclient download['src']
            # वापरकर्त्याने स्पष्ट केलेल्या ठिकाणी URL 'src'कॉपी करते.
            #'src' हि URL ची सूची असू शकते,जर नसेल तर 
            #URLला विनंती करता येईल.

  Kioclient exec'url'['mimetype']
            #अप्लिकेशन मधील 'url' ने दर्शवलेले दस्तऐवज उघडण्याचा प्रयत्न करते.
            #  या संबंधित केडीई मध्ये 'mimetype' वगळू  शकता.
            # या बाबतीत  'mimetype' हि निश्चित करू शकता
            #आपोआप.यासाठी URL हि दस्तऐवजाची URL
 अथवा ती *.डेस्कटॉप फ़ाइल.
            #'url' हि executable हि  असते.
  kioclient exec .
             //चालू  शब्दकोश उघडतो.खूप सुविधाजनक.

  kioclient exe फ़ाइल:/home/weis/data/test.html
             //डिफाँल्ट बाईंडिंग सह फ़ाइल उघडते

  kioclient exec file:/home/weis/data/test.html Netscape
             //netscape सह फ़ाइल उघडते

  kioclient exec file:/root/Desktop/cdrom.desktop
             //CDROM'sला सुरु करण्याचा शब्दकोश उघडतो.

  kioclient exec file:/root/Desktop/emacs.desktop
             //चालू करते emacs

  kioclient exec ftp://localhost/
             //URLसह नवीन चौकट उघडते.

  kioclient म्हणजे 'url'
            # कंटेंट सूची'url'शब्दकोश stdout साठी 

  Kioclient हलवा'src''dest'
            # URL 'src'हलवा'dest'कडे.
            #'src'हि URLची सूची असू शकते.
  Kioclient ओपन प्रॉपर्टीज 'url ' 
            # प्रॉपर्टीज मेन्यू उघडतो 

  kioclient काढा 'url'
            #'url' काढतो 
            #'url' ही URLs ची सूची असू शकते.
 *** उदाहरणे:
 kioclient exe फ़ाइल :/root/Desktop/cdrom.desktop"Mount default"
             //चालू करतेCDROM

 आदेश करिता बाब आदेश (--commands पहा) संजाळ-पारदर्शक कार्यपद्धती करिता आदेश-ओळ साधन लक्ष्य URL KIO ग्राहक विना-संवाद वापरणी: संदेश बॉक्स् आढळले नाही लक्ष्य अस्तित्वात असल्यास ते खोडून लिहा (प्रत करा व हलवा) उपलब्ध आदेश दर्शवा स्रोत URL किंवा URLs वैध URL पासून डाउनलोड करू शकत नाही. 