��            )   �      �  	   �  X   �  S     S   X  S   �  P      y   Q  �   �  �  �  R   3  e   �  g   �  e   T  P   �  M   	  x   Y	  H   �	  d   
  r   �
     �
     	  4   "     W  
   g  %   r  6   �     �     �  '   �     "     #  }   3  Z   �  Z     Z   g  Q   �  �        �    �  [   �  l     o   �  p   �  R   i  j   �  �   '  S   �  �     p   �     �  &     F   >     �     �  H   �  ]   �  (   Q  -   z  7   �                        
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
PO-Revision-Date: 2012-01-12 21:41+0300
Last-Translator: Abdalrahim G. Fakhouri <abdilra7eem@yahoo.com>
Language-Team: Arabic <doc@arabeyes.org>
Language: ar
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=6; plural=n==0 ? 0 : n==1 ? 1 : n==2 ? 2 : n%100>=3 && n%100<=10 ? 3 : n%100>=11 ? 4 : 5;
X-Generator: Translate Toolkit 1.10.0
 
الجملة:
             #   يمكن لـ'dest' أن تكون "trash:/" لنقل الملفات
            #   إلى المهملات.
             #   الاختصار kioclient cp
            #   متوفّرٌ أيضاً.

             #   الاختصار kioclient mv
            #   متوفّرٌ أيضاً.

             #   الاختصار kioclient rm
            #   متوفّرٌ أيضاً.

   kioclient cat 'url'
            # تكتب محتويات 'url' إلى stdout

   kioclient copy 'src' 'dest'
            # تنسخ عنوان 'src' إلى 'dest'.
            #   قد يكون 'src' قائمة عناوين.
   kioclient download ['src']
            # ينسخ عنوان 'src' إلى الموقع الذي يحدده المستخدم'.
            #   قد يكون 'src' قائمة عناوين ، إذا لم يحدد سيتم طلب
            #  عنوان.

   kioclient exec 'url' ['mimetype']
            # يحاول فتح المستند ذو العنوان 'url'، في التطبيق
            #   الملحق به في الكيدي. يمكن حذف 'mimetype'.
            #   في هذه الحالة سيتم التعرف على mimetype
            #   تلقائي. بطبيعة الحال العنوان قد يكون عنوان مسند
            #   أو قد يكون *.desktop file.
            #   يمكن أن يكون المسار 'url' تنفيذيًّا أيضاً.
   kioclient exec .
             // تفتح المجلد الحالي. مريحة جدا.

   kioclient exec file:/home/weis/data/test.html
             //تفتح الملف بربط المبدئي

   kioclient exec file:/home/weis/data/test.html Netscape
             // تفتح الملف بالنسكيب

   kioclient exec file:/root/Desktop/cdrom.desktop
             // تفتح ملف ضم قارئ الأقراص

   kioclient exec file:/root/Desktop/emacs.desktop
             // تبدأ emacs

   kioclient exec ftp://localhost/
             // تفتح نافذة جديدة فيها العنوان

   kioclient move 'src' 'dest'
            # ينقل عنوان 'src' إلى 'dest'.
            #   قد تكون'src' قائمة عناوين.
   kioclient openProperties 'url'
            # يفتح قائمة الخصائص

   kioclient remove 'url'
            # ينقل العنوان URL
            #   قد تكون 'src' قائمة عناوين.
 *** أمثلة:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // تضم CDROM

 معطيات الأمر الأمر (انظر --الأوامر) أداة سطر أوامر لعمليات العابرة للشبكة. وجهة العنوان عميل KIO استعمال غير تفاعلي: بدون مربعات الرسائل استبدال الهدف إذا كان موجوداً (لأوامر النسخ والنقل) أظهر الأوامر المتوفرة مصدر العنوان أو العناوين تعذر التنزيل من عنوان غير صالح 