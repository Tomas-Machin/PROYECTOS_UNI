��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �  
   )  [   4  U   �  U   �  U   <  P   �     �  �   c  �  G  ]   �  t   T  f   �  o   0  S   �  R   �  Y   G  ~   �  Q      k   r  t   �  .   S  (   �  .   �     �     �  E        V  
   i  .   t  =   �     �        *     
   <        #                                                        !                            
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. file or URL Project-Id-Version: 
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2013-06-14 23:13+0200
Last-Translator: Giovanni Sora <g.sora@tiscali.it>
Language-Team: Interlingua <kde-i18n-doc@kde.org>
Language: ia
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 
Syntaxe:
             #   'dest' pote esser "trash:/" pro mover le files
            #   a le corbe.
             #   le version breve kioclient cp
            #   es etiam disponibile.

             #   le version breve kioclient mv
            #   es etiam disponibile.

             #   le version breve kioclient rm
            #   es anque disponibile.

   kioclient cat 'url'
            # Il monstra le contentos del 'url' a stdout

   kioclient copy 'src' 'dest'
            # Il Copia le URL 'src' a 'dest'.
            #   'src' pote esser un lista de URLs.
   kioclient download ['src']
            # Il copia le URL 'src' a le location specificate per le usator'.
            #   'src' pote esser un lista de URLs, si il non es presente
            #   tunc un URL essera demandate.

   kioclient exec 'url' ['mimetype']
            # Il prova a aperir le documento punctate per 'url', in le  application
            #   associate con illo in KDE. Tu pote omitter 'mimetype'.
            #   In iste caso le mimetype es determinate
            #   automaticamente. URL pote esser le URL de un
            #   documento, o il pote esser un file *.desktop .
            #   'url' pote anque esser un file executable.
   kioclient exec.
             // il aperi le directorio currente. Il es multe conveniente.

   kioclient exec file:/home/weis/data/test.html 
              // il aperi file con ligamine (binding) predefinite

   kioclient exec file:/home/weis/data/test.html Netscape
              // il aperi file con Netscape

   kioclient exec file://root/Desktop/cdrom.desktop
             // Il aperi le directorio pro montar de CDROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // il initia emacs

   kioclient exec ftp://localhost/
             // il aperi nove fenestra con URL

   kioclient  es 'url'
            # Il lista le contentos del directorio 'url' a stdout

   kioclient move 'src' 'dest'
            # Il move le URL 'src' a 'dest'.
            #   'src' pote esser un lista de URLs.
   kioclient openProperties 'url'
            # Il aperi un menu de proprietates

   kioclient remove 'url'
            # Il remove le URL
            #   'url' pote esser un lista de URLs.
 *** Exemplos:
  kioclient exec file:/root/descktop/cdrom.desktop "Mount default"
              //  montar le CDROM

 %1: Error de syntaxe: argumentos non bastante
 %1: Error de Syntaxe: troppo argumentos
 %1: Error de Syntaxe: commando incognite '%2'
 Argumentos pro commando Commando (tu vide --commands) Instrumento de linea de commando pro operationes transparente de rete URL de destination KIO Client Uso non interactive: necun quadrato de message Super scriber destination si illo existe (pro copiar e mover) Monstrar commandos disponibile URL o URLs Fonte Non habile a discargar ex un invalide URL. file o URL 