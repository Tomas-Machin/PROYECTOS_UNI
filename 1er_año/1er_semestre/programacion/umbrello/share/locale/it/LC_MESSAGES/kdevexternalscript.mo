��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �    	   �     �     �     �  i   �  '   6     ^  (   y     �     �  W   �  �  6  H   /  d   x  �   �  ]   �  b     r   v  Y   �  `   C  �   �  �   3      �      �   *   O!     z!     �!     �!     �!     �!     �!      "     "     "     ("     7"     O"     ^"     r"  e   �"      �"     #     (#     5#     D#     ^#     q#     �#     �#  +   �#     �#     �#     �#      $      $  *   1$  R   \$  =   �$     �$     %     &%     2%  $   M%  .   r%  "   �%         :           )   ;   
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
PO-Revision-Date: 2013-10-30 18:11+0100
Last-Translator: Simone Solinas <ksolsim@gmail.com>
Language-Team: Italian <kde-i18n-it@kde.org>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
 &Comando: &Input: &Nome: &Output: *** Impossibile avviare il programma «%1». Assicurati che il percorso sia specificato correttamente *** *** Crash con codice di ritorno: %1 *** *** Uscito normalmente *** *** Uscito con codice di ritorno: %1 *** *** Applicazione interrotta *** *** Processo interrotto *** <p>Definisce i collegamenti che è possibile utilizzare per eseguire questo script.</p> <p>Definisce il comando che deve essere eseguito quando lo script è in esecuzione.Dovrebbero essere disponibili le caratteristiche base della shell della vostra piattaforma.</p>
<p>Ci sono un paio segnaposto che è possibile usare nel comando:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Ottiene sostituto dall'URL del documento attivo</dd>
  <dt><code>%f</code></dt>
  <dd>Ottiene sostituto dal percorso del file locale al documento attivo.</dd>
  <dt><code>%n</code></dt>
  <dd>Ottiene sostituto dal nome del documento attivo, includendo la sua estensione.</dd>
  <dt><code>%b</code></dt>
  <dd>Ottiene sostituito dal nome del documento attivo senza la sua estensione.</dd>
  <dt><code>%d</code></dt>
  <dd>Ottiene sostituito dal percorso della cartella del documento attivo.</dd>
  <dt><code>%p</code></dt>
  <dd>Ottiene sostituito dall'URL per il progetto del documento attivo.</dd>
  <dt><code>%s</code></dt>
  <dd>Ottiene sostituito con il contenuto sfuggito alla shell della selezione nel documento attivo.</dd>
  <dt><code>%i</code></dt>
  <dd>Ottiene sostituito con il PID del processo KDevelop attualmente in esecuzione</dd>
</dl>
<p><b>NOTA:</b>  È vostra responsabilità evitare l'esecuzione di comandi pericolosi che potrebbero portare a perdite di dati.</p>
 <p>Definisce il nome dello script. Solo allo scopo di visualizzarlo.</p> <p>Definisce il/i collegamento/i che è possibile utilizzare per eseguire questo script esterno.</p> <p>Definisce che cosa dovrebbe essere fatto con gli errori (cioè <code>STDERR</code>) dello script.</p><p>Nota: se l'azione è la stessa di quella scelta per l'uscita, i canali verranno uniti e gestiti insieme.</p> <p>Definisce cosa si dovrebbe fare con l'output (cioè <code>STDOUT</code>) dello script.</p> <p>Definisce ciò che lo script esterno dovrebbe ottenere come input (via <code>STDIN</code>).</p> <p>Definisce che tipo di filtro dovrebbe essere applicato all'output. Ad esempio indicare gli errori in rosso.</p> <p>Definisce se i documenti devono essere salvati prima che lo script venga eseguito.</p> <p>Definisce se l'output dello script dovrebbe essere mostrato in una vista degli strumenti.</p> <p>Sei sicuro di voler rimuovere la configurazione dello script esterno <i>%1</i>?</p><p><i>Nota:</i> Lo script stesso non verrà rimosso.</p> <p>Il nome verrà utilizzato come identificativo durante il completamento del codice.</p>
<p><b>Nota:</b> Spazi non consentiti.</p> Aggiungi script esterno Impossibile eseguire lo script «%1» dal momento che cerca di accedere al contenuto dell'editor ma nessun documento è aperto. Conferma la rimozione dello script esterno Crea un nuovo script esterno Definisci qui il filtro ksolsim@gmail.com Modifica script esterno Modifica script esterno «%1» Errori: Script esterni Fltro... Cerca su google Simone Solinas Nessun documento aperto Filtro output: Compilazione veloce Rimuovi script esterno Esegue script o applicazioni esterne per manipolare il contenuto dell'editor o per fare altre azioni. Script esterno in esecuzione: %1 &Modalità salvataggio: Scorciatoia: Mostra out&put Ordinamento per selezione filtro compilatore contenuto del file corrente crea un nuovo file ignora inserisci nella posizione del file corrente unire con output normale nessun filtro nulla inserire un comando da eseguire inserire un nome sostituisci il contenuto del file corrente sostituisci la selezione del file corrente o inserisci nella posizione del cursore sostituisci la selezione del file corrente o dell'intero file salva il documento attivo salva tutti i documenti aperti non salvare filtro errore dello script selezione nel file corrente o niente selezione nel file corrente o dell'intero file filtro analisi statica dell'errore 