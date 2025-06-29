��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �       �     �     �     �  Z     !   _     �  #   �     �     �  H   �  M  <  +   �  R   �  �   	  J   �  S   �  m   =  F   �  C   �  �   6  w   �     0  |   E  &   �     �                 *      ?      Y      a   
   q      |      �      �      �      �      �   w   �       d!     �!     �!     �!     �!     �!     �!     �!     
"  .   "     @"     ]"     i"     n"     �"  "   �"  @   �"  7   �"     2#     J#     f#     u#  "   �#  .   �#  %   �#         :           )   ;   
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
PO-Revision-Date: 2013-10-05 12:54+0200
Last-Translator: Andrej Mernik <andrejm@ubuntu.si>
Language-Team: Slovenian <lugos-slo@lugos.si>
Language: sl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=(n%100==1 ? 1 : n%100==2 ? 2 : n%100==3 || n%100==4 ? 3 : 0);
X-Generator: Lokalize 1.5
 &Ukaz: &Vhod: I&me: Izh&od: *** Ni bilo mogoče zagnati programa '%1'. Prepričajte se, da je podana pot pravilna. *** *** Sesuto z izhodno kodo: %1 *** *** Končano normalno *** *** Končano z izhodno kodo: %1 *** *** Program uničen *** *** Opravilo prekinjeno *** <p>Določa bližnjice, ki jih lahko uporabite za zagon tega skripta.</p> <p>Določa ukaz, ki bo zagnan, ko bo zagnan ta skript. Na voljo bi morale biti osnovne zmožnosti vaše lupine.</p>
<p>V ukazu lahko uporabite nekaj vsebnikov:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Je zamenjan z naslovom URL dejavnega dokumenta.</dd>
  <dt><code>%f</code></dt>
  <dd>Je zamenjan s krajevno potjo do dejavnega dokumenta.</dd>
  <dt><code>%n</code></dt>
  <dd>Je zamenjan z imenom dejavnega dokumenta, vključno z njegovo pripono.</dd>
  <dt><code>%b</code></dt>
  <dd>Je zamenjan z imenom dejavnega dokumenta brez njegove pripone.</dd>
  <dt><code>%d</code></dt>
  <dd>Je zamenjan s potjo do mape v kateri je dejavni dokument.</dd>
  <dt><code>%p</code></dt>
  <dd>Je zamenjan z naslovom URL do projekta v katerem je dejavni dokument.</dd>
  <dt><code>%s</code></dt>
  <dd>Je zamenjan z vsebino izbire dejavnega dokumenta, ki je prilagojena lupini.</dd>
  <dt><code>%i</code></dt>
  <dd>Je zamenjan s PID trenutno zagnanega opravila KDevelop.</dd>
</dl>
<p><b>OPOMBA:</b>  Vaša odgovornost je, da preprečite zagon škodljivih ukazov, ki bi lahko povzročili izgubo podatkov.</p>
 <p>Določa ime skripta. Samo za prikaz.</p> <p>Določa bližnjice, ki jih lahko uporabite za zagon tega zunanjega skripta.</p> <p>Določa kaj se naj zgodi z napakami (s <code>STDERR</code>) skripta.</p><p>Opomba: če je dejanje enako kot za izhod, bosta kanala združena.</p> <p>Določa kaj se naj zgodi z izhodom skripta (s <code>STDOUT</code>).</p> <p>Določa kaj naj bi kot vhod dobil zunanji skript (preko <code>STDIN</code>).</p> <p>Določa katera vrsta filtriranja naj bo uveljavljena za izhod. Napake lahko recimo označite z rdečo.</p> <p>Določa ali se naj dokumenti shranijo, preden se izvede skript.</p> <p>Določa ali naj bo izhod skripta prikazan v orodnem pogledu.</p> <p>Ali resnično želite odstraniti nastavitve zunanjega skripta <i>%1</i>?</p><p><i>Opomba:</i> skript sam ne bo odstranjen.</p> <p>Ime bo med dopolnjevanjem kode uporabljeno tudi kot določilnik.</p>
<p><b>Opomba:</b> Presledki niso dovoljeni.</p> Dodaj zunanji skript Ni mogoče zagnati skripta '%1', saj poskuša dostopati do vsebine urejevalnika v katerem pa ni odprtega nobenega dokumenta. Potrdite odstranitev zunanjega skripta Ustvari nov zunanji skript Tu določite filter andrejm@ubuntu.si Uredi zunanji skript Uredi zunanji skript '%1' Napake: Zunanji skripti Filter ... Najdi izbor na Googlu Andrej Mernik Ni odprtega dokumenta Izhodni filter: Hitro prevedi Odstrani zunanji skript Zaganjajte zunanje skripte ali programe, ki upravljajo z vsebino urejevalnika ali pa opravljajo druga poljubna dejanja. Zaganjanje zunanjega skripta: %1 &Način shranjevanja: Bližnjica: &Prikaži izhod Razvrsti izbor filter prevajalnika vsebina trenutne datoteke ustvari novo datoteko prezri vstavi na položaj kazalke v trenutni datoteki združi z običajnim izhodom brez filtra nič vnesite ukaz, ki bo izveden vnesite ime zamenjaj vsebino trenutne datoteke zamenjaj izbor trenutne datoteke ali vstavi na položaju kazalke zamenjaj izbor v trenutni datoteki ali celotni datoteki shrani dejavni dokument shrani vse odprte dokumente ne shrani nič filter napak skripta izbor v trenutni datoteki ali nič izbor v trenutni datoteki ali celotna datoteka filter napak statičnega preučevanja 