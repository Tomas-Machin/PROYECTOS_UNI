��    A      $  Y   ,      �  	   �     �     �     �  T   �  $        -  #   E     i     �  <   �  �  �  D   o  K   �  �      \   �  U   1  k   �  Q   �  N   E  �   �  r   #     �  \   �          '     B      U     v     �     �     �  	   �     �     �     �     	          &     =     Y  	   e     o     |     �     �     �     �  )   �     �  	          "         C      X  >   y  /   �     �     �          "  $   6  '   [     �  �  �  
   �  	   �     �     �  S   �          3      M     n     �  A   �  �  �  @   �  R   �  �     Y   �  Z   4  k   �  A   �  H   =  �   �  G        Z  x   s  #   �           )      <      [      s      �      �      �      �      �      �      �      �      !     &!     B!     R!     [!     g!     w!     �!     �!     �!  *   �!     �!     "  	   "  &   "     A"  !   S"  A   u"  0   �"     �"     �"     #     )#  )   ;#  (   e#     �#                     +   :   
   <   (      2      #                9      6      )                    ,       .   1       0         	   5   "   8   *            !              @   $       ?   -   A      ;          4   %       >                 =                                    &       /   3   '                    7          &Command: &Input: &Name: &Output: *** Could not start program '%1'. Make sure that the path is specified correctly *** *** Crashed with return code: %1 *** *** Exited normally *** *** Exited with return code: %1 *** *** Killed Application *** *** Process aborted *** <p>Defines shortcuts you can use to execute this script.</p> <p>Defines the command that should be executed when this script is run. Basic shell features of your platform should be available.</p>
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
<p><b>Note:</b> No spaces allowed.</p> Add External Script Cannot run script '%1' since it tries to access the editor contents but no document is open. Confirm External Script Removal Create new external script Define filter here EMAIL OF TRANSLATORSYour emails Edit External Script Edit external script '%1' Errors: External Scripts Filter... Google Selection NAME OF TRANSLATORSYour names No Document Open Output Filter: Quick Compile Remove External Script Running external script: %1 Save &Mode: Shortcut: Show Out&put Sort Selection compiler filter contents of current file create new file ignore insert at cursor position of current file merge with normal output no filter nothing please insert a command to execute please insert a name replace contents of current file replace selection of current file or insert at cursor position replace selection of current file or whole file save active document save all open documents save nothing script error filter selection in current file or nothing selection in current file or whole file static analysis error filter Project-Id-Version: 
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2014-06-26 05:39+0000
PO-Revision-Date: 2013-09-16 12:36+0200
Last-Translator: Bjørn Steensrud <bjornst@skogkatt.homelinux.org>
Language-Team: Norwegian Bokmål <i18n-nb@lister.ping.uio.no>
Language: nb
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 &Kommando: &Inndata: &Navn: &Utdata: *** Klarte ikke starte programmet «%1». Kontroller at stien er riktig oppgitt *** *** Krasjet med status: %1 *** *** Avsluttet normalt *** *** Avsluttet med status: %1 *** *** Drepte programmet *** *** Prosessen avbrutt *** <p>Definerer snarveier som kan brukes til å kjøre skriptet.</p> <p>Definerer kommandoen som skal utføres når dette skriptet kjøres. Grunnleggende skallegenskaper for systemtypen din må være tilgjengelige.</p>
<p>Noen plassholdere kan brukes i kommandoen:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Blir erstattet med URL-en til det aktive dokumentet.</dd>
  <dt><code>%f</code></dt>
  <dd>Blir erstattet med lokal sti til det aktive dokumentet.</dd>
  <dt><code>%n</code></dt>
  <dd>Blir erstattet med navnet på det aktive dokumentet, inkludert filendelsen.</dd>
  <dt><code>%b</code></dt>
  <dd>Blir erstattet med navnet på det aktive dokumentet, uten filendelsen.</dd>
  <dt><code>%d</code></dt>
  <dd>Blir erstattet med stien til mappa der det aktive dokumentet ligger.</dd>
  <dt><code>%p</code></dt>
  <dd>Blir erstattet med URL til prosjektet som det aktive dokumentet tilhører.</dd>
  <dt><code>%s</code></dt>
  <dd>Blir erstattet med utvalget fra det aktive dokumentet, etter skallbehandling.</dd>
  <dt><code>%i</code></dt>
  <dd>Blir erstattet med PID for den KDevelop-prosessen som kjører.</dd>
</dl>
<p><b>MERK:</b>  Det er ditt ansvar å passe på at det ikke kjøres farlige kommandoer som kan føre til tap av data.</p>
 <p>Definerer navnet på skriptet. Bare for visningens skyld.</p> <p>Definerer snarvei(er) som kan brukes til å kjøre dette eksterne skriptet.</p> <p>Definerer hva som skal gjøres med feil (dvs. <code>STDERR</code>) fra skriptet.</p> <p>Merk: hvis handlingen er den samme som er valgt for utdata, blir kanalene flettet og håndtert sammen.</p> <p>Definerer hva som skal gjøres med utdata (dvs. <code>STDOUT</code>) fra skriptet.</p> <p>Definerer hva det eksterne skriptet skal få som inndata (via <code>STDIN</code>).</p>s <p>Bestemmer hva slags filter som skal brukes på utdataene. F.eks. til å markere feil med rød tekst.</p> <p>Bestemmer om dokumenter skal lagres før skriptet kjøres.</p> <p>Bestemmer om utdata fra skriptet skal vises i en verktøyvisning.</p> <p>Er du sikker på at du vil fjerne det eksterne skriptoppsettet for <i>%1</i>?</p> <p><i>Merk:</i>Skriptet selv vil ikke bli fjernet.</p> <p>Navnet blir også brukt som identifikator under kodefullføring.</p> Legg til eksternt skript Kan ikke kjøre skriptet «%1» siden det forsøker å få tilgang til innholdet i redigeringen, men ingen fil er åpen. Bekreft fjerning av eksternt skript Lag nytt eksternt skript Definer filter her bjornst@skogkatt.homelinux.org Rediger eksternt skript Rediger eksternt skript «%1» Feil: Eksterne skripter Filter … Google utvalget Bjørn Steensrud Ikke noe åpent dokument Utdata-filter: Rask kompilering Fjern eksternt skript Kjører eksternt skript: %1 Lagrings&modus: Snarvei: Vis ut&data Sorter utvalget kompilatorfilter innholdet i gjeldende fil opprett ny fil Ignorer sett inn der pekeren står i gjeldende fil flett sammen med normale utdata uten filter Ingenting skriv inn en kommando som skal kjøres skriv inn et navn erstatt innholdet i gjeldende fil erstatt utvalget i gjeldende fil eller sett inn der pekeren står erstatt utvalget i gjeldende fil eller hele fila lagre aktivt dokument lagre alle åpne dokumenter ikke lagre noe skriptfeil-filter utvalget i gjeldende fil, eller ingenting utvalget i gjeldende fil eller hele fila Statisk feilanalysefilter 