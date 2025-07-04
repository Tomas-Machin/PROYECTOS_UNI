��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �       �  
          
     f   )  ,   �     �  %   �     �       O   2    �  >   �  [   �  �   )  F   �  Z   ;  u   �  K     L   X  �   �  �   5      �      �   +   T!     �!     �!     �!     �!     �!     
"     "     '"     0"     >"     S"     l"     |"     �"  v   �"  &   #     E#     S#     [#     l#     �#     �#     �#     �#  '   �#     �#  
   $     $  '   $     C$  "   [$  ?   ~$  1   �$     �$  "   %     +%     ;%  #   S%  ,   w%  "   �%         :           )   ;   
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
PO-Revision-Date: 2014-02-09 06:10+0100
Last-Translator: Łukasz Wojniłowicz <lukasz.wojnilowicz@gmail.com>
Language-Team: Polish <kde-i18n-doc@kde.org>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 &Polecenie: &Wejście: &Nazwa: &Wyjście: *** Nie można uruchomić programu '%1'. Upewnij się, że ścieżka została określona poprawnie *** *** Uległ awarii bez kodu zwrotnego: %1 *** *** Wyszedł normalnie *** *** Wyszedł z kodem zwrotnym: %1 *** *** Zniszczono program *** *** Proces przerwany *** <p>Określa skróty, które możesz wykorzystać do wykonania tego skryptu.</p> <p>Określa polecenie, które ma być wykonane gdy ten skrypt jest uruchomiony.  Powinny być dostępne podstawowe funkcje twojej platformy.</p>
<p>Istnieje kilka pól zastępczych, które możesz użyć w poleceniu:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Zostaje zastąpione przez adres URL aktywnego dokumentu.</dd>
  <dt><code>%f</code></dt>
  <dd>Zostaje zastąpione przez lokalną ścieżkę pliku do aktywnego dokumentu.</dd>
  <dt><code>%n</code></dt>
  <dd>Zostaje zastąpione przez nazwę aktywnego dokumentu, włączając w to jego rozszerzenie.</dd>
  <dt><code>%b</code></dt>
  <dd>Zostaje zastąpione przez nazwę aktywnego dokumentu bez rozszerzenia.</dd>
  <dt><code>%d</code></dt>
  <dd>Zostaje zastąpione przez ścieżkę do katalogu aktywnego dokumentu.</dd>
  <dt><code>%p</code></dt>
  <dd>Zostaje zastąpione przez adres URL do projektu aktywnego dokumentu.</dd>
  <dt><code>%s</code></dt>
  <dd>Zostaje zastąpione przez zawartość sterującą powłoki obecną w zaznaczeniu w aktywnym dokumencie.</dd>
  <dt><code>%i</code></dt>
  <dd>Zostaje zastąpione przez PID obecnie uruchomionego procesu KDevelop.</dd>
</dl>
<p><b>ZAUWAŻ:</b>  To twoja odpowiedzialność, aby zapobiec uruchamianiu niebezpiecznych poleceń, które mogą prowadzić do utraty danych.</p>
 <p>Określa nazwę skryptu. Tylko do celów wyświetlania.</p> <p>Określa skrót(y), których możesz użyć do wykonania tego zewnętrznego skryptu.</p> <p>Określa co zrobić z błędami (np. <code>STDERR</code>) skryptu. </p><p>Zauważ: jeżeli działanie jest takie samo jak to wybrane dla wyjścia, to kanały zostaną scalone i obsłużone razem.</p> <p>Określa co zrobić z wyjściem (np. <code>STDOUT</code>) skryptu.  <p>Określa co zewnętrzny skrypt ma dostać jako wejście (przez <code>STDIN</code>).</p> <p>Określa typ filtrowania, który ma być zastosowany do wyjścia np. aby wskazać błędy czerwoną czcionką.</p> <p>Określa czy dokumenty mają być zapisane przed wykonaniem skryptu.</p> <p>Określa czy wyjście skryptu ma być pokazywane w widoku narzędzia.</p> <p>Czy na pewno chcesz usunąć konfigurację zewnętrznego skryptu dla <i>%1</i>?</p><p><i>Zauważ:</i> Sam skrypt nie zostanie usunięty.</p> <p>Nazwa będzie także używana jako identyfikator podczas uzupełniania kodu..</p>
<p><b>Zauważ:</b> Spacje nie są dozwolone.</p> Dodaj zewnętrzny skrypt Nie można uruchomić skryptu '%1', bo próbuje uzyskać dostęp do zawartości edytora, lecz żaden dokument nie jest otwarty. Potwierdź usunięcie zewnętrznego skryptu Utwórz nowy zewnętrzny skrypt Tutaj określ filtr lukasz.wojnilowicz@gmail.com Edytuj zewnętrzny skrypt Edytuj zewnętrzny skrypt '%1' Błędy: Zewnętrzne skrypty Filtr... Wybór Google Łukasz Wojniłowicz Brak otwartego dokumentu Filtr wyjścia: Szybka kompilacja Usuń zewnętrzny skrypt Uruchamiaj zewnętrzne skrypty lub programy, aby manipulować zawartością edytora lub innymi dowolnymi działaniami. Uruchomienie zewnętrznego skryptu: %1 &Tryb zapisu: Skrót: &Pokaż wyjście Wybór porządkowania filtr kompilatora zawartość obecnego pliku utwórz nowy plik ignoruj wstaw na pozycji kursora obecnego pliku scal z normalnym wyjściem bez filtra nic proszę wstawić polecenie do wykonania proszę wstawić nazwę zastąp zawartość obecnego pliku zastąp zaznaczenie obecnego pliku lub wstaw na pozycji kursora zastąp zaznaczenie obecnego pliku lub cały plik zapisz aktywny dokument zapisz wszystkie otwarte dokumenty nic nie zapisuj filtr błędów skryptu zaznaczenie w obecnym pliku lub nic zaznaczenie w obecnym pliku lub całym pliku filtr błędów analizy statycznej 