��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �       	          "  
   *  z   5  6   �     �  *        /     M  Q   j  �  �  E   �  _   �  �   ]  d   @  Z   �  �      i   �  \   �  �   K   �   �      �!  �   �!  *   )"      T"     u"     �"     �"  %   �"  
   �"     �"  	   �"     	#     #     -#     C#     W#     j#  �   �#  "   $     /$     I$     V$     j$     $     �$     �$     �$  4   �$      %     '%     4%  +   9%     e%  &   ~%  O   �%  >   �%      4&  &   U&     |&     �&  )   �&  6   �&  %   '         :           )   ;   
   =   (      3      #                ,      7      *                    -       /   2       1         	   6   "   9   +            !              A   $       @   .   B      <          5   %       ?                 >                                    &       0   4   '                    8          &Command: &Input: &Name: &Output: *** Could not start program '%1'. Make sure that the path is specified correctly *** *** Crashed with return code: %1 *** *** Exited normally *** *** Exited with return code: %1 *** *** Killed Application *** *** Process aborted *** <p>Defines shortcuts you can use to execute this script.</p> <p>Defines the command that should be executed when this script is run. Basic shell features of your platform should be available.</p>
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
<p><b>Note:</b> No spaces allowed.</p> Add External Script Cannot run script '%1' since it tries to access the editor contents but no document is open. Confirm External Script Removal Create new external script Define filter here EMAIL OF TRANSLATORSYour emails Edit External Script Edit external script '%1' Errors: External Scripts Filter... Google Selection NAME OF TRANSLATORSYour names No Document Open Output Filter: Quick Compile Remove External Script Run external scripts or applications to manipulate the editor contents or do other arbitrary actions. Running external script: %1 Save &Mode: Shortcut: Show Out&put Sort Selection compiler filter contents of current file create new file ignore insert at cursor position of current file merge with normal output no filter nothing please insert a command to execute please insert a name replace contents of current file replace selection of current file or insert at cursor position replace selection of current file or whole file save active document save all open documents save nothing script error filter selection in current file or nothing selection in current file or whole file static analysis error filter Project-Id-Version: kdevexternalscript
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2014-06-26 05:39+0000
PO-Revision-Date: 2013-12-06 13:04+0100
Last-Translator: Vincent PINON <vincent.pinon@st.com>
Language-Team: French <kde-francophone@kde.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 1.5
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 &Commande : &Entrée : &Nom : S&ortie : *** Il est impossible de démarrer le programme « %1 ». Assurez-vous que l'emplacement est spécifié correctement *** *** Arrêté brutalement avec code de retour : %1 *** *** Terminé normalement *** *** Terminé avec code de retour : %1 *** *** Application arrêtée *** *** Processus interrompu *** <p>Définit les raccourcis que vous pouvez utiliser pour exécuter ce script.</p> <p>Définit la commande devant être exécutée lorsque ce script est lancé. Les fonctionnalités de base de l'interpréteur de votre plate-forme devront être disponibles.</p>
<p>Il existe quelques paramètres fictifs que vous pouvez utiliser dans la commande :</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Est remplacé par l'URL du document actif.</dd>
  <dt><code>%f</code></dt>
  <dd>Est remplacé par l'emplacement des fichiers locaux du document actif.</dd>
  <dt><code>%n</code></dt>
  <dd>Est remplacé par le nom du document actif, y compris son extension.</dd>
  <dt><code>%b</code></dt>
  <dd>Est remplacé par le nom du document actif sans son extension.</dd>
  <dt><code>%d</code></dt>
  <dd>Est remplacé par l'emplacement du dossier du document actif.</dd>
  <dt><code>%p</code></dt>
  <dd>Est remplacé par l'URL du projet du document actif.</dd>
  <dt><code>%s</code></dt>
  <dd>Est remplacé par le contenu échappé de l'interpréteur de la sélection dans le document actif.</dd>
  <dt><code>%i</code></dt>
  <dd>Est remplacé par le PID du processus KDevelop actuellement en fonctionnement.</dd>
</dl>
<p><b>REMARQUE :</b> il est de votre responsabilité d'empêcher l'exécution de commandes dangereuses pouvant conduire à une perte de données.</p>
 <p>Définit le nom du script. Juste pour des besoins d'affichage.</p> <p>Définit le ou les raccourcis que vous pouvez utiliser pour exécuter ce script externe.</p> <p>Définit ce qu'il faut faire avec les erreurs (c'est-à-dire <code>STDERR</code>) du script.</p><p>Remarque : si l'action est identique à celle choisie pour la sortie, les canaux seront fusionnés et gérés ensemble.</p> <p>Définit ce qui doit être fait avec la sortie (c'est-à-dire <code>STDOUT</code>) du script.</p> <p>Définit ce que le script externe doit obtenir en entrée (via <code>STDIN</code>).</p> <p>Définit quel type de filtrage il faut appliquer à la sortie. Par exemple pour indiquer des erreurs avec du texte en rouge.</p> <p>Définit si les documents doivent ou non être enregistrés avant que le script ne soit exécuté.</p> <p>Définit si la sortie du script devra ou non être affichée dans une vue des outils.</p> <p>Voulez-vous vraiment supprimer la configuration de script externe pour <i>%1</i> ?</p><p><i>Remarque :</i> le script lui-même ne sera pas supprimé.</p> <p>Le nom sera également utilisé comme identifiant pendant le complétement du code.</p>
<p><b>Remarque :</b> les espaces ne sont pas autorisées.</p> Ajouter un script externe Il est impossible de lancer le script « %1 » puisqu'il essaie d'accéder au contenu de l'éditeur mais qu'aucun document n'est ouvert. Confirmer la suppression du script externe Créer un nouveau script externe Définir ici un filtre jcornavin@laposte.net Modifier un script externe Modifier un script externe « %1 » Erreurs : Scripts externes Filtre... Sélection Google Joëlle Cornavin Aucun document ouvert Filtre de sortie : Compilation rapide Supprimer un script externe Exécuter des scripts externes ou des applications pour manipuler le contenu de l'éditeur ou effectuer d'autres actions arbitraires. Exécution du script externe : %1 &Mode d'enregistrement : Raccourci : Afficher la sort&ie Trier une sélection filtre de compilateur contenu du fichier actuel créer un nouveau fichier ignorer insérer à la position du curseur du fichier actuel fusionner avec la sortie normale aucun filtre rien veuillez insérer une commande à exécuter veuillez insérer un nom remplacer le contenu du fichier actuel remplacer la sélection du fichier actuel ou insérer à la position du curseur remplacer la sélection du fichier actuel ou du fichier entier enregistrement le document actif enregistrer tous les documents ouverts ne rien enregistrer filtre d'erreur de script sélection dans le fichier actuel ou rien sélection dans le fichier actuel ou le fichier entier filtre d'erreur d'analyse statistique 