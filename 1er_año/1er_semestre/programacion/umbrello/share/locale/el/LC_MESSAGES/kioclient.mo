��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     2  �   D  y   �  y   q  y   �  i   e  �   �  \  ~  �  �  t   }  �   �  {   �  �     _   �  h   �  �   [  �   �  d   �  �     �   �  L   4  L   �  H   �  +     $   C  _   h     �     �  X   �  }   M  4   �        N        d        #                                                        !                            
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
PO-Revision-Date: 2013-06-29 15:08+0200
Last-Translator: Dimitrios Glentadakis <dglent@gmail.com>
Language-Team: Greek <kde-i18n-el@kde.org>
Language: el
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 
Σύνταξη:
             #   το 'dest' μπορεί να είναι το "trash:/" για τη μετακίνηση αρχείων
            #   στον κάδο απορριμάτων.
             #   η σύντομη έκδοση kioclient cp
            #   είναι επίσης διαθέσιμη.

             #   η σύντομη έκδοση kioclient mv
            #   είναι επίσης διαθέσιμη.

             #   η σύντομη έκδοση kioclient rm
            #   είναι επίσης διαθέσιμη.

   kioclient cat 'url'
            # Γράφει τα περιεχόμενα του 'url' στο stdout

   kioclient copy 'src' 'dest'
            # Αντιγράφει το URL 'src' στο 'dest'.
            #   Το 'src' μπορεί να είναι λίστα από URL.
   kioclient download ['src']
            # Αντιγράφει το URL 'src' σε μία τοποθεσία ορισμένη από το χρήστη.
            #   Το 'src' μπορεί να είναι μία λίστα από URLs. Αν δεν καθοριστεί, τότε
            #   θα ζητηθεί η εισαγωγή του.

   kioclient exec 'url' ['mimetype']
            # Προσπαθεί να ανοίξει το αρχείο που καθορίζεται από το 'url' στη
            #    συσχετισμένη εφαρμογή του KDE. Μπορείτε να παραλείψετε το
            #   'mimetype'. Σε αυτήν την περίπτωση ο τύπος αρχείο καθορίζεται
            #   αυτόματα. Το URL μπορεί βεβαίως να αναφέρεται σε ένα
            #   έγγραφο, ή σε ένα αρχείο *.desktop file.
            #   το 'url' μπορεί να είναι και εκτελέσιμο.
   kioclient exec .
             // Ανοίξει τον τρέχοντα κατάλογο. Πολύ βολικό.

   kioclient exec file:/home/weis/data/test.html
             // Ανοίγει το αρχείο στην προκαθορισμένη εφαρμογή

   kioclient exec file:/home/weis/data/test.html Netscape
             // Ανοίγει το αρχείο στο netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Ανοίγει το φάκελο προσάρτησης του CD-ROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Εκτελεί τον emacs

   kioclient exec ftp://localhost/
             // Ανοίγει το URL σε νέο παράθυρο

   kioclient ls 'url'
            # Γράφει τη λίστα με τα περιεχόμενα του καταλόγου 'url' στο stdout

   kioclient move 'src' 'dest'
            # Μετακινεί το URL 'src' στο 'dest'.
            #   Το 'src' μπορεί να είναι μία λίστα από URL.
   kioclient openProperties 'url'
            # Ανοίγει ένα μενού ιδιοτήτων

   kioclient remove 'url'
            # Απομακρύνει το URL
            #   Το 'url' μπορεί να είναι μία λίστα από URL.
 *** Παραδείγματα:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Προσαρτεί το CD-ROM

 %1: Συντακτικό σφάλμα, όχι αρκετά ορίσματα
 %1: Συντακτικό σφάλμα, πάρα πολλά ορίσματα
 %1: Συντακτικό σφάλμα, άγνωστη εντολή '%2'
 Ορίσματα για την εντολή Εντολή (βλέπε --commands) Εργαλείο γραμμής εντολών για δικτυακές λειτουργίες URL προορισμού Πελάτης KIO Μη διαδραστική χρήση: χωρίς διαλόγους μηνυμάτων Αντικατάσταση προορισμού εάν υπάρχει (για αντιγραφή και μετακίνηση) Εμφάνιση διαθέσιμων εντολών Πηγή URL ή URLs Αδύνατη η λήψη αρχείου από ένα μη έγκυρο URL. αρχείο ή URL 