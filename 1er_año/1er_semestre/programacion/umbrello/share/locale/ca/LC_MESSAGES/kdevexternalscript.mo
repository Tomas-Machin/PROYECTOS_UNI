��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �       �  	   �     �  	   �  g   �  '   g     �  )   �     �     �  K     �  `  H   G  R   �  �   �  a   �  ]   #  t   �  J   �  N   A  �   �  }         �   |   �   )   .!     X!     r!     �!     �!     �!     �!     �!  	   �!     �!     "     "     1"     D"     X"  m   p"  %   �"     #     #     #     1#     D#     Z#     v#     �#  3   �#     �#     �#     �#     �#     $  *   %$  N   P$  :   �$     �$     �$     %     %  #   9%  -   ]%     �%         :           )   ;   
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
PO-Revision-Date: 2015-05-12 15:10+0200
Last-Translator: Josep Ma. Ferrer <txemaq@gmail.com>
Language-Team: Catalan <kde-i18n-ca@kde.org>
Language: ca
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
X-Accelerator-Marker: &
 &Ordre: &Entrada: &Nom: &Sortida: *** No s'ha pogut iniciar el programa «%1». Assegureu-vos que teniu el camí definit correctament *** *** Ha fallat retornant el codi: %1 *** *** S'ha sortit normalment *** *** S'ha sortit retornant el codi: %1 *** *** S'ha matat l'aplicació *** *** Procés cancel·lat *** <p>Defineix les dreceres que podeu utilitzar en executar aquest script.</p> <p>Defineix l'ordre que s'hauria d'executar quan s'executi aquest script. Haurien d'estar disponibles les funcionalitats bàsiques de l'intèrpret d'ordres de la vostra plataforma.</p>
<p>Hi ha algunes variables de substitució que podeu utilitzar a l'ordre:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Se substitueix per l'URL del document actiu.</dd>
  <dt><code>%f</code></dt>
  <dd>Se substitueix pel camí del fitxer local del document actiu.</dd>
  <dt><code>%n</code></dt>
  <dd>Se substitueix pel nom del document actiu, incloent-hi la seva extensió.</dd>
  <dt><code>%b</code></dt>
  <dd>Se substitueix pel nom del document actiu sense la seva extensió.</dd>
  <dt><code>%d</code></dt>
  <dd>Se substitueix pel camí al directori del document actiu.</dd>
  <dt><code>%p</code></dt>
  <dd>Se substitueix per l'URL al projecte del document actiu.</dd>
  <dt><code>%s</code></dt>
  <dd>Se substitueix amb el contingut escapat de l'intèrpret d'ordres de la selecció en el document actiu.</dd>
  <dt><code>%i</code></dt>
  <dd>Se substitueix amb el PID del procés actual del KDevelop en execució.</dd>
</dl>
<p><b>NOTA:</b> Està sota la vostra responsabilitat evitar l'execució d'ordres perilloses que puguin comportar la pèrdua de dades.</p>
 <p>Defineix el nom de l'script. Només per motius de visualització.</p> <p>Defineix les dreceres que podeu utilitzar en executar aquest script extern.</p> <p>Defineix què s'hauria de fer amb els errors (és a dir, <code>STDERR</code>) de l'script.</p><p>Nota: Si l'acció és la mateixa que l'escollida per la sortida, els canals es barrejaran i gestionaran conjuntament.</p> <p>Defineix què s'hauria de fer amb la sortida (és a dir, <code>STDOUT</code>) de l'script.</p> <p>Defineix què hauria d'obtenir l'script extern com a entrada (via <code>STDIN</code>).</p> <p>Defineix quin tipus de filtre s'hauria d'aplicar a la sortida. P.ex. per indicar els errors amb text vermell.</p> <p>Defineix si els documents s'han de desar abans d'executar l'script.</p> <p>Defineix si la sortida de l'script s'ha de mostrar en una vista d'eina.</p> <p>Esteu segur que voleu eliminar la configuració de l'script extern <i>%1</i>?</p><p><i>Nota:</i> No s'eliminarà el mateix script.</p> <p>El nom també es pot usar com a identificador durant la compleció de codi.</p>
<p><b>Nota:</b> No es permeten espais.</p> Afegeix un script extern No s'ha pogut executar l'script «%1» atès que intenta accedir al contingut de l'editor però no hi ha cap document obert. Confirmació per eliminar l'script extern Crea un script extern nou Definiu aquí el filtre txemaq@gmail.com Edita l'script extern Edita l'script extern «%1» Errors: Scripts externs Filtre... Selecció de Google Josep Ma. Ferrer No hi ha cap document obert Filtre de sortida: Compilació ràpida Elimina l'script extern Executa scripts externs o aplicacions per a manipular el contingut de l'editor o altres accions arbitràries. S'està executant l'script extern: %1 &Mode del desat: Drecera: Mostra la sorti&da Selecció ordenada filtre del compilador contingut del fitxer actual crea un fitxer nou ignora insereix a la posició del cursor del fitxer actual barreja amb la sortida normal sense filtre res introduïu una ordre a executar introduïu un nom substitueix el contingut del fitxer actual substitueix la selecció del fitxer actual o insereix a la posició del cursor substitueix la selecció del fitxer actual o tot el fitxer desa el document actiu desa tots els documents oberts no desis res filtre d'errors de l'script selecció en el fitxer actual o res selecció en el fitxer actual o tot el fitxer filtre d'anàlisi estàtica 