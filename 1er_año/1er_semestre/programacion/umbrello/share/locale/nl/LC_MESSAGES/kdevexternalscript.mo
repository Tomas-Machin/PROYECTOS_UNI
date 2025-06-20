��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �    
   �     �     �  	   �  T   �  #   .     R  %   m     �     �  P   �  �    @   
  \   K  �   �  b   �  T   �  {   ?  ^   �  b     �   }           �      �   $    !     E!     b!     y!     �!     �!     �!     �!     �!     �!     �!     "     "     2"     B"  t   \"     �"     �"  
   �"     #     #     '#     :#     Y#     p#  $   x#     �#     �#     �#  .   �#     �#  #   $  :   ;$  7   v$     �$      �$     �$     �$  #   %  0   6%  (   g%         :           )   ;   
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
<p><b>Note:</b> No spaces allowed.</p> Add External Script Cannot run script '%1' since it tries to access the editor contents but no document is open. Confirm External Script Removal Create new external script Define filter here EMAIL OF TRANSLATORSYour emails Edit External Script Edit external script '%1' Errors: External Scripts Filter... Google Selection NAME OF TRANSLATORSYour names No Document Open Output Filter: Quick Compile Remove External Script Run external scripts or applications to manipulate the editor contents or do other arbitrary actions. Running external script: %1 Save &Mode: Shortcut: Show Out&put Sort Selection compiler filter contents of current file create new file ignore insert at cursor position of current file merge with normal output no filter nothing please insert a command to execute please insert a name replace contents of current file replace selection of current file or insert at cursor position replace selection of current file or whole file save active document save all open documents save nothing script error filter selection in current file or nothing selection in current file or whole file static analysis error filter Project-Id-Version: 
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2014-06-26 05:39+0000
PO-Revision-Date: 2013-11-07 10:25+0100
Last-Translator: Freek de Kruijf <freekdekruijf@kde.nl>
Language-Team: Dutch <kde-i18n-nl@kde.org>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 &Commando: &Invoer: &Naam: &Uitvoer: *** Kon programma '%1' niet starten. Controleer of het pad correct is opgegeven. *** *** Gecrasht met returncode: %1 *** *** Normaal beëindigd *** *** Beëindigd met returncode: %1 *** *** Afgebroken programma *** *** Proces afgebroken *** <p>Sneltoetsen definiëren die u kunt gebruiken om dit script uit te voeren.</p> <p>Definieert het commando dat uitgevoerd moet worden wanneer dit script wordt uitgevoerd. Basis shell-mogelijkheden van uw platform moeten beschikbaar zijn.</p>
<p>There are a few placeholders you can use in the command:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Wordt vervangen door de URL van het actieve document.</dd>
  <dt><code>%f</code></dt>
  <dd>Wordt vervangen door het locale bestandspad naar het actieve document.</dd>
  <dt><code>%n</code></dt>
  <dd>Wordt vervangen door de naam van het actieve document, inclusief zijn extensie.</dd>
  <dt><code>%b</code></dt>
  <dd>Wordt vervangen door de naam van het actieve document zonder zijn extensie.</dd>
  <dt><code>%d</code></dt>
  <dd>Wordt vervangen door het pad naar de map van het actieve document.</dd>
  <dt><code>%p</code></dt>
  <dd>Wordt vervangen door de URL van het project van het actieve document.</dd>
  <dt><code>%s</code></dt>
  <dd>Wordt vervangen door de shell-inhoud met escapes van de selectie in het actieve document.</dd>
  <dt><code>%i</code></dt>
  <dd>Wordt vervangen door de PID van het nu draaiende KDevelop-process.</dd>
</dl>
<p><b>OPMERKING:</b>  het is uw verantwoordelijkheid om geen gevaarlijke commando's uit te voeren die kunnen leiden tot verleis van gegevens.</p>
 <p>Definieert de naam van het script. Alleen voor het tonen.</p> <p>Definieert de sneltoets(en) die u kunt gebruiken om dit externe script uit te voeren.</p> <p>Definieert wat gedaan moet worden met de fouten (dwz. <code>STDERR</code>) van het script.</p><p>Opmerling: als de actie hetzelfde is als die voor de uitvoer, dan worden de kanalen gemengd worden en samen behandeld.</p> <p>Definieert wat met de uitvoer gedaan moet worden (dwz. <code>STDOUT</code>) van het script.</p> <p>Definieert wat het externe script als invoer krijgt (via <code>STDIN</code>).</p> <p>Definieert welk type filter toegepast zou moeten worden op de uitvoer. Bijv. om fouten aan te geven door rode tekst.</p> <p>Definieert of documenten opgeslagen moeten worden voordat de scripts uitgevoerd worden.</p> <p>Definieert of de uitvoer van het script getoond moet worden een weergave van een hulpmiddel</p> <p>Wilt u de externe script-configuratie voor <i>%1</i> verwijderen?</p><p><i>Notitie:</i> het script zelf zal niet worden verwijderd.</p> <p>De naam zal ook worden gebruikt als de identifier bij code-aanvulling.</p>
<p><b>Opmerking:</b> Spaties niet toegestaan.</p> Extern script toevoegen Kan script '%1' niet uitvoeren omdat het probeert toegang te krijgen tot de inhoud van de editor maar er is geen document open. Extern script verwijderen bevestigen Nieuw extern script aanmaken Filter hier definieren freekdekruijf@kde.nl Extern script bewerken Extern script '%1' bewerken Fouten:  Externe scripts Filteren... Google selectie Freek de Kruijf Geen geopend document Filter op de uitvoer: Snel compileren Extern script verwijderen Externe scripts of programma's uitvoeren om de inhoud van de bewerker te manipuleren of andere acties uit te voeren. Extern script uitvoeren: %1 Opslag&modus: Sneltoets: Ui&tvoer tonen Selectie sorteren filter in compiler inhoud van het huidige bestand nieuw bestand aanmaken negeren op de huidige cursorpositie invoegen samenvoegen met normale uitvoer geen filter niets gaarne een een uit te voeren commando invoeren gaarne een naam invoeren inhoud van huidig bestand vervangen selectie van huidig bestand of invoegen op huidige positie selectie van huidig bestand vervangen of gehele bestand actief document opslaan alle geopende documenten opslaan niets opslaan filter voor fouten in script selectie in huidig bestand of niets selectie in huidig bestand of het gehele bestand filter voor statische analyse van fouten 