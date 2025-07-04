��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     .  �   F  p   �  p   P  p   �  |   2  �   �  :  �  V  �  i     {     j   �  v   f  W   �  [   5     �  �     X   �  �   8  �   �  S   a  J   �  L      -   M  1   {  c   �          %  [   8  H   �  .   �       >   '     f        #                                                        !                            
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
PO-Revision-Date: 2013-06-17 04:42+0600
Last-Translator: Sairan Kikkarin <sairan@computer.org>
Language-Team: Kazakh <kde-i18n-doc@kde.org>
Language: kk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.2
Plural-Forms: nplurals=1; plural=0;


 
Синтаксисы:
             #   Файлы 'Өшірілгендерге' жылжыту үшін.
            #   'dest' дегені "trash:/" болуы керек.
             #   сонымен қатар, kioclient cp
            #   деген қысқа түрі бар.

             #   сонымен қатар, kioclient mv
            #   деген қысқа түрі бар.

             #   сонымен қатар, kioclient rm
            #   деген қысқа түрі бар.

   kioclient cat 'url'
            # 'url' дегеннің мазмұның stdout құрылғысына шығарады

   kioclient copy 'src' 'dest'
            # URL 'src' дегеннен 'dest' дегенге көшірмелеу.
            #   'src' деген URL-сілтемелер тізімі болуы мүмкін.
   kioclient download ['src']
            # URL 'src' дегенден пайдаланушы көрсеткен орынға
            #   көшірмелеу. 'src' деген URL-сілтемелер тізімі болуы
            #   мүмкін. 'src' келтірілмесе ол сұралады.

   kioclient exec 'url' ['mimetype']
            # 'url' сілтеген құжатты KDE-дегі сәйкесті қолданбада
            #   ашып көреді. 'mimetype' дегенді келтірмеу де болады.
            #   Бұндайда файлдың mime түрі автоматты түрде
            #   анықталады. Әрине, URL құжаттың URL-сілтемесі
            #   болу керек, немесе *.desktop файлы болуы мүмкін,
            #   орындалатын файл да бола алады.
   kioclient exec .
             // Назардағы каталогты ашу. Өте ыңғайлы.

   kioclient exec file:/home/weis/data/test.html
             // Сәйкесті қолданбада файлды ашу

   kioclient exec file:/home/weis/data/test.html Netscape
             // Netscape-те файлы ашу

   kioclient exec file:/root/Desktop/cdrom.desktop
             // CDROM тіркелген каталогты ашу

   kioclient exec file:/root/Desktop/emacs.desktop
             // Emacs-ты жегу

   kioclient exec ftp://localhost/
             // URL-мен жаңа терезе ашу

   kioclient ls 'url'
            # 'url' қапшығының мазмұның stdout құрылғысына шығарады

   kioclient move 'src' 'dest'
            # URL 'src' дегеннен 'dest' дегенге жылжыту.
            #   'src' деген URL-сілтемелер тізімі болуы мүмкін.
   kioclient openProperties 'url'
            # Қасиеттер мәзірін ашу
   kioclient remove 'url'
            # URL дегенді өшіру.
            #   'url' деген URL-сілтемелер тізімі болуы мүмкін.
 *** Мысалдар:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // CDROM-ды тіркеу

 %1: Синтаксис қатесі, аргументтер жеткіліксіз
 %1: Синтаксис қатесі, аргументтер тым көп
 %1: Синтаксис қатесі, %2 командасы беймәлім
 Команданың аргументтері Команда (--commands деп қараңыз) Желідегі әрекеттерге арналған команда жолының құралы Мақсат URL-і KIO клиенті Интерактивті емес жұмсау: хабарлама терезелерсіз Мақсатталған орнын (бар болса) ауыстыру Бар командаларын көрсету Көз URL не URL-дер Жарамсыз URL-ден жүктеуге болмайды. файл не URL 