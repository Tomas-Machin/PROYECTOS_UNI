��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  D  �     �  �   �  �   �  �   B  �   �  }   \  �   �  Y  �  h  
  w   s  �   �  n   p  |   �  \   \  r   �  �   ,  �   �  �   �  �   )     �  V   ?  W   �  U   �  (   D  s   m  d   �     F     _  a   p  n   �  2   A   9   t   D   �      �         #                                                        !                            
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. file or URL Project-Id-Version: kioclient.po
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2013-06-15 09:42+0400
Last-Translator: Alexander Lakhin <exclusion@gmail.com>
Language-Team: Russian <kde-russian@lists.kde.ru>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 
Использование:
             #   В качестве параметра «назначение» можно задать
            #   «trash:/», тогда файлы будут удалены в корзину.
             #   Можно использовать сокращённый
            #   вариант команды «kioclient cp».

             #   Можно использовать сокращённый
            #   вариант команды «kioclient mv».

             #   Можно использовать сокращённый
            #   вариант команды «kioclient rm».

   kioclient cat 'url'
            # Вывести содержимое на стандартный поток вывода

   kioclient copy 'источник' 'назначение'
            # Скопировать один или несколько файлов
            # в указанное место назначения.
   kioclient download ['источник']
            # Скопировать один или несколько файлов в текущий каталог.
            # Если источник не указан, будет открыто диалоговое окно, 
            # в котором можно его указать.

   kioclient exec 'url' ['тип MIME']
            # Попытаться открыть файл, расположенный по заданному
            # адресу в соответствующем приложении. Если тип MIME 
            # не указан, он определяется автоматически. 
            # В качестве 'url' можно указать как адрес реального файла,
            # так и файл .desktop (значок для файла). Файл также может
            # быть исполняемым.
   kioclient exec .
             // Открыть текущий каталог в диспетчере файлов.

   kioclient exec file:/home/weis/data/test.html
             // Открыть файл в связанном приложении

   kioclient exec file:/home/weis/data/test.html Netscape
             // Открыть файл в Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Открыть каталог с содержимым CD

   kioclient exec file:/root/Desktop/emacs.desktop
             // Запустить Emacs

   kioclient exec ftp://localhost/
             // Открыть новое окно Konqueror с адресом

   kioclient ls 'url'
            # Вывести содержимое каталога по адресу на стандартный поток вывода

   kioclient move 'источник' 'назначение'
            # Переместить один или несколько файлов
            # в указанное место назначения.
   kioclient openProperties 'url'
            # Показать диалог свойства объекта по адресу 'url'

   kioclient remove 'url'
            # Удалить по адресу URL
            #   'url' может быть списком адресов.
 *** Примеры:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Подключить CD

 %1: ошибка синтаксиса (недостаточно аргументов)
 %1: ошибка синтаксиса (слишком много аргументов)
 %1: Ошибка синтаксиса (неизвестная команда «%2»)
 Аргументы для команды Команда (список доступных можно получить через параметр --commands) Консольная программа для локальных и сетевых операций URL назначения Клиент KIO Не интерактивное использование (без диалоговых окон) Заменять существующие файлы (при копировании и перемещении) Показать доступные команды Один или несколько URL источника Невозможно открыть URL или неверный URL. файл или URL 