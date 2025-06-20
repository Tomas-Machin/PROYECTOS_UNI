��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �       �     �     �  
   �  ^   �     *     C     `     |      �  G   �  #  �  >   !  Q   `  �   �  ]   �  h   �  e   N  E   �  C   �  t   >  n   �     "  n   6  $   �     �     �     �                 <      B   	   T      ^      m      y      �      �      �   r   �       G!     h!  
   z!     �!     �!     �!     �!     �!  	   �!  ,   �!     "     <"     J"     Q"     q"     �"  B   �"  1   �"     #  %   9#     _#     t#  "   �#  %   �#  %   �#         :           )   ;   
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
PO-Revision-Date: 2014-06-12 13:13+0300
Last-Translator: Marek Laane <bald@smail.ee>
Language-Team: Estonian <kde-et@linux.ee>
Language: et
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 &Käsk: S&isend: &Nimi: &Väljund: *** Programmi '%1' käivitamine nurjus. Kontrolli, kas otsingutee (path) on ikka korrektne *** *** Krahh koodiga %1 *** *** Väljuti normaalselt *** *** Väljuti koodiga %1 *** *** Rakendus tapeti *** *** Protsess katkestas töö *** <p>Määrab kiirklahvid, mida saab kasutada skripti käivitamiseks.</p> <p>Defineerib käsu, mis tuleb käivitada, kui skript käivitatakse. Kasutada saab sinu platvormi põhilisi shelli võimalusi.</p>
<p>Käsus saab pruukida mõningaid kohatäitjaid:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Asendatakse aktiivse dokumendi URL-iga.</dd>
  <dt><code>%f</code></dt>
  <dd>Asendatakse aktiivse dokumendi kohaliku faili asukohaga.</dd>
  <dt><code>%n</code></dt>
  <dd>Asendatakse aktiivse dokumendi nimega, kaasa arvatud laiend.</dd>
  <dt><code>%b</code></dt>
  <dd>Asendatakse aktiivse dokumendi nimega ilma laiendita.</dd>
  <dt><code>%d</code></dt>
  <dd>Asendatakse aktiivse dokumendi kataloogi asukohaga.</dd>
  <dt><code>%p</code></dt>
  <dd>Asendatakse aktiivse dokumendi projekti URL-iga.</dd>
  <dt><code>%s</code></dt>
  <dd>Asendatakse aktiivse dokumendi valiku shellis varjestatud sisuga.</dd>
  <dt><code>%i</code></dt>
  <dd>Asendatakse parajasti töötava KDevelopi protsessi PID-iga.</dd>
</dl>
<p><b>MÄRKUS:</b> see sõltub ainult sinust, et ei käivitataks ohtlikke käske, mis võivad kaasa tuua andmekao.</p>
 <p>Määrab skripti nime. See on lihtsalt selguse mõttes.</p> <p>Määrab kiirklahvi(d), mida saab kasutada välise skripti käivitamiseks.</p> <p>Määrab, mida teha vigadega (s.t skripti standardveaväljundiga <code>STDERR</code>).</p><p>Märkus: kui valitud toiming on sama nagu väljundi puhul, kanalid ühendatakse ja neid käsitletakse üheskoos.</p> <p>Määrab, mida teha väljundiga (s.t skripti standardväljundiga <code>STDOUT</code>).</p> <p>Määrab, mida väline skript peab kasutama sisendina (standardsisendi <code>STDIN</code> kaudu).</p> <p>Määrab, millist laadi filter väljundile rakendada. Nt. vigade märkimiseks punase tekstiga.</p> <p>Määrab, kas dokumendid salvestada enne skripti käivitamist.</p> <p>Määrab, kas skripti väljund on nähtav tööriistavaates.</p> <p>Kas tõesti eemaldada välise skripti <i>%1</i> seadistus?</p><p><i>Märkus:</i> skripti ennast ei eemaldata.</p> <p>Nime kasutatakse ka identifikaatorina koodi lõpetamisel.</p>
<p><b>Märkus:</b> tühikud pole lubatud.</p> Lisa väline skript Skripti "%1" käivitamine nurjus, sest see püüab kasutada redaktori sisu, aga ühtegi dokumenti pole avatud. Välise skripti eemaldamise kinnitus Uue välise skripti loomine Määra siin filter bald@smail.ee Muuda välist skripti Välise skripti "%1" muutmine Vead: Välised skriptid Filter... Google'i valik Marek Laane Ühtegi dokumenti pole avatud Väljundifilter: Kiire kompileerimine Eemalda väline skript Välised skriptid või rakendused, mis võimaldavad muuta redaktori sisu või ette võtta mingeid muid toiminguid. Välise skripti käivitamine: %1 Salvesta&misviis: Kiirklahv: Väl&jundi näitamine Valiku sortimine kompilaatori filter aktiivse faili sisu luuakse uus fail eiratakse lisatakse aktiivsesse faili kursori asukohta liidetakse tavalise väljundiga filter puudub puudub palun sisesta käivitatav käsk palun sisesta nimi asendatakse aktiivse faili sisu asendatakse valik aktiivses failis või lisatakse kursori asukohta asendatakse valik aktiivses failis või kogu fail salvestatakse aktiivne dokument salvestatakse kõik avatud dokumendid midagi ei salvestata skripti tõrgete filter valik aktiivses failis või puudub valik aktiivses failis või kogu fail staatilise analüüsi tõrgete filter 