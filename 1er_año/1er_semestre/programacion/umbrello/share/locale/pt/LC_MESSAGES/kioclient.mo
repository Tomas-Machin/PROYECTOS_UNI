��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  G  �  
   �  v   �  ^   S  ^   �  [     N   m  �   �  �   S  �  6  L   �  m     i   �  f   �  R   Y  P   �  S   �  �   Q  M   �  g   .  v   �  6     5   D  4   z     �     �  M   �     0     ?  .   N  4   }      �     �  :   �     $        #                                                        !                            
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
PO-Revision-Date: 2013-06-14 12:30+0100
Last-Translator: José Nuno Coelho Pires <zepires@gmail.com>
Language-Team: pt <kde-i18n-pt@kde.org>
Language: pt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-POFile-SpellExtra: openProperties commands exec url ze Desktop desktop
X-POFile-SpellExtra: cdrom kioclient emacs download home copy STDOUT cat
X-POFile-SpellExtra: trash rm mv cp ls
 
Sintaxe:
             #   o 'destino' pode ser "trash:/", de modo a enviar
            #   os ficheiros para o caixote do lixo.
             #   também está disponível a versão curta
            #   do 'kioclient cp'.

             #   também está disponível a versão curta
            #   do 'kioclient mv'.

             #   a versão curta 'kioclient rm'
            #   também está disponível.

   kioclient cat 'url'
            # Apresenta o conteúdo do 'url' no STDOUT

   kioclient copy 'origem' 'destino'
            # Copia o URL de 'origem' para o 'destino'.
            #   A 'origem' poderá ser uma lista de URLs.
   kioclient download ['origem']
            # Copia o URL 'origem' para um local definido pelo utilizador.
            #   A 'origem' pode ser uma lista de URLs; se não estiver
            #   presente, será pedido um URL.

   kioclient exec 'url' ['tipo-MIME']
            # Tenta abrir o documento referenciado pelo 'url' na aplicação
            #   associada a ele no KDE. Poderá omitir o 'tipo-MIME'.
            #   Neste caso, o tipo MIME é determinado automaticamente.
            #   Obviamente, o URL poderá ser o URL de um documento,
            #   poderá ser um ficheiro '*.desktop' ou ainda ser um executável.
   kioclient exec .
             // Abre a pasta actual. Muito conveniente.

   kioclient exec file:/home/ze/dados/teste.html
             // Abre o ficheiro com a interface predefinida

   kioclient exec file:/home/ze/dados/teste.html Netscape
             // Abre o ficheiro com o Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Abre a pasta de montagem do CD-ROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Inicia o emacs

   kioclient exec ftp://maquina/
             // Abre uma janela nova com o URL

   kioclient ls 'url'
            # Apresenta o conteúdo da pasta 'url' no STDOUT

   kioclient move 'origem' 'destino'
            # Move o URL 'origem' para o 'destino'.
            #  A 'origem' pode ser uma lista de URLs.
   kioclient openProperties 'url'
            # Abre um menu de propriedades

   kioclient remove 'url'
            # Remove o URL
            #  O 'url' pode ser uma lista de URLs.
 *** Exemplos:
  kioclient exec file:/root/Desktop/cdrom.desktop "Montar por omissão"
             // Monta o CD-ROM

 %1: Erro de sintaxe: os argumentos são insuficientes
 %1: Erro de sintaxe: os argumentos estão em excesso
 %1: Erro de sintaxe: o comando '%2' é desconhecido
 Argumentos do comando Comando (ver o '--commands') Uma ferramenta da linha de comandos para as operações transparentes na rede URL de destino Cliente do KIO Uso não-interactivo: sem janelas de mensagens Substituir o destino, se existir (ao copiar e mover) Mostrar os comandos disponíveis URL ou URLs de origem Não é possível transferir a partir de um URL inválido. ficheiro ou URL 