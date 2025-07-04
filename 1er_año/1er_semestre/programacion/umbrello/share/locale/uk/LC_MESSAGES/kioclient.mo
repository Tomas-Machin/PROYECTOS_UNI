��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     �  �   �  y   <  y   �  y   0  �   �  �   1  _    �  }  o   3  �   �  r   )  �   �  Z     p   y  �   �  �   �  p   �  �   �  }   �  W   '  Q     R   �  (   $  #   M  g   q  #   �     �  h     �   w  ,      /   <   I   l      �         #                                                        !                            
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
PO-Revision-Date: 2013-06-14 07:35+0300
Last-Translator: Yuri Chornoivan <yurchor@ukr.net>
Language-Team: Ukrainian <kde-i18n-uk@kde.org>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
 
Синтаксис:
             #   «призначення» може бути «trash:/» — пересування
            #   файлів до теки смітника.
             #   крім того, передбачено скорочену
            #   версію kioclient cp.

             #   крім того, передбачено скорочену
            #   версію kioclient mv.

             #   крім того, передбачено скорочену
            #   версію kioclient rm.

   kioclient cat «адреса»
            # Записує вміст «адреса» до стандартного виводу

   kioclient copy «джерело» «призначення»
            # Копіює адресу «джерело» до «призначення».
            #   «джерело» може бути списком адрес.
   kioclient download [«джерело»]
            # Копіює адресу URL «джерело» до вказаного користувачем місця.
            #   «джерело» може бути списком адрес, якщо відсутній, то
            #   буде дано запит про адресу URL.

   kioclient exec «адреса» [«тип MIME»]
            # Намагається відкрити документ, на який вказує «адреса», у програмі,
            #   пов’язаної з ним у KDE. «тип MIME» можна пропустити.
            #   У цьому випадку тип MIME буде визначено автоматично.
            #   Звичайно, адреса URL може бути або адресою URL
            #   документа, або може бути файлом *.desktop.
            #   крім того, «адреса» може бути і виконуваним файлом
   kioclient exec .
             // Відкриває поточний каталог. Дуже зручно.

   kioclient exec file:/home/weis/data/test.html
             // Відкриває файл з типовою прив’язкою

   kioclient exec file:/home/weis/data/test.html Netscape
             // Відкриває файл у netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Відкриває каталог монтування CD-ROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Запускає emacs

   kioclient exec ftp://localhost/
             // Відкриває нове вікно з адресою URL

   kioclient ls «адреса»
            # Виводить список вмісту каталогу «адреса» до стандартного виводу

   kioclient move «джерело» «призначення»
            # Пересуває адресу URL «джерело» у «призначення».
            #   «джерело» може бути списком адрес URL.
   kioclient openProperties «адреса»
            # Відкриває меню властивостей

   kioclient remove «адреса»
            # Вилучає адресу
            #   значення «адреса» може бути списком адрес.
 *** Приклади:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Монтує CD-ROM

 %1: синтаксична помилка, недостатньо аргументів
 %1: синтаксична помилка, забагато аргументів
 %1: синтаксична помилка, невідома команда «%2»
 Аргументи для команди Команда (див. --commands) Інструмент командного рядка для прозорих для мережі дій Адреса призначення Клієнт KIO Неінтерактивне використання: без вікон з повідомленнями Перезаписувати призначення, якщо воно вже існує (під час копіювання і пересування) Показати наявні команди Адреса або адреси джерела Неможливо отримати з нечинної адреси URL. файл або адреса 