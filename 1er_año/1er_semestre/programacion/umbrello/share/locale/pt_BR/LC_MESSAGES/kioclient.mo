��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �  
   L  f   W  a   �  a      ^   �  L   �  �   .  �   �  �  �  K   G  h   �  h   �  f   e  R   �  R     O   r  |   �  M   ?  f   �  q   �  0   f  -   �  0   �     �       I   *     t     �  +   �  9   �      �       ;   /     k        #                                                        !                            
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
PO-Revision-Date: 2014-09-19 10:10-0300
Last-Translator: André Marcelo Alvarenga <alvarenga@kde.org>
Language-Team: Brazilian Portuguese <kde-i18n-pt_br@kde.org>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 1.5
 
Sintaxe:
             #   O 'destino' pode ser "trash:/" para mover os arquivos
            #   para a lixeira.
             #   também está disponível a versão reduzida
            #   do 'kioclient cp'.

             #   também está disponível a versão reduzida
            #   do 'kioclient mv'.

             #   a versão reduzida 'kioclient rm'
            #   também está disponível.

   kioclient cat 'url'
            # Grava o conteúdo do 'url' para stdout

   kioclient copy 'origem' 'destino'
            # Copia a URL 'origem' para 'destino'.
            #   'origem' pode ser uma lista de URLs.
   kioclient download ['src']
            # Copia a URL 'src' para um local especificado pelo usuário.
            #   'src' pode ser uma lista de URLs, se não estiver presente então
            #   uma URL será solicitada.

   kioclient exec 'url' ['mimetype']
            # Tenta abrir o documento apontado pelo 'url', no aplicativo
            #   associado a ele no KDE. Você pode omitir o 'tipo MIME'.
            #   Neste caso o tipo MIME é determinado
            #   automaticamente. É claro que URL pode ser a URL de um
            #   documento, ou pode ser um arquivo *.desktop.
            #   A 'url' também pode ser executável.
   kioclient exec .
             // Abre a pasta atual. Muito conveniente.

   kioclient exec file:/home/weis/data/test.html
             // Abre o arquivo com a interface padrão

   kioclient exec file:/home/weis/data/test.html Netscape
             // Abre o arquivo com o Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Abre a pasta de montagem do CD-ROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Inicia o Emacs

   kioclient exec ftp://localhost/
             // Abre uma nova janela com a URL

   kioclient ls 'url'
            # Lista o conteúdo da pasta 'url' no stdout

   kioclient move 'src' 'dest'
            # Move a URL 'src' para 'dest'.
            #   'src' pode ser uma lista de URLs.
   kioclient openProperties 'url'
            # Abre um menu de propriedades

   kioclient remove 'url'
            # Remove a URL
            #   'url' pode ser uma lista de URLs.
 *** Exemplos:
  kioclient exec file:/root/Desktop/cdrom.desktop "Montar padrão"
             // Monta o CD-ROM

 %1: Erro de sintaxe - parâmetros insuficientes
 %1: Erro de sintaxe - excesso de parâmetros
 %1: Erro de sintaxe - comando '%2' desconhecido
 Parâmetros para o comando Comando (ver --commands) Uma ferramenta de linha de comando para operações transparentes na rede URL de destino Cliente do KIO Uso não interativo: sem caixas de mensagem Sobrescrever destino se ele existir (para copiar e mover) Mostrar os comandos disponíveis URL ou URLs de origem Não é possível transferir a partir de uma URL inválida. arquivo ou URL 