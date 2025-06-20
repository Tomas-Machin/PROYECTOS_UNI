��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �  
   w  `   �  Y   �  Y   =  Y   �  N   �  �   @  �   �  f  �  I     l   f  g   �  i   ;  P   �  P   �  V   G  �   �  P   1  k   �  q   �  2   `  /   �  2   �     �     	  C   $     h     w  "   �  5   �     �     �  4        I        #                                                        !                            
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
PO-Revision-Date: 2013-10-31 22:14+0100
Last-Translator: Marce Villarino <mvillarino@kde-espana.org>
Language-Team: Galician <proxecto@trasno.net>
Language: gl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 
Sintaxe:
             #   «dest» pode ser «trash:/» para deitar os ficheiros
            #   no lixo.
             #   tamén está dispoñíbel a versión curta
            #   kioclient cp

             #   tamén está dispoñíbel a versión curta
            #   kioclient mv

             #   tamén está dispoñíbel a versión curta
            #   kioclient rm

   kioclient cat «url»
            # Escribe o contido de «url» en stdout

   kioclient copy «orixe» «destino»
            # Copia o URL «orixe» en «destino».
            #   «orixe» pode ser unha lista de URL.
   kioclient download [«orixe»]
            # Copia o URL «orixe» para un lugar especificado polo usuario.
            #   «orixe» pode ser unha lista de URL, se non está presente
            #   preguntarase polo URL.

   kioclient exec «url» [«tipo mime»]
            # Intenta abrir o documento sinalado por «url» no aplicativo
            #   asociado con el en KDE. Pode omitir o «tipo mime».
            #   Neste caso ha determinarse automaticamente.
            #   Por suposto URL pode ser o URL dun documento,
            #   ou pode ser un ficheiro *.desktop.
   kioclient exec .
             // Abre o directorio actual. Moi útil.

   kioclient exec file:/home/weis/data/test.html
             // Abre o ficheiro co programa predeterminado

   kioclient exec file:/home/weis/data/test.html Netscape
             // Abre o ficheiro con netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Abre o directorio de montaxe do CDROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Inicia emacs

   kioclient exec ftp://localhost/
             // Abre unha nova xanela co URL

   kioclient ls «url»
            # Lista o contido do directorio «url» en stdout

   kioclient move «orixe» «destino»
            # Move o URL «orixe» para «destino».
            #   «orixe» pode ser unha lista de URL.
   kioclient openProperties «url»
            # Abre un menú de propriedades

   kioclient remove «URL»
            # Elimina o URL
            #   «URL» pode ser unha lista de URL.
 *** Exemplos:
  kioclient exec file:/root/Desktop/cdrom.desktop «Mount default»
             // Monta o CDROM

 %1: Erro de sintaxe, non hai argumentos de abondo
 %1: Erro de sintaxe, hai demasiados argumentos
 %1: Erro de sintaxe, non se coñece a orde «%2»
 Argumentos da orde Orde (consulte --commands) Ferramenta da liña de ordes para operacións transparentes á rede URL de destino Cliente de KIO Uso non interactivo: sen diálogos Sobrescribe o destino se existe (para copiar e mover) Mostrar as ordes dispoñíbeis Lista de URL de orixe Non foi posíbel descargar desde un URL non válido. ficheiro ou URL 