��    ?        Y         p  	   q     {     �     �  T   �  $   �       #   %     I     d  <   |  �  �  D   O  K   �  �   �  \   �  U     k   g  Q   �  N   %  �   t  r        v  \   �     �          "      5     V     k     �     �  	   �     �     �     �     �  e   �     d     �  	   �     �     �     �     �     �  )   �       	   &     0  "   8     [      p  >   �  /   �                -     :  $   N  '   s     �  �  �     i     x     �     �  �   �  2   K  1   ~  6   �  1   �  :     j   T  �  �  {   t  �   �  �  �   �   "  �   �"  �   A#  �   =$  �   �$    �%  �   �&  6   �'  �   �'  ]   �(  C   1)  ,   u)     �)  <   �)  A   �)     3*  !   E*     g*     w*  3   *     �*  6   �*  �   +  :   �+  %   0,     V,     l,  '   �,  ?   �,  ,   �,      -  Y   1-  5   �-     �-     �-  I   �-  -   0.  Q   ^.  �   �.  }   H/  4   �/  F   �/     B0  0   b0  ?   �0  P   �0  A   $1         7           '   8   
   :   &      0                       *      4      (                    +       ,   /       .         	   3   "   6   )            !              >   #       =       ?      9          2   $       <                 ;                                    %       -   1                        5          &Command: &Input: &Name: &Output: *** Could not start program '%1'. Make sure that the path is specified correctly *** *** Crashed with return code: %1 *** *** Exited normally *** *** Exited with return code: %1 *** *** Killed Application *** *** Process aborted *** <p>Defines shortcuts you can use to execute this script.</p> <p>Defines the command that should be executed when this script is run. Basic shell features of your platform should be available.</p>
<p>There are a few placeholders you can use in the command:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Gets replaced by the URL of the active document.</dd>
  <dt><code>%f</code></dt>
  <dd>Gets replaced by the local filepath to the active document.</dd>
  <dt><code>%n</code></dt>
  <dd>Gets replaced by the name of the active document, including its extension.</dd>
  <dt><code>%b</code></dt>
  <dd>Gets replaced by the name of the active document without its extension.</dd>
  <dt><code>%d</code></dt>
  <dd>Gets replaced by the path to the directory of the active document.</dd>
  <dt><code>%p</code></dt>
  <dd>Gets replaced by the URL to the project of the active document.</dd>
  <dt><code>%s</code></dt>
  <dd>Gets replaced with the shell escaped contents of the selection in the active document.</dd>
  <dt><code>%i</code></dt>
  <dd>Gets replaced with the PID of the currently running KDevelop process.</dd>
</dl>
<p><b>NOTE:</b>  It is your responsibility to prevent running hazardous commands that could lead to data loss.</p>
 <p>Defines the name of the script. Just for displaying purposes.</p> <p>Defines the shortcut(s) you can use to execute this external script.</p> <p>Defines what should be done with the errors (i.e. <code>STDERR</code>) of the script.</p><p>Note: if the action is the same as that chosen for the output, the channels will be merged and handled together.</p> <p>Defines what should be done with the output (i.e. <code>STDOUT</code>) of the script.</p> <p>Defines what the external script should get as input (via <code>STDIN</code>).</p> <p>Defines what type of filtering should be applied to the output. E.g. to indicate errors by red text.</p> <p>Defines whether documents should be saved before the script gets executed.</p> <p>Defines whether the output of the script should be shown in a toolview.</p> <p>Do you really want to remove the external script configuration for <i>%1</i>?</p><p><i>Note:</i> The script itself will not be removed.</p> <p>The name will also be used as the identifier during code completion.</p>
<p><b>Note:</b> No spaces allowed.</p> Add External Script Cannot run script '%1' since it tries to access the editor contents but no document is open. Confirm External Script Removal Create new external script Define filter here EMAIL OF TRANSLATORSYour emails Edit External Script Edit external script '%1' Errors: External Scripts Filter... NAME OF TRANSLATORSYour names No Document Open Output Filter: Remove External Script Run external scripts or applications to manipulate the editor contents or do other arbitrary actions. Running external script: %1 Save &Mode: Shortcut: Show Out&put compiler filter contents of current file create new file ignore insert at cursor position of current file merge with normal output no filter nothing please insert a command to execute please insert a name replace contents of current file replace selection of current file or insert at cursor position replace selection of current file or whole file save active document save all open documents save nothing script error filter selection in current file or nothing selection in current file or whole file static analysis error filter Project-Id-Version: kdevexternalscript
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2014-06-26 05:39+0000
PO-Revision-Date: 2014-03-20 23:29+0200
Last-Translator: Dimitris Kardarakos <dimkard@gmail.com>
Language-Team: Greek <kde-i18n-el@kde.org>
Language: el
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 1.5
 Εν&τολή: &Είσοδος: Ό&νομα: Έξ&οδος: ***Αδυναμία εκκίνησης του προγράμματος '%1'. Βεβαιωθείτε ότι η διαδρομή έχει οριστεί σωστά *** *** Κατάρρευση με κωδικό: %1 *** *** Τερματίστηκε κανονικά *** *** Τερματίστηκε με κωδικό: %1 *** *** Τερματισμός εφαρμογής *** *** Η διεργασία εγκαταλείφθηκε *** <p>Oρίζει τις συντομεύσεις για την εκτέλεση του σεναρίου.</p> <p>Ορίζει την εντολή που θα πρέπει να εκτελεστεί όταν εκτελείται αυτό το σενάριο. Τα βασικά χαρακτηριστικά του φλοιού της πλατφόρμας σας θα πρέπει να είναι διαθέσιμα.</p>
<p>Υπάρχουν κάποια πλαίσια που μπορείτε να χρησιμοποιήσετε στην εντολή:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Αντικαθίσταται από το URL του ενεργού εγγράφου.</dd>
  <dt><code>%f</code></dt>
  <dd>Αντικαθίσταται από την τοπική διαδρομή αρχείου του ενεργού εγγράφου.</dd>
  <dt><code>%n</code></dt>
  <dd>Αντικαθίσταται από το όνομα του ενεργού εγγράφου μαζί με την επέκταση.</dd>
  <dt><code>%b</code></dt>
  <dd>Αντικαθίσταται από το όνομα του ενεργού εγγράφου χωρίς την επέκταση.</dd>
  <dt><code>%d</code></dt>
  <dd>Αντικαθίσταται από τη διαδρομή προς το κατάλογο του ενεργού εγγράφου.</dd>
  <dt><code>%p</code></dt>
  <dd>Αντικαθίσταται από το URL του έργου του ενεργού εγγράφου.</dd>
  <dt><code>%s</code></dt>
  <dd>Αντικαθίσταται από κείμενο δηλωτικό εντολών φλοιού στο ενεργό έγγραφο.</dd>
  <dt><code>%i</code></dt>
  <dd>Αντικαθίσταται από το αναγνωριστικό της τρέχουσας διεργασίας KDevelop.</dd>
</dl>
<p><b>ΣΗΜΕΙΩΣΗ:</b>  Είναι δική σας ευθύνη να εμποδίσετε την εκτέλεση επικίνδυνων εντολών που θα μπορούσαν να οδηγήσουν σε απώλεια δεδομένων.</p>
 <p>Προσδιορίζει το όνομα του σεναρίου. Απλώς για λόγους εμφάνισης.</p> <p>Προσδιορίζει τις συντομεύσεις για την εκτέλεση αυτού του εξωτερικού σεναρίου.</p> <p>Προσδιορίζει τι πρέπει να γίνει με τα σφάλματα (δηλ. στο <code>STDERR</code>) του σεναρίου.</p><p>Σημείωση: αν η ενέργεια είναι η ίδια με αυτήν που επελέγη για την έξοδο, οι δίαυλοι θα συγχωνευθούν και θα αντιμετωπίζονται από κοινού.</p> <p>Προσδιορίζει τι πρέπει να γίνει στην έξοδο (δηλ. στο <code>STDOUT</code>) του σεναρίου.</p> <p>Προσδιορίζει τα δεδομένα εισόδου (στο <code>STDIN</code> του εξωτερικού σεναρίου.</p> <p>Καθορίζει τον τύπο φιλτραρίσματος που θα πρέπει να εφαρμοστεί στην έξοδο. Π.χ. για την ένδειξη σφαλμάτων με κόκκινο χρώμα στο κείμενο.</p> <p>Προσδιορίζει αν τα έγγραφα θα πρέπει να αποθηκεύονται πριν από την εκτέλεση του σεναρίου.</p> <p>Προσδιορίζει να η έξοδος του σεναρίου θα πρέπει να περιλαμβάνεται στην εμφάνιση εργαλείων.</p> <p>Επιθυμείτε πραγματικά την αφαίρεση της διαμόρφωσης του εξωτερικού σεναρίου για το <i>%1</i>;</p><p><i>Σημείωση:</i> Το ίδιο το σενάριο δεν θα αφαιρεθεί.</p> <p>Το όνομα θα χρησιμοποιηθεί και ως αναγνωριστικό κατά την ολοκλήρωση του κώδικα.</p>
<p><b>Σημείωση:</b> Δεν επιτρέπονται κενοί χαρακτήρες.</p> Προσθήκη εξωτερικού σεναρίου Το σενάριο '%1' δεν εκτελείται επειδή προσπαθεί να αποκτήσει πρόσβαση στο περιεχόμενο του κειμενογράφου, αλλά δεν υπάρχει ανοικτό έγγραφο. Επιβεβαιώστε την αφαίρεση του εξωτερικού σεναρίου Δημιουργία νέου εξωτερικού σεναρίου Προσδιορίστε φίλτρο εδώ sstavra@gmail.com επεξεργασία εξωτερικού σεναρίου Επεξεργασία εξωτερικού σεναρίου '%1' Σφάλματα: Εξωτερικά σενάρια Φίλτρο... Stelios Δεν υπάρχει ανοικτό έγγραφο Φίλτρο εξόδου: Αφαίρεση εξωτερικού σεναρίου Εκτέλεση εξωτερικών σεναρίων ή εφαρμογών για τον χειρισμό του περιεχομένου του κειμενογράφου ή για οποιεσδήποτε άλλες ενέργειες. Εκτέλεση εξωτερικού σεναρίου: %1 Τρόπος α&ποθήκευσης: Συντόμευση: Εμφάνιση ε&ξόδου φίλτρο μεταγλωττιστή περιεχόμενο του τρέχοντος αρχείου δημιουργία νέου αρχείου αγνοήστε εισαγάγετε στο τρέχον αρχείο στη θέση του δρομέα συγχώνευση με κανονική έξοδο χωρίς φίλτρο τίποτα παρακαλώ δώστε μια εντολή προς εκτέλεση παρακαλώ δώστε ένα όνομα αντικαταστήστε κείμενο από το τρέχον αρχείο αντικαταστήστε την επιλογή του τρέχοντος αρχείου ή εισαγάγετε στη θέση του δρομέα αντικαταστήστε την επιλογή του τρέχοντος αρχείου ή όλου του αρχείου αποθήκευση ενεργού εγγράφου αποθήκευση όλων των ανοικτών εγγράφων καμία αποθήκευση φίλτρο σφαλμάτων σεναρίου επιλογή στο τρέχον αρχείο ή τίποτα επιλογή στο τρέχον αρχείο ή σε όλο το αρχείο φίλτρο σφαλμάτων στατικής ανάλυσης 