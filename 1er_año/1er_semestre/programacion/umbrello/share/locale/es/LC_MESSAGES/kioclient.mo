��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     :  d   F  [   �  [     [   c  ]   �  �     �   �  �  �  N   R  z   �  g     l   �  P   �  U   B  [   �  �   �  O   �  l   �  s   F  6   �  1   �  0   #     T     m  I   �     �     �  (   �  8         K     l  -   �     �        #                                                        !                            
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
PO-Revision-Date: 2013-07-26 23:48+0200
Last-Translator: Rocío Gallego <traducciones@rociogallego.com>
Language-Team: Spanish <kde-l10n-es@kde.org>
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 
Sintaxis:
             #   «destino» debe ser «trash:/» para mover archivos
            #   a la papelera.
             #   la versión corta kioclient cp
            #   también está disponible.

             #   la versión corta kioclient mv
            #   también está disponible.

             #   la versión corta kioclient rm
            #   también está disponible.

   kioclient cat «url»
            # Escribe el contenido de «url» a la salida estándar

   kioclient copy «origen» «destino»
            # Copia el URL «origen» a «destino».
            #   «origen» puede ser una lista de URL.

   descarga kioclient [«origen»]
            # Copia el URL «origen» a una ubicación indicada por el usuario.
            #   «origen» puede ser una lista de URL; si no estuviera
            #   presente, se solicitaría un URL.

   kioclient exec «url» [«tipo_MIME»]
            # Intenta abrir el documento señalado por «url» en la aplicación
            #   asociada a él en KDE. Puede omitir «tipo_MIME».
            #   En este caso, el tipo MIME se determina automáticamente,
            #   Por supuesto, el URL puede ser de un documento
            #   o puede ser un archivo *.desktop.
            #  «url» también puede ser un ejecutable.
   kioclient exec .
             // Abre el directorio actual. Muy práctico.

   kioclient exec file:/home/weis/data/test.html
             // Abre el archivo con la aplicación asociada por omisión

   kioclient exec file:/home/weis/data/test.html Netscape
             // Abre el archivo con Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Abre el directorio de montaje del CD-ROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Inicia Emacs

   kioclient exec ftp://localhost/
             // Abre una nueva ventana con el URL

   kioclient ls «url»
            # Lista el contenido de «url» en la salida estándar

   kioclient move «origen» «destino»
            # Mueve el URL «origen» a «destino».
            #   «origen» puede ser una lista de URL.
   kioclient openProperties «url»
            # Abre un menú de propiedades

   kioclient remove «url»
            # Elimina el URL
            #   «url» puede ser una lista de URL.
 *** Ejemplos:
  kioclient exec file:/root/Desktop/cdrom.desktop «Mount default»
             // Monta el CD-ROM

 %1: Error de sintaxis;  no hay suficientes argumentos
 %1: Error de sintaxis; hay demasiados argumentos
 %1: Error de sintaxis; orden «%2» desconocida
 Argumentos para la orden Orden (vea --commands) Herramienta de la línea de órdenes para operaciones trasparentes de red URL de destino Cliente KIO Uso no interactivo: sin cajas de mensaje Sobrescribir el destino si ya existe (al copiar y mover) Mostrar las órdenes disponibles Una o más URL de origen No es posible descargar de un URL no válido. archivo o URL 