��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     j  w   w  V   �  V   F  V   �  j   �  �   _  �   �  �  �  M   �  q   +  i   �  i     Z   q  Z   �  i   '  �   �  T   $  z   y  �   �  2   |  6   �  7   �       "   9  I   \     �  
   �  1   �  I   �  "   C     f  <   z     �        #                                                        !                            
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
PO-Revision-Date: 2016-11-23 18:27+0100
Last-Translator: Vincent Pinon <vpinon@kde.org>
Language-Team: French <kde-i18n-doc@kde.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 2.0
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 
Syntaxe :
             #   « dest » peut être « trash:/ » pour déplacer les fichiers
            #   vers la corbeille.
             #   la version courte kioclient cp
            #   est aussi disponible.

             #   la version courte kioclient mv
            #   est aussi disponible.

             #   la version courte kioclient rm
            #   est aussi disponible.

   kioclient cat « URL »
            # Affiche les contenus de l'URL sur le  périphérique de sortie

   kioclient copy « src »  « dest » 
            # Copie l'URL « src »  « dest ».
            #   « src » peut être une liste d'URL.
   kioclient download ['src']
            # Copie l'URL « src » vers un emplacement spécifié par l'utilisateur.
            #   « src »  peut être une liste d'URL. Si elle n'est pas fournie alors
            #   une URL sera demandée.

   kioclient exec « URL » [ « type-mime » ]
            # Essaie d'ouvrir le document vers lequel pointe l'URL dans l'application
            #   qui lui est associée dans KDE. Vous pouvez omettre « type-mime ».
            #   Dans ce cas, le type MIME est déterminé
            #   automatiquement. Bien entendu, l'URL peut être l'emplacement d'un
            #   document ou d'un fichier « *.desktop ».
            #   « URL » peut également être un exécutable.
   kioclient exec .
             // Ouvre le dossier courant. Très commode.

   kioclient exec file:/home/weis/data/test.html
             // Ouvre le fichier avec l'application par défaut

   kioclient exec file:/home/weis/data/test.html Netscape
             // Ouvre le fichier avec netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Ouvre le dossier de montage du CD-ROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Démarre « emacs »

   kioclient exec ftp://localhost/
             // Ouvre une nouvelle fenêtre avec l'URL

   kioclient ls « URL »
            # Affiche les contenus de l'URL sur le  périphérique de sortie

   kioclient move 'src' 'dest'
            # Déplace l'URL « src » vers « dest ».
            #   « src » peut être une liste d'URL.
   kioclient openProperties « URL »
            # Ouvre un menu de propriétés

   kioclient remove « src »  « dest »
            # Supprime l'URL
            #   URL peut être une liste d'URL.
 *** Exemples :
  kioclient exec file:/root/Desktop/cdrom.desktop « Mount default »
             // Effectue le montage du CD-ROM

 %1 : erreur de syntaxe, pas assez de paramètres
 %1 : erreur de syntaxe, beaucoup trop de paramètres
 %1 : erreur de syntaxe, commande « %2 » inconnue 
 Paramètres de la commande Commande (voir « --commands ») Un outil en ligne de commandes pour les opérations réseau transparentes URL de la destination KIO Client Usage non interactif : aucune boîte de dialogue Écraser la destination si elle existe (pour la copie et le déplacement) Afficher les commandes disponibles URL(s) de la source Impossible de télécharger à partir d'une URL mal formée. Fichier ou URL 