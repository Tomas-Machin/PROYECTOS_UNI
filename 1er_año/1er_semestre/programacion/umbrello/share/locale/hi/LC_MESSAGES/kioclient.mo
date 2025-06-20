��            )         �  	   �  X   �  S     S   h  S   �  P     y   a  �   �  �  �  R   C  e   �  g   �  e   d  P   �  M   	  X   i	  x   �	  H   ;
  d   �
  r   �
     \     r  4   �     �  
   �  %   �  6        8     P  '   c  �  �     A  X   ]  S   �  S   
  S   ^  P   �  y     �   }  �  H  �   �  �   �  �   ?  e   �  m   H  �   �  P   ?  -  �  �   �  d   |  r   �  B   T  9   �  �   �  %   T  %   z  �   �  �   !  ;   �  "   
  k   -                        
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
PO-Revision-Date: 2012-07-10 20:26+0530
Last-Translator: G Karunakar <karunakar@indlinux.org>
Language-Team: Hindi <indlinux-hindi@lists.sourceforge.net>
Language: hi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.2
Plural-Forms: nplurals=2; plural=(n!=1);
 
सिंटेक्स:
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
             // मौजूदा डिरेक्ट्री को खोलता है. बहुत ही सुविधाजनक.

   kioclient exec file:/home/weis/data/test.html
             // फ़ाइल को डिफ़ॉल्ट बाइंडिंग के साथ खोलता है

   kioclient exec file:/home/weis/data/test.html Netscape
             // फ़ाइल को नेटस्केप के साथ खोलता है

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Opens the CDROM's mount directory

   kioclient exec file:/root/Desktop/emacs.desktop
             // ईमैक्स खोलता है

   kioclient exec ftp://localhost/
             // यूआरएल के साथ नया विंडो खोलता है

   kioclient cat 'url'
            # Writes out the contents of 'url' to stdout

   केआईओक्लाएंट खिसकाना 'स्रोत' 'गंतव्य'
            # खिसकाता है 'स्रोत' को 'गंतव्य' में.
            #   'स्रोत' यूआरएल की सूची हो सकती है.
   केआईओक्लाएंट ओपन प्रॉपर्टीज़ 'यूआरएल'
            # प्रॉपर्टी मेन्यू खोलता है

   kioclient remove 'url'
            # Removes the URL
            #   'url' may be a list of URLs.
 *** Examples:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Mounts the CDROM

 कमांड के लिए आर्गुमेंट्स कमांड (देखें --कमांड्स) नेटवर्क-पारदर्शी ऑपरेशनों के लिए कमांड लाइन औजार गंतव्य यूआरएल केआईओ क्लाएंट कोई इंटरेक्टिव प्रयोग नहीं: कोई संदेश बक्सा नहीं गंतव्य के उपर लिख दें अगर पहले से मोजूद है (नकल वस्थानांतरण के लिए ) उपलब्ध कमांड्स दिखाएँ स्रोत यूआरएल एक अवैध यूआरएल से डाउनलोड करने में अक्षम. 