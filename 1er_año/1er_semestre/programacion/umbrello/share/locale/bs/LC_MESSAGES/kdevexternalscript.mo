��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �      	   ,     6     =     E  P   M  !   �     �  #   �     �       I   *  �  t  5   �  N   0  �     Y   ?  ]   �  u   �  R   m  K   �  �     w   �        s   '   #   �      �      �      �      !     &!     E!     N!  	   _!     i!     v!     �!     �!     �!     �!  k   �!     ="     ]"  	   o"     y"     �"     �"     �"     �"  
   �"  +   �"     #     /#     ;#  %   B#     h#  #   z#  >   �#  4   �#     $     )$     F$     W$  %   q$  2   �$  !   �$         :           )   ;   
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
<p><b>Note:</b> No spaces allowed.</p> Add External Script Cannot run script '%1' since it tries to access the editor contents but no document is open. Confirm External Script Removal Create new external script Define filter here EMAIL OF TRANSLATORSYour emails Edit External Script Edit external script '%1' Errors: External Scripts Filter... Google Selection NAME OF TRANSLATORSYour names No Document Open Output Filter: Quick Compile Remove External Script Run external scripts or applications to manipulate the editor contents or do other arbitrary actions. Running external script: %1 Save &Mode: Shortcut: Show Out&put Sort Selection compiler filter contents of current file create new file ignore insert at cursor position of current file merge with normal output no filter nothing please insert a command to execute please insert a name replace contents of current file replace selection of current file or insert at cursor position replace selection of current file or whole file save active document save all open documents save nothing script error filter selection in current file or nothing selection in current file or whole file static analysis error filter Project-Id-Version: kdevplatform
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2014-06-26 05:39+0000
PO-Revision-Date: 2014-01-13 20:54+0000
Last-Translator: Samir Ribić <Unknown>
Language-Team: Bosnian <bs@li.org>
Language: bs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Launchpad (build 17341)
X-Launchpad-Export-Date: 2015-02-15 06:08+0000
Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
 &Naredba: &Ulaz: &Naziv: &Izlaz: *** Ne mogu pokrenuti program '%1'. Osigurajte se da je put pravilno naveden *** *** Krah s izlaznim kodom: %1 *** *** Normalan izlaz *** *** Izlaz s povratnim kodom: %1 *** *** Ubijen program *** *** Proces prekinut *** <p>Definiše kratice koje možete koristiti da izvršite ovu skriptu.</p> <p>Definiše komande koje se trebaju izvršiti pri pokretanju skripte. Osnovne mogućnosti školjke z avašu platformu bi trebale biti dostupne.</p>
<p>Ima nekoliko mjesta koje možete koristiti u komandi:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Postaje zamijenjen s URL aktivnog dokumenta.</dd>
  <dt><code>%f</code></dt>
  <dd>Postaje zamijenjen s lokalnom stazom na aktivni dokument.</dd>
  <dt><code>%n</code></dt>
  <dd>Postaje zamijenjen s imenom aktivnog dokumenta, uključujući ekstenziju.</dd>
  <dt><code>%b</code></dt>
  <dd>Postaje zamijenjen s imenom aktivnog dokumenta bez ekstenzije.</dd>
  <dt><code>%d</code></dt>
  <dd>Postaje zamijenjen s stazom na direktorij aktivnog dokumenta.</dd>
  <dt><code>%p</code></dt>
  <dd>Postaje zamijenjen s URL na projekt aktivnog dokumenta.</dd>
  <dt><code>%s</code></dt>
  <dd>Postaje zamijenjen s sadržajem izbora proslijeđenim školjci unutar aktivnog dokumenta.</dd>
  <dt><code>%i</code></dt>
  <dd>Postaje zamijenjen s PID trenutno aktivnog KDevelop procesa.</dd>
</dl>
<p><b>NOTE:</b>  Vaša je odgovornost da izbjegnete izvršavanje slučajnih komandi koje mogu oštetiti vaše podatke.</p>
 <p>Definiše ime skripte. Samo za svrhu prikaza..</p> <p>Definiše kratice koje možete koristiti da izvršite eksternu skriptu.</p> <p>Definiše šta uraditi s greškama (tj. <code>STDERR</code>) skripte.</p><p>Napomena: ako akcija je ista kao i da je izabrana za izlaz, kanali će biti objedinjeni i obrađeni zajedno.</p> <p>Definiše šta bi se trebalu uraditi kao izlaz (tj.. <code>STDOUT</code>) skripte.</p> <p>Definiše šta bi eksterna skripta trebala dobiti kao ulaz (preko <code>STDIN</code>).</p> <p>Definira koji tip filtriranja treba primijeniti na izlazu. Na primjer naznačiti greške prema crvenom tekstu.</p> <p>Definiše da li se dokumenti trebaju snimiti prije nego se skripta uzvrši.</p> <p>Definiše da li izlaz skripte treba biti prikazan u alatnom pogledui</p> <p>Da li zaista želite ukloniti konfiguraciju eksterne skripte za <i>%1</i>?</p><p><i>Napomena:</i> Sama skripta neće biti uklonjena.</p> <p>Ime će se koristiti kao identifikator tokom kompletiranja koda</p>
<p><b>Napomena:</b> Razmaci nisu dopušteni.</p> Dodaj spoljnju skriptu Ne mogu pokrenuti skriptu '%1' pošto ona pokušava pristupiti sadržaju editora ali nijedan dokument nije otvoren. Potvrdi uklanjanje spoljne skripte. Kreiraj novu eksternu skriptu Definiši filter ovdje samir.ribic@etf.unsa.ba Izmijeni spoljnju skriptu Izmijeni spoljnju skriptu '%1' Greške: Spoljnje skripte Filter... Google izbor Samir Ribić Nema otvorenog dokumenta Izlazni filter: Brzo prevedi Ukloni spoljnju skriptu Pokreni spoljne skripte ili aplikacija za manipulaciju sadržaja uređivača ili  druge proizvoljne radnje. Izvršavam spoljnju skriptu: %1 Reži&m snimanja: Prečica: Prikaži Izlaz Izbor sortiranja kompajlerski filter sadržaj trenutne datoteke kreiraj novu datoteku ignorisati ubaci na poziciju kursora trenutne datoteke spoji s normalnim izlazom bez filtera ništa molim unesite komandu za izvršavanje molim unesite ime zamijeni sadržaj trenutne datoteke zamijeni izbor trenutne datoteke ili ubaci na poziciju kursora zamijeni izbor trenutne datoteke ili cijelu datoteku snimi aktivni dokument snimi sve otvorene dokumente ne snimaj ništa filter skriptnih grešaka izbor u trenutnoj datoteci ili ništa izbor unutar trenutne datoteke ili cijele datoteke filter grešaka statičke analize 