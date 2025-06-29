��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �    
   �     �     �     �  _   �  $   O     t  %   �     �     �  F   �  �  /  :   �  W   �  �   V  n   D  r   �  o   &  >   �  C   �  �     �   �     7   r   Q   '   �      �      !     !     :!     R!     o!     t!  	   �!     �!     �!     �!     �!     �!     �!  q   "     }"     �"     �"     �"     �"     �"     �"     #     #  ,   #     G#     g#  	   t#     ~#     �#  #   �#  F   �#  2   $     J$     `$     {$     �$  )   �$  *   �$     �$         :           )   ;   
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
PO-Revision-Date: 2013-10-06 09:36+0200
Last-Translator: Stefan Asserhäll <stefan.asserhall@bredband.net>
Language-Team: Swedish <kde-i18n-doc@kde.org>
Language: sv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.4
Plural-Forms: nplurals=2; plural=n != 1;
 &Kommando: &Inmatning: &Namn: Visa utmatning *** Kunde inte starta programmet '%1'. Försäkra dig om att sökvägen är riktigt angiven *** *** Kraschade med returkoden: %1 *** *** Avslutades normalt *** *** Avslutades med returkoden: %1 *** *** Dödade program *** *** Processen avbröts *** <p>Definierar genvägar som kan användas för att köra skriptet.</p> <p>Definerar de kommandon som ska köras när det här skriptet körs. Plattformens grundläggande skalfunktioner ska vara tillgängliga.</p>
<p>Det finns några platsmarkörer som kan användas i kommandot:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Ersätts av det aktiva dokumentets webbadress.</dd>
  <dt><code>%f</code></dt>
  <dd>Ersätts av den lokala filsökvägen till det aktiva dokumentet.</dd>
  <dt><code>%n</code></dt>
  <dd>Ersätts av det aktiva dokumentets namn inklusive filändelse.</dd>
  <dt><code>%b</code></dt>
  <dd>Ersätts av det aktiva dokumentets namn utan filändelse.</dd>
  <dt><code>%d</code></dt>
  <dd>Ersätts av sökvägen till katalogen med det aktiva dokumentet.</dd>
  <dt><code>%p</code></dt>
  <dd>Ersätts av projektets webbadress för det aktiva dokumentet.</dd>
  <dt><code>%s</code></dt>
  <dd>Ersätts med skalets skyddade innehåll av markeringen i det aktiva dokumentet.</dd>
  <dt><code>%i</code></dt>
  <dd>Ersätts med process-id för KDevelop-processen som för närvarande kör.</dd>
</dl>
<p><b>Observera:</b> Det är ditt ansvar att förhindra att farliga kommandon utförs, som skulle kunna orsaka dataförlust.</p>
 <p>Definierar skiprtets namn. Bara för visningssyfte.</p> <p>Definierar genvägar som kan användas för att köra det här externa skriptet.</p> <p>Definierar vad som ska göras med felen (dvs. <code>standardfelutmatning</code>) för den sortens skript.</p><p>Observera att om åtgärden är samma som den vald för utdata, kommer kanalerna sammanfogas och hanteras tillsammans.</p> <p>Definierar vad som ska göras med utdata (dvs. <code>standardutmatning</code>) för den sortens skript.</p> <p>Definierar vad det externa skriptet ska ta emot som indata (via <code>standardinmatning</code> eller inte).</p> <p>Definierar vilken sorts filtrering som ska användas för utdata, t.ex. för att ange fel med röd text.</p> <p>Definierar om dokument ska sparas innan skriptet körs.</p> <p>Definierar om skriptets utmatning ska visas i en verktygsvy.</p> <p>Vill du verkligen ta bort inställningen av det externa skriptet för <i>%1</i>?</p><p><i>Observera:</i> Sjäva skriptet kommer inte att tas bort.</p> <p>Namnet kommer också att användas som identifierar vid kodkomplettering.</p>
<p><b>Observera</b>: Inga mellanslag tillåts.</p> Lägg till externt skript Kan inte köra skriptet '%1', eftersom det försöker komma åt editorns innehåll, men inget dokument är öppet. Bekräfta borttagning av externt skript Skapa nytt externt skript Definiera filter här stefan.asserhall@bredband.net Redigera externt skript Redigera externt skript '%1' Fel: Externa skript Filter... Sök efter markering på Google Stefan Asserhäll Inget dokument öppet Utdatafilter: Snabbkompilering Ta bort externt skript Kör externa skript eller program för att behandla editorns innehåll eller utför andra godtyckliga åtgärder. Kör externt skript: %1 &Metod att spara: Genväg: Visa ut&matning Sortera markering kompileringsfilter den nuvarande filens innehåll skapa ny fil Ignorera infoga vid markörpositionen i nuvarande fil sammanfoga med normal utmatning inget filter ingenting infoga ett kommando att köra infoga ett namn ersätt innehållet i nuvarande fil ersätt markering i nuvarande fil eller infoga vid markörens position ersätt markering i nuvarande fil eller hela filen spara aktivt dokument spara alla öppna dokument spara ingenting filter för skriptfel markering i nuvarande fil eller ingenting markering i nuvarande fil eller hela filen filter för statiskt analysfel 