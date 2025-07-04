��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �    	   �            	     ]        |     �  "   �     �     �  [     �  s  C   3  d   w  �   �  W   �  a     f   g  O   �  R     �   q  �   �     s   ~   �   !   !     -!     K!  /   g!     �!  &   �!     �!     �!  
   �!     �!     "     +"     @"     Q"     d"  �   |"      �"     #     .#     =#     N#     `#     u#     �#     �#  .   �#      �#     �#     $     $     1$  #   >$  A   b$  3   �$     �$  !   �$     %     /%  /   D%  3   t%  "   �%         :           )   ;   
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
PO-Revision-Date: 2015-04-15 14:41+0200
Last-Translator: Lasse Liehu <lasse.liehu@gmail.com>
Language-Team: Finnish <lokalisointi@lists.coss.fi>
Language: fi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-POT-Import-Date: 2012-12-01 22:20:30+0000
X-Generator: Lokalize 2.0
 &Komento: &Syöte: &Nimi: T&uloste: *** Ei voitu käynnistää ohjelmaa ”%1”. Varmista, että määritetty polku on oikea *** *** Kaatui paluuarvolla: %1 *** *** Päättyi normaalisti *** *** Päättyi paluuarvolla: %1 *** *** Sovellus tapettiin *** *** Prosessi keskeytettiin *** <p>Määrittää pikanäppäimen, jota voit käyttää tämän skriptin suorittamiseen.</p> <p>Määrittää komennon, joka suoritetaan, kun skripti käynnistetään. Alustasi peruskomentotulkkiominaisuuksien pitäisi olla käytettävissä.</p>
<p>Voit käyttää komennossa muutamia korvauksia:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Korvautuu aktiivisen tiedoston verkko-osoitteella.</dd>
  <dt><code>%f</code></dt>
  <dd>Korvautuu aktiivisen tiedoston paikallisella tiedostopolulla.</dd>
  <dt><code>%n</code></dt>
  <dd>Korvautuu aktiivisen tiedoston tiedostopäätteellisellä nimellä.</dd>
  <dt><code>%b</code></dt>
  <dd>Korvautuu aktiivisen tiedoston tiedostopäätteettömällä nimellä.</dd>
  <dt><code>%d</code></dt>
  <dd>Korvautuu aktiivisen tiedoston kansiopolulla.</dd>
  <dt><code>%p</code></dt>
  <dd>Korvautuu aktiivisen tiedoston projektin verkko-osoitteella.</dd>
  <dt><code>%s</code></dt>
  <dd>Korvautuu aktiivisen tiedoston nykyisellä valinnalla siten, että komentotulkin erikoismerkit on varustettu koodinvaihtomerkein.</dd>
  <dt><code>%i</code></dt>
  <dd>Korvautuu parhaillaan suoritettavan KDevelop-prosessin PIDillä.</dd>
</dl>
<p><b>HUOMAA:</b>  On omalla vastuullasi estää sellaisten riskikomentojen suorittaminen, jotka voisivat johtaa tietojen katoamiseen.</p>
 <p>Määrittää skriptin nimen. Vain näyttämistarkoituksiin.</p> <p>Määrittää pikanäppäimen, jota voit käyttää tämän ulkoisen skriptin suorittamiseen.</p> <p>Määrittää mitä tehtäisiin virheille (ts. <code>STDERR</code>) / skripti.</p><p>Huomaa: jos toiminto on sama kuin tuo, joka valittiin tulosteelle, kanavat yhdistetään ja käsitellään yhdessä.</p> <p>Määrittää mitä tehtäisiin tulosteelle (ts. <code>STDOUT</code>) / skripti.</p> <p>Määrittää mitä ulkoisen skriptin pitäisi saada syötteenä (via <code>STDIN</code>).</p> <p>Määrittää tulosteen suodatustavan. Esimerkiksi virheiden punaiseksi värittämistä varten.</p> <p>Määrittää, että tallennetaanko tiedostot ennen skriptin suoritusta.</p> <p>Määrittää, että näytetäänkö skriptin tuloste työkalunäkymässä.</p> <p>Haluatko varmasti poistaa ulkoisen skriptiasetuksen kohteelle <i>%1</i>?</p><p><i>Huomaa:</i> Itse skriptiä ei poisteta.</p> <p>Nimeä käytetään myös tunnisteena koodin täydennyksessä.</p>
<p><b>Huomaa:</b> Välilyönnit eivät ole sallittuja.</p> Lisää ulkoinen skripti Ei voi suorittaa skriptiä ”%1”, koska se yrittää lukea muokkaimen sisältöä, mutta yhtään tiedostoa ei ole avoinna. Vahvista ulkoisen skriptin poisto Luo uusi ulkoinen komentojono Määritä suodatin tässä karvonen.jorma@gmail.com, lasse.liehu@gmail.com Muokkaa ulkoista skriptiä Muokkaa ulkoista komentojonoa ”%1” Virheet: Ulkoiset skriptit Suodata… Googlaa valinta Jorma Karvonen, Lasse Liehu Ei avointa tiedostoa Tulostesuodatin: Käännä nopeasti Poista ulkoinen skripti Suorittaa ulkoisia skriptejä tai sovelluksia editorisisällön manipuloimiseksi tai muiden satunnaisten tehtävien tekemiseksi. Suoritetaan ulkoinen skripti: %1 Tallenna &tila: Pikanäppäin: Näytä tul&oste Lajittele valinta kääntäjäsuodatin nykyisen tiedoston sisältö luo uusi tiedosto ohita lisää nykyisen tiedoston kohdistinsijaintiin yhdistä normaaliin tulosteeseen ei suodatinta ei mitään lisää suoritettava komento lisää nimi korvaa nykyisen tiedoston sisältö korvaa nykyisen tiedoston valinta tai lisää kohdistinsijaintiin korvaa nykyisen tiedoston valinta tai koko tiedosto tallenna aktiivinen tiedosto tallenna kaikki avoimet tiedostot älä tallenna mitään skriptivirhesuodatin valinta nykyisessä tiedostossa tai ei mitään valinta nykyisesä tiedostossa tai koko tiedostossa staattisen analyysin virhesuodatin 