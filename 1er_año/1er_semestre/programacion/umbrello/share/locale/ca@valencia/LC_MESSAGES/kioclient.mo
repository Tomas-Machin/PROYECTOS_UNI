��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �  
   P  d   [  Y   �  Y     Y   t  g   �  �   6  �   �  �  �  O   I  r   �  i     l   v  R   �  T   6  q   �  �   �  N   ~  i   �  s   7  -   �  &   �  .         /     F  E   ^     �  
   �  ,   �  :   �     *     G  -   T     �        #                                                        !                            
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
PO-Revision-Date: 2013-06-16 20:48+0200
Last-Translator: Josep Ma. Ferrer <txemaq@gmail.com>
Language-Team: Catalan <kde-i18n-ca@kde.org>
Language: ca@valencia
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.4
Plural-Forms: nplurals=2; plural=n != 1;
X-Accelerator-Marker: &
 
Sintaxi:
             #   «dest» pot ser «trash:/» per a moure els fitxers
            #   a la paperera.
             #   la versió curta de kioclient cp
            #   també és disponible.

             #   la versió curta de kioclient mv
            #   també és disponible.

             #   la versió curta de kioclient rm
            #   també és disponible.

   kioclient cat «url»
            # Escriu el contingut de «url» a l'eixida estàndard «stdout»

   kioclient copy «src» «dest»
            # Copia l'URL «src» a «dest».
            #   «src» pot ser una llista d'URL.
   kioclient download [«src»]
            # Copia l'URL «src» a una ubicació especificada per l'usuari.
            #   «src» pot ser una llista d'URL, i si no s'indica, llavors es
            #   requerirà un URL.

   kioclient exec «url» [«mimetype»]
            # Intenta obrir el document apuntat pel «url», a l'aplicació
            #   associada amb ell en el KDE. Podeu ometre «mimetype».
            #   En este cas, el tipus MIME es determinarà
            #   automàticament. Evidentment, l'URL ha de ser l'URL d'un
            #   document, o pot ser un fitxer *.desktop.
            #   «url» també pot ser un executable.
   kioclient exec .
             // Obri el directori actual. Molt convenient.

   kioclient exec file:/home/weis/data/test.html
             // Obri el fitxer amb la vinculació predeterminada

   kioclient exec file:/home/weis/data/test.html Netscape
             // Obri el fitxer amb el Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Obri el directori de muntatge del CD-ROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Inicia l'Emacs

   kioclient exec ftp://localhost/
             // Obri una finestra nova amb l'URL

   kioclient ls «url»
            # Escriu el contingut del directori «url» a l'eixida estàndard «stdout»

   kioclient move «src» «dest»
            # Mou l'URL «src» a «dest».
            #   «src» pot ser una llista d'URL.
   kioclient openProperties «url»
            # Obri un menú de propietats

   kioclient remove «url»
            # Elimina l'URL
            #   «url» pot ser una llista d'URL.
 *** Exemples:
  kioclient exec file:/root/Desktop/cdrom.desktop «Mount default»
             // Munta el CD-ROM

 %1: Error de sintaxi: arguments insuficients
 %1: Error de sintaxi: massa arguments
 %1: Error de sintaxi: orde desconeguda «%2»
 Arguments per a l'orde Orde (veieu --commands) Eina de la línia d'ordes per a operacions de transparents a la xarxa URL de destinació Client KIO Ús no interactiu: sense quadres de missatge Sobreescriu la destinació si existeix (en copiar i moure) Mostra les ordes disponibles URL d'origen No es pot descarregar des d'un URL no vàlid. fitxer o URL 